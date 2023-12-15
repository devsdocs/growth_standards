import 'dart:convert';
import 'dart:io';

import 'package:csv/csv.dart';
import 'package:reusable_tools/reusable_tools.dart';

import '../common.dart';

void main() {
  Directory('dev/cdc').listSync().forEach((element) {
    final fileNameAndExt = element.uri.pathSegments.last;
    final splt = fileNameAndExt.splitDot;
    final fileName = splt.first.replaceAll('-', '');
    final ext = splt.last;

    if (element is File && ext == 'csv' && !fileName.startsWith('z')) {
      final data =
          const CsvToListConverter().convert(element.readAsStringSync());

      final takeList = data
          .map((e) => e.take(data.first.contains('sigma') ? 6 : 5).toList())
          .toList();
      final rest = sanitize(takeList).map(
        (c) => getDataTitle(takeList)
            .asMap()
            .map((_, value) => getVal(c, value).entries.first)
            .map((key, value) => MapEntry(key.toLowerCase(), value)),
      );

      final maleMap = <String, dynamic>{};
      final femaleMap = <String, dynamic>{};

      rest
          .where((element) => element['sex'] == 1)
          .map((e) => e..remove('sex'))
          .forEach((element) {
        if (element['agemos'] != null) {
          maleMap[element['agemos'].toString()] = element..remove('agemos');
        }
        if (element['height'] != null) {
          maleMap[element['height'].toString()] = element..remove('height');
        }
        if (element['length'] != null) {
          maleMap[element['length'].toString()] = element..remove('length');
        }
      });

      rest
          .where((element) => element['sex'] == 2)
          .map((e) => e..remove('sex'))
          .forEach((element) {
        if (element['agemos'] != null) {
          femaleMap[element['agemos'].toString()] = element..remove('agemos');
        }
        if (element['height'] != null) {
          femaleMap[element['height'].toString()] = element..remove('height');
        }
        if (element['length'] != null) {
          femaleMap[element['length'].toString()] = element..remove('length');
        }
      });

      final out = {'1': maleMap, '2': femaleMap};

      final toJson = json.encode(out);

      final jsonFile = File('dev/cdc/$fileName.json')
        ..createSync(recursive: true);
      jsonFile.writeAsStringSync(toJson);
      final dartFile = File('dev/cdc/$fileName.dart')
        ..createSync(recursive: true);
      dartFile.writeAsStringSync("const cdc$fileName = '''\n$toJson\n''';\n");
    }
  });
}

List<String> getDataTitle(List<List<dynamic>> data) {
  return data.first.map((e) => e.toString()).toList();
}
