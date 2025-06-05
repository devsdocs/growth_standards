// ignore_for_file: avoid_dynamic_calls, for_in_of_invalid_type, avoid_print, argument_type_not_assignable

import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:html/dom.dart';
import 'package:html/parser.dart';

const site =
    'https://intergrowth21.com/intergrowth-21st-applications-calculators';

final dio = Dio();

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
    final mapped = <String, List<Element>>{};
    for (var i = 0; i < titleIndices.length; i++) {
      final start = titleIndices[i];
      final end = i < titleIndices.length - 1
          ? titleIndices[i + 1]
          : workingFields.length;
      final title = workingFields[start].text.trim();
      mapped[title] = workingFields.sublist(start + 1, end);
    }
    mapped.removeWhere((key, value) => key.toLowerCase() == 'other');
    final outMapped = <String, dynamic>{};
    for (final entry in mapped.entries) {
      final localMapped = <String, dynamic>{};
      final category = entry.key;
      final elements = entry.value;

      for (final element in elements) {
        final image = element.querySelector('img');
        final imageLink = image != null
            ? 'https://intergrowth21.com${image.attributes['src']}'
            : null;

        final title = element.querySelector('h2')?.text.trim();

        final description = element.querySelector('.text-long')?.text.trim();

        final link = element.querySelector('a')?.attributes['href'];

        final joinLink = 'https://intergrowth21.com$link';

        final fetchPage = await dio.get(joinLink);

        if (fetchPage.statusCode != 200) {
          continue;
        }

        final pageHtml = parse(fetchPage.data.toString());

        final allFieldsItems =
            pageHtml.querySelectorAll('.field--item').toList();

        final itemsAndLinks = <String, dynamic>{};

        for (final item in allFieldsItems) {
          final itemTitle = item.querySelector('h1')?.text.trim();

          final allDownloadLinksElement = item
              .querySelectorAll('.download-link')
              .where((e) => e.attributes['href'] != null)
              .where((l) =>
                  l.attributes['href'].toString().contains('.pdf') ||
                  l.attributes['href'].toString().contains('.xlsx') ||
                  l.attributes['href'].toString().contains('.docx'))
              .map((e) {
            final link = e.attributes['href']!.trim();
            final text = e.text.trim();
            return {'text': text, 'link': 'https://intergrowth21.com$link'};
          }).toList();

          if (itemTitle != null) {
            itemsAndLinks[itemTitle] = allDownloadLinksElement;
          }
        }

        localMapped[title ?? ''] = {
          'description': description ?? '',
          'image': imageLink ?? '',
          'link': joinLink,
          'downloads': itemsAndLinks,
        };
      }

      outMapped[category] = localMapped;
    }

    File('intergrowth/data.json')
      ..createSync(recursive: true)
      ..writeAsStringSync(jsonEncode(outMapped));

    for (final entry in outMapped.entries) {
      for (final item in entry.value.entries) {
        for (final download in item.value['downloads'].entries) {
          for (final link in download.value) {
            await dio.download(
              link['link'],
              'intergrowth/downloads/${entry.key}/${item.key}/${download.key}/${link['link'].split('/').last}',
              onReceiveProgress: (received, total) {
                if (total != -1) {
                  final progress = (received / total * 100).toStringAsFixed(0);
                  print(
                      'Downloading ${entry.key}/${item.key}/${download.key}/${link['link'].split('/').last}: $progress%');
                } else {
                  print(
                      'Downloading ${entry.key}/${item.key}/${download.key}/${link['link'].split('/').last}...');
                }
              },
            );
          }
        }
      }
    }
  } else {}
}
