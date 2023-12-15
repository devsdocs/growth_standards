import 'dart:convert';
import 'dart:io';

import 'package:excel/excel.dart';
import 'package:reusable_tools/reusable_tools.dart';

import '../common.dart';

void main() {
  final hcv = <String, dynamic>{};
  final wv = <String, dynamic>{};
  final lv = <String, dynamic>{};

  Directory('dev/Velocity').listSync(recursive: true).forEach((element) {
    final fileName = element.uri.pathSegments.last;
    final ext = fileName.splitDot.last;
    final isExcel = ext == 'xlsx';
    if (element is File && isExcel) {
      final excel = Excel.decodeBytes(element.readAsBytesSync());
      final dataExcel = dataFromExcel(excel);
      final data = dataExcel
          ?.map(
            (e) => e
                .take(
                  dataExcel.first.map((e) => e.toString()).contains('Delta')
                      ? 5
                      : 4,
                )
                .toList(),
          )
          .toList();

      final expMap = <String, dynamic>{};

      sanitize(data!)
          .map(
        (c) => getDataTitle(data)
            .asMap()
            .map((_, value) => getVal(c, value).entries.first)
            .map((key, value) => MapEntry(key.toLowerCase(), value)),
      )
          .forEach((element) {
        expMap[element['interval'].toString().replaceAll(' – ', '-')
            // .splitSpace
            // .first
            // .replaceAll('-', '_')
            ] = element..remove('interval');
      });

      final splitFileName = fileName.replaceAll('-', '_').split('_');

      final type = splitFileName[1];
      final gender = splitFileName[2];
      final increment = splitFileName[3][0];

      final isheadCirc = type == 'headc';
      final islength = type == 'length';
      final isweight = type == 'weight';

      final isMale = gender == 'boys';

      final outMap = {increment: expMap};

      if (isheadCirc) {
        if (isMale) {
          if (!hcv.containsKey('1')) {
            hcv['1'] = outMap;
          } else {
            hcv.addAll({
              '1': (hcv['1'] as Map<String, Map<String, dynamic>>)
                ..addAll(outMap),
            });
          }
        } else {
          if (!hcv.containsKey('2')) {
            hcv['2'] = outMap;
          } else {
            hcv.addAll({
              '2': (hcv['2'] as Map<String, Map<String, dynamic>>)
                ..addAll(outMap),
            });
          }
        }
      }
      if (islength) {
        if (isMale) {
          if (!lv.containsKey('1')) {
            lv['1'] = outMap;
          } else {
            lv.addAll({
              '1': (lv['1'] as Map<String, Map<String, dynamic>>)
                ..addAll(outMap),
            });
          }
        } else {
          if (!lv.containsKey('2')) {
            lv['2'] = outMap;
          } else {
            lv.addAll({
              '2': (lv['2'] as Map<String, Map<String, dynamic>>)
                ..addAll(outMap),
            });
          }
        }
      }
      if (isweight) {
        if (isMale) {
          if (!wv.containsKey('1')) {
            wv['1'] = outMap;
          } else {
            wv.addAll({
              '1': (wv['1'] as Map<String, Map<String, dynamic>>)
                ..addAll(outMap),
            });
          }
        } else {
          if (!wv.containsKey('2')) {
            wv['2'] = outMap;
          } else {
            wv.addAll({
              '2': (wv['2'] as Map<String, Map<String, dynamic>>)
                ..addAll(outMap),
            });
          }
        }
      }
    }
  });

  final encodehcv = json.encode(hcv);
  final encodewv = json.encode(wv);
  final encodelv = json.encode(lv);

  File('dev/Velocity/hv.json')
    ..createSync(recursive: true)
    ..writeAsStringSync(encodehcv);
  File('dev/Velocity/wv.json')
    ..createSync(recursive: true)
    ..writeAsStringSync(encodewv);
  File('dev/Velocity/lv.json')
    ..createSync(recursive: true)
    ..writeAsStringSync(encodelv);
  File('dev/Velocity/hv.dart')
    ..createSync(recursive: true)
    ..writeAsStringSync(
      "part of '../standard.dart';\n\nconst hv = '''\n$encodehcv\n''';\n",
    );
  File('dev/Velocity/wv.dart')
    ..createSync(recursive: true)
    ..writeAsStringSync(
      "part of '../standard.dart';\n\nconst wv = '''\n$encodewv\n''';\n",
    );
  File('dev/Velocity/lv.dart')
    ..createSync(recursive: true)
    ..writeAsStringSync(
      "part of '../standard.dart';\n\nconst lv = '''\n$encodelv\n''';\n",
    );
}
