import 'dart:convert';
import 'dart:io';

import 'package:excel/excel.dart';
import 'package:reusable_tools/reusable_tools.dart';

void main() {
  final bmi = <String, dynamic>{};
  final wfa = <String, dynamic>{};
  final hfa = <String, dynamic>{};

  Directory('dev/5yo').listSync().forEach((element) {
    final fileName = element.uri.pathSegments.last;
    final ext = fileName.splitDot.last;
    final isExcel = ext == 'xlsx';
    if (element is File && isExcel) {
      final excel = Excel.decodeBytes(element.readAsBytesSync());
      final data =
          dataFromExcel(excel)?.map((e) => e.take(4).toList()).toList();

      final expMap = <String, dynamic>{};

      sanitize(data!)
          .map(
            (c) => dataTitle
                .asMap()
                .map((_, value) => getVal(c, value).entries.first)
                .map((key, value) => MapEntry(key.toLowerCase(), value)),
          )
          .toList()
          .forEach((element) {
        expMap[element['month'].toString()] = element..remove('month');
      });

      final splitFileName = fileName.split('-');
      final gender = splitFileName[1];
      final isBmi = splitFileName[0] == 'bmi';
      final isHfa = splitFileName[0] == 'hfa';
      final isWfa = splitFileName[0] == 'wfa';
      final isMale = gender == 'boys';

      if (isBmi) {
        if (isMale) {
          bmi['1'] = expMap;
        } else {
          bmi['2'] = expMap;
        }
      }
      if (isHfa) {
        if (isMale) {
          hfa['1'] = expMap;
        } else {
          hfa['2'] = expMap;
        }
      }
      if (isWfa) {
        if (isMale) {
          wfa['1'] = expMap;
        } else {
          wfa['2'] = expMap;
        }
      }
    }
  });

  File('dev/5yo/bmi.json')
    ..createSync(recursive: true)
    ..writeAsStringSync(json.encode(bmi));
  File('dev/5yo/wfa.json')
    ..createSync(recursive: true)
    ..writeAsStringSync(json.encode(wfa));
  File('dev/5yo/hfa.json')
    ..createSync(recursive: true)
    ..writeAsStringSync(json.encode(hfa));
  File('dev/5yo/bmi.dart')
    ..createSync(recursive: true)
    ..writeAsStringSync("const bmi5yo = '''\n${json.encode(bmi)}\n''';\n");
  File('dev/5yo/wfa.dart')
    ..createSync(recursive: true)
    ..writeAsStringSync("const wfa5yo = '''\n${json.encode(wfa)}\n''';\n");
  File('dev/5yo/hfa.dart')
    ..createSync(recursive: true)
    ..writeAsStringSync("const hfa5yo = '''\n${json.encode(hfa)}\n''';\n");
}

List<List<dynamic>>? dataFromExcel(Excel excel) {
  List<List<dynamic>>? data;
  for (final r in excel.tables.keys) {
    final dataEx = excel.tables[r]?.rows;
    data = dataEx
        ?.map(
          (x) => x
              .map(
                (e) => e?.value == null
                    ? null
                    : e?.value is SharedString
                        ? int.tryParse(
                                  e!.value.toString(),
                                ) !=
                                null
                            ? int.parse(
                                e.value.toString(),
                              )
                            : e.value.toString()
                        : e?.value,
              )
              .toList(),
        )
        .toList();
  }
  return data;
}

List<List<Map<String, dynamic>>> sanitize(List<List<dynamic>> data) {
  final keys = data[0];
  return data.sublist(1).map((e) {
    int c = 0;
    return e.map((v) {
      final key = keys[c];
      c++;
      final value = v == 'null' || v == null
          ? null
          : v is String
              ? v.isEmpty
                  ? null
                  : v.contains(' ')
                      ? (v.clean.split(' ').map((e) => e.trim()).toList()
                            ..removeWhere((element) => element.isEmpty))
                          .join(' ')
                      : v.trim()
              : v is TextCellValue
                  ? int.tryParse(v.value) != null
                      ? int.parse(v.value)
                      : v.value
                  : v is IntCellValue
                      ? v.value
                      : v is DoubleCellValue
                          ? v.value
                          : v;
      return {'$key': value};
    }).toList();
  }).toList();
}

Map<String, dynamic> getVal(List<Map<String, dynamic>> c, String key) =>
    {key: c.singleWhere((element) => element.keys.first == key).values.first};

final dataTitle = ['Month', 'L', 'M', 'S'];
