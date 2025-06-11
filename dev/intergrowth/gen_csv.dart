// ignore_for_file: avoid_print

import 'dart:convert';
import 'dart:io';

import 'package:csv/csv.dart';
import 'package:growth_standards/growth_standards.dart';
import 'package:html/dom.dart';
import 'package:html/parser.dart';

import '../common.dart';
import 'model.dart';
import 'ordinal_parser.dart';

void main() {
  final models = Intergrowth.fromJsonList(
      File('intergrowth/data.json').readAsStringSync());

  processAllModels(models);
}

void processAllModels(List<Intergrowth> models) {
  for (final model in models) {
    for (final item in model.items ?? <Item>[]) {
      for (final resource in item.resources ?? <Resource>[]) {
        processResource(model, item, resource);
      }
    }
  }
}

void processResource(Intergrowth model, Item item, Resource resource) {
  final resourcePath = keyValues.reverse[resource.key];

  for (final file in resource.files ?? <FileElement>[]) {
    if (!isValidTableFile(file)) continue;

    final fileNameInfo = extractFileNameInfo(file.url!);
    final htmlFilePath =
        'intergrowth/downloads/${model.key}/${item.key}/$resourcePath/${fileNameInfo.baseName}.htm';
    final htmlFile = File(htmlFilePath);

    processHtmlFile(model, item, resource, fileNameInfo, htmlFile);
  }
}

bool isValidTableFile(FileElement file) {
  if (file.fileType != FileType.PDF) return false;

  final hasTableInTitle = file.title?.toLowerCase().contains('table') ?? false;
  final hasTableInUrl = file.url?.toLowerCase().contains('table') ?? false;

  return hasTableInTitle || hasTableInUrl;
}

class FileNameInfo {
  FileNameInfo(this.baseName, this.fullName);
  final String baseName;
  // ignore: unreachable_from_main
  final String fullName;
}

FileNameInfo extractFileNameInfo(String url) {
  final fileNameWithExtension = Uri.parse(url).pathSegments.last;
  String baseName = fileNameWithExtension.split('.').first;
  if (baseName.contains('table_0')) {
    baseName = baseName.replaceAll('table_0', 'table');
  }
  return FileNameInfo(baseName, fileNameWithExtension);
}

void processHtmlFile(Intergrowth model, Item item, Resource resource,
    FileNameInfo fileNameInfo, File htmlFile) {
  final document = parse(htmlFile.readAsStringSync());
  final tablesElements = document.querySelectorAll('table');

  final int totalElementNumber = findMaxColumnCount(tablesElements);
  final data = extractTableData(document, totalElementNumber);
  final cleanedData = cleanData(data);

  final elementLabels =
      findTableHeaders(document.querySelectorAll('tr'), totalElementNumber);
  final labels = extractLabels(elementLabels);
  final result = processLabelsAndData(labels, cleanedData);

  final resourcePath = keyValues.reverse[resource.key];
  final basePath =
      'intergrowth/downloads/${model.key}/${item.key}/$resourcePath';

  saveCSVFile(fileNameInfo.baseName, basePath, result.finalData);

  final isZScore = !result.isCentile;
  if (isZScore) {
    // saveCSVFile(fileNameInfo.baseName, 'intergrowth/csv', result.finalData,
    //     fullPath: usedCsvPath);

    writeDart(model, item, fileNameInfo, result.finalData);
  } else {
    final last2 = htmlFile.uri.pathSegments.last;
    final isHaveComparableFileName = last2.contains('-ct-') ||
        last2.contains('_ct_') ||
        last2.contains('-ct_');
    if (isHaveComparableFileName) {
      final isHaveZScore =
          File(htmlFile.path.replaceAll('ct', 'zs')).existsSync();

      if (isHaveZScore) {
        return;
      } else {
        print('Warning: No Z-Score file found for ${htmlFile.path}');
        // saveCSVFile(fileNameInfo.baseName, 'intergrowth/csv', result.finalData,
        //     fullPath: usedCsvPath);
        writeDart(model, item, fileNameInfo, result.finalData);
      }
    } else {
      /// Commented after manual check, as the zs file is existing
      // print('Warning: File name does not contain "-ct-": ${htmlFile.path}');
      // final usedCsvPath = 'intergrowth/csv/${fileNameInfo.baseName}.csv';
      // saveCSVFile(fileNameInfo.baseName, 'intergrowth/csv', result.finalData,
      //     fullPath: usedCsvPath);
    }
  }
}

