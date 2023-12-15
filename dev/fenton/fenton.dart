import 'dart:convert';
import 'dart:io';

import 'package:csv/csv.dart';
import 'package:reusable_tools/reusable_tools.dart';

import '../common.dart';

void main() {
  final hcfa = <String, dynamic>{};
  final wfa = <String, dynamic>{};
  final lfa = <String, dynamic>{};

  Directory('dev/fenton').listSync().forEach((element) {
    final fileNameAndExt = element.uri.pathSegments.last;
    final splt = fileNameAndExt.splitDot;
    final fileName = splt.first;
    final ext = splt.last;

    if (element is File && ext == 'csv') {
      final data =
          const CsvToListConverter().convert(element.readAsStringSync());

      final expMap = <String, dynamic>{};

      sanitize(data)
          .map(
        (c) => dataTitle
            .asMap()
            .map((_, value) => getVal(c, value).entries.first)
            .map((key, value) => MapEntry(key.toLowerCase(), value)),
      )
          .forEach((element) {
        expMap[element['weeks'].toString()] = element..remove('weeks');
      });

      final isHCfa = fileName == 'hcfa';
      final isLfa = fileName == 'lfa';
      final isWfa = fileName == 'wfa';

      if (isWfa) {
        wfa.addAll(expMap);
      }
      if (isLfa) {
        lfa.addAll(expMap);
      }
      if (isHCfa) {
        hcfa.addAll(expMap);
      }
    }
  });

  final encodeHCfa = json.encode(hcfa);
  final encodeLfa = json.encode(lfa);
  final encodeWFA = json.encode(wfa);

  File('dev/fenton/hcfa.json')
    ..createSync(recursive: true)
    ..writeAsStringSync(encodeHCfa);
  File('dev/fenton/wfa.json')
    ..createSync(recursive: true)
    ..writeAsStringSync(encodeWFA);
  File('dev/fenton/lfa.json')
    ..createSync(recursive: true)
    ..writeAsStringSync(encodeLfa);
  File('dev/fenton/hcfa.dart')
    ..createSync(recursive: true)
    ..writeAsStringSync("const fentonHCfA = '''\n$encodeHCfa\n''';\n");
  File('dev/fenton/wfa.dart')
    ..createSync(recursive: true)
    ..writeAsStringSync("const fentonWfA = '''\n$encodeWFA\n''';\n");
  File('dev/fenton/lfa.dart')
    ..createSync(recursive: true)
    ..writeAsStringSync("const fentonLfA = '''\n$encodeLfa\n''';\n");
}

final dataTitle = ['Weeks', 'L', 'M', 'S'];
