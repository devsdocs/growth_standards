import 'dart:io';

import 'package:excel/excel.dart';
import 'package:reusable_tools/reusable_tools.dart';

const dataMap = {
  'acanthro': 'Arm Circumference',
  'bmianthro': 'Body Mass Index',
  'hcanthro': 'Head Circumference',
  'lenanthro': 'Length For Age',
  'ssanthro': 'Subscapular Skinfold',
  'tsanthro': 'Triceps Skinfold',
  'weianthro': 'Weight For Age',
  'wfhanthro': 'Weight For Height',
  'wflanthro': 'Weight For Length',
};

void format() {
  Process.run('dart', ['format', '.']);
  Process.run('dart', ['fix', '--apply']);
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

List<String> getDataTitle(List<List<dynamic>> data) {
  return data.first.map((e) => e.toString()).toList();
}
