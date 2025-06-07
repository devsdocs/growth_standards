// ignore_for_file: avoid_print

import 'dart:io';

import 'package:csv/csv.dart';
import 'package:html/parser.dart';

import 'model.dart';
import 'ordinal_parser.dart';

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
            if (!file.url!.toLowerCase().contains('table')) {
              continue; // Skip non-HTML files
            }
          }

          final fileNameWithExtension = Uri.parse(file.url!).pathSegments.last;
          final fileName = fileNameWithExtension.split('.').first;
          final htmlFile = File(
              'intergrowth/downloads/${model.key}/${item.key}/${keyValues.reverse[resource.key]}/$fileName.htm');

          // print('Processing file: ${htmlFile.path}');

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
          // print('Element number: $totalElementNumber');

          final allTr = parseHtml.querySelectorAll('tr');

          final data = <List<String>>[];

          int dataIx = 0;

          for (final tr in allTr) {
            final allTd = tr.querySelectorAll('td');
            if (allTd.isEmpty) {
              continue; // Skip empty rows
            }

            if (allTd.where((s) => s.text.trim().isNotEmpty).length <
                totalElementNumber) {
              continue; // Skip rows with fewer elements than expected
            }

            // Check if any cell has multiple rows
            bool hasMultipleRows = false;
            int maxRows = 1;
            for (final td in allTd) {
              // Count paragraph elements which represent rows in a cell
              final paragraphs = td.querySelectorAll('p');
              if (paragraphs.length > 1) {
                hasMultipleRows = true;
                maxRows =
                    paragraphs.length > maxRows ? paragraphs.length : maxRows;
              }
            }

            if (hasMultipleRows) {
              // Handle multi-row cells
              List<List<String>> multiRowData =
                  List.generate(maxRows, (_) => <String>[]);

              for (final td in allTd) {
                final paragraphs = td.querySelectorAll('p');

                if (paragraphs.length > 1) {
                  // This cell has multiple rows
                  for (int i = 0; i < paragraphs.length; i++) {
                    final text = paragraphs[i].text.trim();
                    if (text.isNotEmpty) {
                      multiRowData[i].add(text);
                    }
                  }
                } else {
                  // This cell has a single value that applies to all rows
                  final text = td.text.trim();
                  if (text.isNotEmpty) {
                    // Repeat this value for all rows
                    for (int i = 0; i < maxRows; i++) {
                      multiRowData[i].add(text);
                    }
                  }
                }
              }

              // Add all generated rows to the data
              data.addAll(multiRowData);
              dataIx += maxRows;
            } else {
              // Regular row processing (existing logic)
              final rowData = <String>[];
              int tdIx = 0;
              for (final td in allTd) {
                final text = td.text.trim();
                if (text.isEmpty) {
                  continue; // Skip empty cells
                }
                rowData.add(text);
                tdIx++;
              }

              if (rowData.isEmpty) {
                continue; // Skip rows with no data
              }
              data.add(rowData);
              dataIx++;
            }
          }

          final cleanedData = <List<String>>[];

          for (final d in data) {
            final firsLabel = d.first;

            final tryParse = int.tryParse(firsLabel);
            if (tryParse == null) {
              if (firsLabel.contains('+')) {
                final split = firsLabel.split('+');
                final weeks = split.first.trim();
                final days = split.last.trim();
                final parsedWeeks = int.tryParse(weeks);
                final parsedDays = int.tryParse(days);
                if (parsedWeeks != null && parsedDays != null) {
                  cleanedData.add([
                    '${parsedWeeks * 7 + parsedDays}',
                    ...d.sublist(1),
                  ]);
                  continue; // Skip rows with valid week/day format
                } else {
                  print(
                      'Invalid week/day format in file: ${htmlFile.path}, value: $firsLabel');

                  continue; // Skip rows with invalid week/day format
                }
              } else {
                continue; // Skip rows that do not start with a number
              }
            }

            final days = tryParse * 7;

            cleanedData.add([
              days.toString(),
              ...d.sublist(1),
            ]);
          }

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

          final cleanedLabels = <String>[];

          for (final label in labels) {
            final tryParse = int.tryParse(label);
            if (tryParse == null) {
              final tryParseOrdinal = OrdinalParser.parse(label);
              if (tryParseOrdinal != null) {
                cleanedLabels.add(label);
              }
            } else {
              cleanedLabels.add(label);
            }
          }

          final list = ['csv', ...cleanedLabels];

          final isValidLengthCsv =
              cleanedData.every((ls) => ls.length == list.length);
          if (!isValidLengthCsv) {
            print(
                'Invalid CSV format in file: ${htmlFile.path}, expected ${list.length} columns, found ${cleanedData.map((e) => e.length).toList()}');
            // continue; // Skip invalid CSV files
          }

          final rows = [list, ...cleanedData];
          final csv = const ListToCsvConverter().convert(rows);

          final csvFile = File(
              'intergrowth/downloads/${model.key}/${item.key}/${keyValues.reverse[resource.key]}/$fileName.csv');

          csvFile.createSync(recursive: true);

          csvFile.writeAsStringSync(csv);
        }
      }
    }
  }
}
