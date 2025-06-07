// ignore_for_file: avoid_print

import 'dart:io';

import 'package:csv/csv.dart';
import 'package:html/parser.dart';

import 'model.dart';

void main() {
  final models = Intergrowth.fromJsonList(
      File('intergrowth/data.json').readAsStringSync());

  for (final model in models) {
    for (final item in model.items ?? <Item>[]) {
      for (final resource in item.resources ?? <Resource>[]) {
        for (final file in resource.files ?? <FileElement>[]) {
          if (file.fileType != FileType.PDF) {
            continue; // Skip non-HTML files
          }
          if (!file.title!.toLowerCase().contains('table')) {
            continue; // Skip non-HTML files
          }
          final fileNameWithExtension = Uri.parse(file.url!).pathSegments.last;
          final fileName = fileNameWithExtension.split('.').first;
          final htmlFile = File(
              'intergrowth/downloads/${model.key}/${item.key}/${keyValues.reverse[resource.key]}/$fileName.htm');

          print('Processing file: ${htmlFile.path}');

          final parseHtml = parse(htmlFile.readAsStringSync());

          final tablesElements = parseHtml.querySelectorAll('table');

          int totalElementNumber = 0;
          for (final tableElement in tablesElements) {
            final allTr = tableElement.querySelectorAll('tr');
            for (final trElement in allTr) {
              final allTd = trElement.querySelectorAll('td');
              if (allTd.isEmpty) {
                continue; // Skip empty rows
              }

              if (allTd.length > totalElementNumber) {
                totalElementNumber = allTd.length;
              }
            }
          }
          print('Element number: $totalElementNumber');

          final allTr = parseHtml.querySelectorAll('tr');

          final includedTr = allTr.where((tr) {
            final allTd = tr.querySelectorAll('td');
            return allTd.isNotEmpty && allTd.length == totalElementNumber;
          }).toList();

          final data = includedTr.map((tr) {
            final allTd = tr.querySelectorAll('td');
            return allTd.map((td) {
              return td.text.trim();
            }).toList();
          }).toList();

          final elementLabels = allTr.firstWhere(
            (tr) {
              final allTd = tr.querySelectorAll('td');
              return allTd.isNotEmpty && allTd.length == totalElementNumber - 1;
            },
            orElse: () => allTr.firstWhere((s) {
              final allTd = s.querySelectorAll('td');
              return allTd.isNotEmpty && allTd.length == totalElementNumber;
            }),
          );

          final labels = elementLabels
              .querySelectorAll('td')
              .map((td) {
                return td.text.trim();
              })
              .where((s) => s.isNotEmpty)
              .toList();

          final csv = const ListToCsvConverter().convert([
            ['csv', ...labels],
            ...data
          ]);

          final csvFile = File(
              'intergrowth/downloads/${model.key}/${item.key}/${keyValues.reverse[resource.key]}/$fileName.csv');

          csvFile.createSync(recursive: true);

          csvFile.writeAsStringSync(csv);
        }
      }
    }
  }
}
