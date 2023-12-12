import 'dart:convert';
import 'dart:io';

import 'common.dart';

void main() {
  Directory('dev/raw').listSync().forEach((element) {
    if (element is File) {
      final name = element.uri.pathSegments.last;
      final split = name.split('.');
      final fileName = split.first;
      final ext = split.last;
      if (ext == 'txt') {
        final content = element.readAsLinesSync();
        final head = content.first;
        const tabChar = '\t';
        final keys = head.split(tabChar);
        final rest = content.sublist(1).map((c) {
          final splt = c.split(tabChar);
          final ln = splt.length;
          final map = <String, dynamic>{};
          for (var a = 0; a < ln; a++) {
            map[keys[a]] =
                num.tryParse(splt[a]) != null ? num.parse(splt[a]) : splt[a];
          }
          return map;
        }).toList();

        final male = rest
            .where((element) => element['sex'] == 1)
            .map((e) => e..remove('sex'))
            .toList();
        final female = rest
            .where((element) => element['sex'] == 2)
            .map((e) => e..remove('sex'))
            .toList();

        final out = [
          {'sex': 1, 'data': male},
          {'sex': 2, 'data': female},
        ];

        final toJsonPretty = const JsonEncoder.withIndent('  ').convert(out);
        final toJson = json.encode(out);

        final jsonFile = File('dev/tojson/$fileName.json')
          ..createSync(recursive: true);
        jsonFile.writeAsStringSync(toJsonPretty);
        final dartFile = File('lib/src/data/$fileName.dart')
          ..createSync(recursive: true);
        dartFile.writeAsStringSync("const $fileName = '''\n$toJson\n''';");
      }
    }
  });
  format();
}
