import 'dart:io';

void main() {
  Directory('dev/intergrowth')
      .list(recursive: true)
      .listen((FileSystemEntity entity) {
    if (entity.path.endsWith('.pdf')) {
      final pdfFile = File(entity.path);
      final pdfName = pdfFile.uri.pathSegments.last;
      final htmlName = pdfName.replaceAll('.pdf', '.html');
      final htmlFile = File(entity.path.replaceAll('.pdf', '.html'));

      if (!htmlFile.existsSync()) {
        print('Converting $pdfName to HTML...');
        Process.runSync(
          'pdf2htmlEX',
          [pdfFile.path, htmlFile.path],
        );
        print('Converted to $htmlName');
      } else {
        print('$htmlName already exists, skipping conversion.');
      }
    }
  });
}
