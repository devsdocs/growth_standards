import 'dart:convert';
import 'dart:io';

import 'package:csv/csv.dart';

void main() {
  final hcfaBoys = <int, Map<String, num>>{};
  final hcfaGirls = <int, Map<String, num>>{};
  final wfaBoys = <int, Map<String, num>>{};
  final wfaGirls = <int, Map<String, num>>{};
  final lfaBoys = <int, Map<String, num>>{};
  final lfaGirls = <int, Map<String, num>>{};

  final targetDir = Directory('dev/fenton');

  for (final element in targetDir.listSync()) {
    if (element is File && element.path.endsWith('.csv')) {
      final filename = element.uri.pathSegments.last;
      final name = filename.substring(0, filename.lastIndexOf('.'));
      final raw = element.readAsStringSync().replaceAll('\r\n', '\n');
      final rows = const CsvToListConverter(eol: '\n').convert(raw);

      final expMap = <int, Map<String, num>>{};

      for (var i = 1; i < rows.length; i++) {
        final row = rows[i];
        if (row.length < 4) continue;
        final week = int.tryParse(row[0].toString());
        final l = num.tryParse(row[1].toString());
        final m = num.tryParse(row[2].toString());
        final s = num.tryParse(row[3].toString());
        if (week != null && l != null && m != null && s != null) {
          expMap[week] = {'l': l, 'm': m, 's': s};
        }
      }

      if (name == 'wfa_boys') wfaBoys.addAll(expMap);
      if (name == 'wfa_girls') wfaGirls.addAll(expMap);
      if (name == 'lfa_boys') lfaBoys.addAll(expMap);
      if (name == 'lfa_girls') lfaGirls.addAll(expMap);
      if (name == 'hcfa_boys') hcfaBoys.addAll(expMap);
      if (name == 'hcfa_girls') hcfaGirls.addAll(expMap);
    }
  }

  File('dev/fenton/wfa_boys.json')
      .writeAsStringSync(json.encode(_stringifyKeys(wfaBoys)));
  File('dev/fenton/wfa_girls.json')
      .writeAsStringSync(json.encode(_stringifyKeys(wfaGirls)));
  File('dev/fenton/lfa_boys.json')
      .writeAsStringSync(json.encode(_stringifyKeys(lfaBoys)));
  File('dev/fenton/lfa_girls.json')
      .writeAsStringSync(json.encode(_stringifyKeys(lfaGirls)));
  File('dev/fenton/hcfa_boys.json')
      .writeAsStringSync(json.encode(_stringifyKeys(hcfaBoys)));
  File('dev/fenton/hcfa_girls.json')
      .writeAsStringSync(json.encode(_stringifyKeys(hcfaGirls)));

  File('lib/src/category/fenton/data/wfa.dart').writeAsStringSync(
    "part of '../fenton.dart';\n\n"
    'final fentonBoysWfA = ${_toLiteral(wfaBoys)};\n\n'
    'final fentonGirlsWfA = ${_toLiteral(wfaGirls)};\n',
  );

  File('lib/src/category/fenton/data/lfa.dart').writeAsStringSync(
    "part of '../fenton.dart';\n\n"
    'final fentonBoysLfA = ${_toLiteral(lfaBoys)};\n\n'
    'final fentonGirlsLfA = ${_toLiteral(lfaGirls)};\n',
  );

  File('lib/src/category/fenton/data/hcfa.dart').writeAsStringSync(
    "part of '../fenton.dart';\n\n"
    'final fentonBoysHCfA = ${_toLiteral(hcfaBoys)};\n\n'
    'final fentonGirlsHCfA = ${_toLiteral(hcfaGirls)};\n',
  );
}

Map<String, dynamic> _stringifyKeys(Map<int, Map<String, num>> map) {
  return map.map((k, v) => MapEntry(k.toString(), v));
}

String _toLiteral(Map<int, Map<String, num>> map) {
  final entries = map.entries.map((e) {
    final k = e.key;
    final val = e.value;
    return "  $k: {'l': ${val['l']}, 'm': ${val['m']}, 's': ${val['s']}}";
  }).join(',\n');
  return '{\n$entries,\n}';
}