void writeDart(Intergrowth model, Item item, FileNameInfo fileNameInfo,
    List<List<String>> data) {
  final workingDartDirectory = Directory('../lib/src/category/intergrowth');
  final dataPath = '${workingDartDirectory.path}/data';
  // final modelPath = '${workingDartDirectory.path}/model';
  final name = fileNameInfo.baseName
      .replaceAll('-', '_')
      .replaceAll('_table', '')
      .replaceAll('_zs', '')
      .replaceAll('_ct', '')
      .replaceAll('___', '_')
      .replaceAll('__', '_');
  final dartDataFilePath = '$dataPath/${model.key}/$name.dart';

  // final dartModelFilePath =
  //     '$modelPath/${model.key}/${fileNameInfo.baseName}.dart';
  final dartDataFile = File(dartDataFilePath);
  // final dartModelFile = File(dartModelFilePath.replaceAll('-', '_'));
  if (!dartDataFile.existsSync()) {
    dartDataFile.createSync(recursive: true);
  }
  // if (!dartModelFile.existsSync()) {
  //   dartModelFile.createSync(recursive: true);
  // }
  final expMap = <String, dynamic>{};

  sanitize(data)
      .map(
    (c) => ['csv', 'l', 'm', 's']
        .asMap()
        .map((_, value) => getVal(c, value).entries.first)
        .map((key, value) => MapEntry(key.toLowerCase(), value)),
  )
      .forEach((element) {
    expMap[element['csv'].toString()] = element..remove('csv');
  });

  final encode = json.encode(expMap);

  dartDataFile.writeAsStringSync("""
  part of '../intergrowth.dart';
  
  // ignore: constant_identifier_names
  const _${model.key}_$name = '''\n$encode''';\n""");
}

int findMaxColumnCount(List<Element> tables) {
  int maxColumns = 0;

  for (final table in tables) {
    for (final tr in table.querySelectorAll('tr')) {
      final tdCount = tr.querySelectorAll('td').length;
      if (tdCount > maxColumns) maxColumns = tdCount;
    }
  }

  return maxColumns;
}

List<List<String>> extractTableData(Document document, int totalElementNumber) {
  final allTr = document.querySelectorAll('tr');
  final data = <List<String>>[];

  for (final tr in allTr) {
    final allTd = tr.querySelectorAll('td');
    if (allTd.isEmpty) continue;

    if (allTd.where((s) => s.text.trim().isNotEmpty).length <
        totalElementNumber) {
      continue;
    }

    // Check for multi-row cells
    bool hasMultipleRows = false;
    int maxRows = 1;
    for (final td in allTd) {
      final paragraphs = td.querySelectorAll('p');
      if (paragraphs.length > 1) {
        hasMultipleRows = true;
        maxRows = paragraphs.length > maxRows ? paragraphs.length : maxRows;
      }
    }

    if (hasMultipleRows) {
      data.addAll(processMultiRowCells(allTd, maxRows));
    } else {
      final rowData = processRegularRow(allTd);
      if (rowData.isNotEmpty) data.add(rowData);
    }
  }

  return data;
}

List<List<String>> processMultiRowCells(List<Element> cells, int maxRows) {
  final List<List<String>> multiRowData =
      List.generate(maxRows, (_) => <String>[]);

  for (final td in cells) {
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
      // Single value that applies to all rows
      final text = td.text.trim();
      if (text.isNotEmpty) {
        for (int i = 0; i < maxRows; i++) {
          multiRowData[i].add(text);
        }
      }
    }
  }

  return multiRowData;
}

List<String> processRegularRow(List<Element> cells) {
  final rowData = <String>[];

  for (final td in cells) {
    final text = td.text.trim();
    if (text.isNotEmpty) {
      rowData.add(text);
    }
  }

  return rowData;
}

