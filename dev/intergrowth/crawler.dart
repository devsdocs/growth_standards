// ignore_for_file: avoid_dynamic_calls, for_in_of_invalid_type, avoid_print, argument_type_not_assignable

import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:html/dom.dart';
import 'package:html/parser.dart';

const site =
    'https://intergrowth21.com/intergrowth-21st-applications-calculators';

final dio = Dio();

// Helper function to normalize strings for JSON keys
String normalizeKey(String? input) {
  if (input == null || input.isEmpty) return 'unknown';

  // Remove special characters, replace spaces with underscores and convert to lowercase
  return input
      .trim()
      .toLowerCase()
      .replaceAll(RegExp(r'[^\w\s]'), '')
      .replaceAll(RegExp(r'\s+'), '_');
}

void main() async {
  final response = await dio.get(site);
  if (response.statusCode == 200) {
    final html = response.data.toString();
    final parseHtml = parse(html);
    final target = parseHtml.querySelector('.views-element-container');
    final workingFields = target!.children.first.children;

    final List<int> titleIndices = [];
    for (var i = 0; i < workingFields.length; i++) {
      final element = workingFields[i];
      if (element.localName == 'h3') {
        titleIndices.add(i);
      }
    }

    final categorySections = <String, List<Element>>{};
    for (var i = 0; i < titleIndices.length; i++) {
      final start = titleIndices[i];
      final end = i < titleIndices.length - 1
          ? titleIndices[i + 1]
          : workingFields.length;
      final title = workingFields[start].text.trim();
      categorySections[normalizeKey(title)] =
          workingFields.sublist(start + 1, end);
    }

    categorySections.removeWhere((key, value) => key == 'other');

    // Replace the output structure to include keys as fields
    final outputData = <Map<String, dynamic>>[];

    for (final entry in categorySections.entries) {
      final categoryKey = entry.key;
      final categoryOriginalName = workingFields[titleIndices[
              titleIndices.indexOf(titleIndices.firstWhere((idx) =>
                  normalizeKey(workingFields[idx].text.trim()) ==
                  categoryKey))]]
          .text
          .trim();
      final elements = entry.value;
      final categoryItems = <Map<String, dynamic>>[];

      for (final element in elements) {
        final image = element.querySelector('img');
        final imageUrl = image != null
            ? 'https://intergrowth21.com${image.attributes['src']}'
            : '';

        final title = element.querySelector('h2')?.text.trim() ?? 'Untitled';
        final itemKey = normalizeKey(title);

        final description =
            element.querySelector('.text-long')?.text.trim() ?? '';
        final link = element.querySelector('a')?.attributes['href'];
        final fullUrl = 'https://intergrowth21.com$link';

        final fetchPage = await dio.get(fullUrl);
        if (fetchPage.statusCode != 200) {
          continue;
        }

        final pageHtml = parse(fetchPage.data.toString());
        final allFieldsItems =
            pageHtml.querySelectorAll('.field--item').toList();
        final downloadResources = <Map<String, dynamic>>[];

        for (final item in allFieldsItems) {
          final itemTitle = item.querySelector('h1')?.text.trim();
          if (itemTitle == null) continue;

          final resourceKey = normalizeKey(itemTitle);

          final downloadLinks = item
              .querySelectorAll('.download-link')
              .where((e) => e.attributes['href'] != null)
              .where((l) {
            final href = l.attributes['href'].toString();
            return href.contains('.pdf') ||
                href.contains('.xlsx') ||
                href.contains('.docx');
          }).map((e) {
            final link = e.attributes['href']!.trim();
            final text = e.text.trim();
            return {
              'title': text,
              'url': 'https://intergrowth21.com$link',
              'file_type': link.split('.').last,
            };
          }).toList();

          if (downloadLinks.isNotEmpty) {
            downloadResources.add({
              'key': resourceKey,
              'title': itemTitle,
              'files': downloadLinks,
            });
          }
        }

        categoryItems.add({
          'key': itemKey,
          'title': title,
          'description': description,
          'image_url': imageUrl,
          'page_url': fullUrl,
          'resources': downloadResources,
        });
      }

      outputData.add({
        'key': categoryKey,
        'title': categoryOriginalName,
        'items': categoryItems,
      });
    }

    // Create directory if it doesn't exist
    Directory('intergrowth').createSync(recursive: true);

    // Write the formatted JSON with indentation for readability
    File('intergrowth/data.json').writeAsStringSync(
        const JsonEncoder.withIndent('  ').convert(outputData));

    // Download logic
    for (final category in outputData) {
      final categoryKey = category['key'];

      for (final item in category['items']) {
        final itemKey = item['key'];

        for (final resource in item['resources']) {
          final resourceKey = resource['key'];

          for (final download in resource['files']) {
            final downloadUrl = download['url'];
            final downloadTitle = download['title'];

            // Skip non-table PDFs
            if (!(downloadUrl.toString().toLowerCase().contains('table') ||
                downloadTitle.toString().toLowerCase().contains('table'))) {
              continue;
            }

            if (!downloadUrl.toString().toLowerCase().endsWith('.pdf')) {
              continue;
            }

            final fileName = downloadUrl.split('/').last;
            final downloadPath =
                'intergrowth/downloads/$categoryKey/$itemKey/$resourceKey/$fileName';

            // Create directory structure for download
            Directory(downloadPath.substring(0, downloadPath.lastIndexOf('/')))
                .createSync(recursive: true);

            await dio.download(
              downloadUrl,
              downloadPath,
              onReceiveProgress: (received, total) {
                if (total != -1) {
                  final progress = (received / total * 100).toStringAsFixed(0);
                  print('Downloading $fileName: $progress%');
                } else {
                  print('Downloading $fileName...');
                }
              },
            );
          }
        }
      }
    }
  }
}
