import 'dart:convert';
import 'dart:io';

void main() async {
  const url =
      'https://opendataarchive.github.io/raw-data/fenton2025_lmsdata.csv';
  final httpClient = HttpClient();
  final request = await httpClient.getUrl(Uri.parse(url));
  final response = await request.close();
  final content = await response.transform(utf8.decoder).join();

  final lines = content.split('\n');

  final hcfaBoys = <int, Map<String, num>>{};
  final hcfaGirls = <int, Map<String, num>>{};
  final lfaBoys = <int, Map<String, num>>{};
  final lfaGirls = <int, Map<String, num>>{};
  final wfaBoys = <int, Map<String, num>>{};
  final wfaGirls = <int, Map<String, num>>{};

  for (var i = 1; i < lines.length; i++) {
    final line = lines[i].trim();
    if (line.isEmpty) continue;
    final parts = line.split(',');
    if (parts.length < 9) continue;

    final age = double.tryParse(parts[1]);
    if (age == null) continue;

    final gender = parts[3].replaceAll('"', '');
    final measure = parts[4].replaceAll('"', '');
    final l = double.tryParse(parts[6]);
    final m = double.tryParse(parts[7]);
    final s = double.tryParse(parts[8]);

    if (l == null || m == null || s == null) continue;

    final days = (age * 7).round();
    final data = {'l': l, 'm': m, 's': s};

    if (measure == 'head_circ') {
      if (gender == 'm') {
        hcfaBoys[days] = data;
      } else {
        hcfaGirls[days] = data;
      }
    } else if (measure == 'length') {
      if (gender == 'm') {
        lfaBoys[days] = data;
      } else {
        lfaGirls[days] = data;
      }
    } else if (measure == 'weight') {
      if (gender == 'm') {
        wfaBoys[days] = data;
      } else {
        wfaGirls[days] = data;
      }
    }
  }

  void exportCsv(String name, Map<int, Map<String, num>> map) {
    final buffer = StringBuffer();
    buffer.writeln('Days,L,M,S');
    final keys = map.keys.toList()..sort();
    for (final k in keys) {
      final v = map[k]!;
      buffer.writeln('$k,${v['l']},${v['m']},${v['s']}');
    }
    File('dev/fenton/$name.csv').writeAsStringSync(buffer.toString());
  }

  exportCsv('wfa_boys', wfaBoys);
  exportCsv('wfa_girls', wfaGirls);
  exportCsv('lfa_boys', lfaBoys);
  exportCsv('lfa_girls', lfaGirls);
  exportCsv('hcfa_boys', hcfaBoys);
  exportCsv('hcfa_girls', hcfaGirls);

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
  final entries =
      (map.entries.toList()..sort((a, b) => a.key.compareTo(b.key))).map((e) {
    final k = e.key;
    final val = e.value;
    return "  $k: {'l': ${val['l']}, 'm': ${val['m']}, 's': ${val['s']}}";
  }).join(',\n');
  return '{\n$entries,\n}';
}