List<List<String>> cleanData(List<List<String>> data) {
  final cleanedData = <List<String>>[];

  for (final row in data) {
    if (row.first.contains('(')) continue;

    final cleanedRow = <String>[];
    for (final cell in row) {
      if (cell.isEmpty) continue;

      final parsedValue = num.tryParse(cell);
      if (parsedValue == null) {
        if (cell.contains('+')) {
          final weeksDays = parseWeeksDaysFormat(cell);
          if (weeksDays != null) {
            cleanedRow.add(weeksDays);
            continue;
          }
        } else {
          cleanedRow.add(parsedValue.toString());
          continue;
        }
      } else {
        cleanedRow.add(parsedValue.toString());
      }
    }

    cleanedData.add(cleanedRow);
  }

  return cleanedData;
}

String? parseWeeksDaysFormat(String value) {
  final split = value.split('+');
  if (split.length != 2) return null;

  final weeks = int.tryParse(split.first.trim());
  final days = int.tryParse(split.last.trim());

  if (weeks == null || days == null) {
    print('Invalid week/day format: $value');
    return null;
  }

  return '${weeks * 7 + days}';
}

Element findTableHeaders(List<Element> rows, int totalElementNumber) {
  try {
    return rows.firstWhere(
      (tr) {
        final allTd = tr.querySelectorAll('td');
        return allTd.isNotEmpty && allTd.length == totalElementNumber - 1;
      },
      orElse: () => rows.firstWhere((tr) {
        final allTd = tr.querySelectorAll('td');
        return allTd.isNotEmpty && allTd.length == totalElementNumber;
      }),
    );
  } catch (e) {
    // Fallback to first non-empty row
    return rows.firstWhere((tr) => tr.querySelectorAll('td').isNotEmpty);
  }
}

List<String> extractLabels(Element headerRow) {
  return headerRow
      .querySelectorAll('td')
      .map((td) => td.text.trim())
      .where((text) => text.isNotEmpty)
      .toList();
}

class ProcessingResult {
  ProcessingResult(this.finalData, this.isCentile);
  final List<List<String>> finalData;
  final bool isCentile;
}

ProcessingResult processLabelsAndData(
    List<String> labels, List<List<String>> cleanedData) {
  final cleanedLabels = <String>[];
  bool isCentile = false;

  for (final label in labels) {
    final parsedInt = int.tryParse(label);
    if (parsedInt == null) {
      final parsedOrdinal = OrdinalParser.parse(label);
      if (parsedOrdinal != null) {
        cleanedLabels.add(label);
        isCentile = true;
      }
    } else {
      cleanedLabels.add(label);
    }
  }

  final labelList = ['csv', ...cleanedLabels];
  final isValidLengthCsv =
      cleanedData.every((row) => row.length == labelList.length);

  if (!isValidLengthCsv) {
    print(
        'Invalid CSV format - column count mismatch. Expected ${labelList.length} columns.');
  }

  final rows = [labelList, ...cleanedData];
  final finalData = generateFinalData(rows, isCentile);

  return ProcessingResult(finalData, isCentile);
}

List<List<String>> generateFinalData(List<List<String>> rows, bool isCentile) {
  final finalData = <List<String>>[];
  finalData.add(['csv', 'l', 'm', 's', ...rows[0].sublist(1)]);

  for (int rowIndex = 1; rowIndex < rows.length; rowIndex++) {
    final currentData = rows[rowIndex];
    final LMS lms = isCentile
        ? LMSEstimation.estimateFromCentiles(
            LMSEstimation.parseCentilesFromCsv(rows, rowIndex))
        : LMSEstimation.estimateFromSD(
            LMSEstimation.parseSDFromCsv(rows, rowIndex));

    finalData.add([
      currentData.first,
      lms.l.toString(),
      lms.m.toString(),
      lms.s.toString(),
      ...currentData.sublist(1),
    ]);
  }

  return finalData;
}

void saveCSVFile(String fileName, String basePath, List<List<String>> data,
    {String? fullPath}) {
  final csv = const ListToCsvConverter().convert(data);
  final path = fullPath ?? '$basePath/$fileName.csv';

  final csvFile = File(path);
  csvFile.createSync(recursive: true);
  csvFile.writeAsStringSync(csv);
}
