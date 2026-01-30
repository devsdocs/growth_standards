import 'dart:convert';
import 'dart:io';

void main() {
  const workingDirPath = '../lib/src/category';
  const targetFolderName = 'data';
  const readAfterThis = "= '''";
  const readBeforeThis = "''';";
  for (final dir in ['cdc', 'fenton', 'who']) {
    final path = '$workingDirPath/$dir';
    final workingDir = Directory(path);
    final files =
        workingDir.listSync(recursive: true).whereType<File>().where((file) {
      final segments = file.uri.pathSegments;
      final targetFolder = segments[segments.length - 2];
      final name = segments.last;

      return targetFolder == targetFolderName && name.endsWith('.dart');
    });

    for (final file in files) {
      final read = file.readAsStringSync();
      final startIndex = read.indexOf(readAfterThis);
      final endIndex = read.indexOf(readBeforeThis, startIndex);
      final jsonString =
          read.substring(startIndex + readAfterThis.length, endIndex).trim();
      assert(jsonDecode(jsonString) is Map<String, dynamic>);

      final tryVariableName = file.readAsLinesSync().firstWhere(
          (line) => line.contains('const '),
          orElse: () => 'const data = ');

      assert(tryVariableName.contains('const '));
      final getVariableName = tryVariableName
          .substring(tryVariableName.indexOf('const ') + 'const '.length,
              tryVariableName.indexOf('='))
          .trim();

      final dartLiteral = _toDartLiteral(
        jsonDecode(jsonString),
        indent: 0,
      );

      /// Write back to file, replacing the old JSON string with the new Dart literal.
      final newFileContent = read.replaceRange(
        startIndex + readAfterThis.length,
        endIndex,
        '\n$dartLiteral\n',
      );
      file.writeAsStringSync(newFileContent);
    }
  }
}

String _toDartLiteral(Object? value, {required int indent}) {
  final space = '  ' * indent;

  if (value == null) return 'null';

  if (value is String) {
    final tryParseNum = num.tryParse(value);
    if (tryParseNum != null) {
      return value;
    }
    return "'${_escapeString(value)}'";
  }

  if (value is num || value is bool) {
    return value.toString();
  }

  if (value is Enum) {
    return '${value.runtimeType}.${value.name}';
  }

  if (value is List) {
    if (value.isEmpty) return 'const []';

    return '''
[
${value.map((e) => '$space  ${_toDartLiteral(e, indent: indent + 1)},').join('\n')}
$space]''';
  }

  if (value is Set) {
    if (value.isEmpty) return 'const {}';

    return '''
{
${value.map((e) => '$space  ${_toDartLiteral(e, indent: indent + 1)},').join('\n')}
$space}''';
  }

  if (value is Map) {
    if (value.isEmpty) return 'const {}';

    return '''
{
${value.entries.map((e) {
      final k = _toDartLiteral(e.key, indent: indent + 1);
      final v = _toDartLiteral(e.value, indent: indent + 1);
      return '$space  $k: $v,';
    }).join('\n')}
$space}''';
  }

  throw UnsupportedError(
    'Unsupported type: ${value.runtimeType}',
  );
}

String _escapeString(String input) {
  return input
      .replaceAll(r'\', r'\\')
      .replaceAll("'", r"\'")
      .replaceAll('\n', r'\n')
      .replaceAll('\r', r'\r')
      .replaceAll('\t', r'\t');
}
