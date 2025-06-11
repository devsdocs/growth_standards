// ignore_for_file: avoid_print

import 'dart:convert';
import 'dart:io';
import 'dart:math';

import 'package:csv/csv.dart';
import 'package:dart_numerics/dart_numerics.dart';
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
  part of '../../intergrowth.dart';
  
  // ignore: constant_identifier_names
  const _${model.key}_$name = '''\n$encode''';\n""");

  print("part 'data/${model.key}/$name.dart';");
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

/// A utility class for estimating LMS parameters from standard deviation values or centile values
class LMSEstimation {
  /// Estimates LMS parameters from standard deviation values.
  ///
  /// [sdValues] is a map of z-score values to their corresponding measurements
  /// For example: {-3: 1.5, -2: 2.0, -1: 2.5, 0: 3.0, 1: 3.5, 2: 4.0, 3: 4.5}
  ///
  /// Returns an estimated LMS object
  static LMS estimateFromSD(Map<int, double> sdValues) {
    // Convert map to lists for optimization
    final sds = sdValues.keys.toList();
    final values = sds.map((sd) => sdValues[sd]!).toList();

    // Use optimization to find LMS parameters
    return optimizeLMSParameters(sds, values);
  }

  /// Estimates LMS parameters from centile values.
  ///
  /// [centileValues] is a map of percentile values to their corresponding measurements
  /// For example: {3: 1.5, 5: 1.8, 10: 2.0, 50: 3.0, 90: 4.0, 95: 4.2, 97: 4.5}
  ///
  /// Returns an estimated LMS object
  static LMS estimateFromCentiles(Map<int, double> centileValues) {
    // Convert centiles to z-scores
    final sdValues = <int, double>{};

    for (final entry in centileValues.entries) {
      // Convert percentile to z-score
      final zScore = qnorm(entry.key / 100);
      final nearestInt = zScore.round();

      // Only use z-scores that are close to integers for estimation
      if ((zScore - nearestInt).abs() < 0.1) {
        sdValues[nearestInt] = entry.value;
      }
    }

    // Always include median (50th percentile) as 0 SD
    if (centileValues.containsKey(50)) {
      sdValues[0] = centileValues[50]!;
    }

    // Fallback: direct estimation using available centiles
    final sds = <int>[];
    final values = <double>[];

    for (final entry in centileValues.entries) {
      final zScore = qnorm(entry.key / 100);
      sds.add(zScore.round());
      values.add(entry.value);
    }

    return optimizeLMSParameters(sds, values);
  }

  /// Calculate predicted values using LMS parameters for given SD values
  static List<double> predictValues(
      List<int> sds, double l, double m, double s) {
    return sds.map((sd) {
      if (l.abs() < 1e-6) {
        // When L is close to 0
        return m * exp(s * sd);
      } else {
        return m * pow(1 + l * s * sd, 1 / l);
      }
    }).toList();
  }

  /// Calculate the sum of squared errors between actual and predicted values
  static double calculateError(
      List<int> sds, List<double> actualValues, double l, double m, double s) {
    if (m <= 0 || s <= 0) return double.infinity;

    final predictedValues = predictValues(sds, l, m, s);
    double sumSquaredErrors = 0;

    for (int i = 0; i < sds.length; i++) {
      sumSquaredErrors += pow(predictedValues[i] - actualValues[i], 2);
    }

    return sumSquaredErrors;
  }

  /// Optimize LMS parameters using a numerical approach
  static LMS optimizeLMSParameters(List<int> sds, List<double> values) {
    // Initial guesses matching Python exactly
    final m0 = values[3]; // SD0 (index 3 in [-3,-2,-1,0,1,2,3])
    final s0 = (values[4] - values[2]) / (2 * m0); // (SD+1 - SD-1) / (2 * M0)
    const l0 = 0.1; // Small value for L

    // Use a more sophisticated optimization approach
    return _minimizeWithBounds(sds, values, l0, m0, s0);
  }

  /// Simplified implementation of scipy's minimize with L-BFGS-B
  static LMS _minimizeWithBounds(
      List<int> sds, List<double> values, double l0, double m0, double s0) {
    final params = [l0, m0, s0.abs()];

    // Bounds: L in [-2, 2], M > 1e-6, S > 1e-9 (increased precision)
    final bounds = [
      [-2.0, 2.0],
      [1e-6, double.infinity],
      [1e-9, double.infinity]
    ];

    double bestError =
        calculateError(sds, values, params[0], params[1], params[2]);
    var bestParams = List<double>.from(params);

    // Multi-start optimization with more L values for better precision
    final lStartValues = [
      -1.8,
      -1.5,
      -1.2,
      -1.0,
      -0.8,
      -0.5,
      -0.3,
      -0.1,
      -0.05,
      0.0,
      0.05,
      0.1,
      0.3,
      0.5,
      0.8,
      1.0,
      1.2,
      1.5,
      1.8
    ];

    for (final lStart in lStartValues) {
      var currentParams = [lStart, m0, s0.abs()];

      // Apply bounds
      for (int i = 0; i < currentParams.length; i++) {
        currentParams[i] = currentParams[i].clamp(bounds[i][0], bounds[i][1]);
      }

      // Nelder-Mead style optimization
      currentParams = _nelderMeadOptimize(sds, values, currentParams, bounds);

      final error = calculateError(
          sds, values, currentParams[0], currentParams[1], currentParams[2]);
      if (error < bestError) {
        bestError = error;
        bestParams = currentParams;
      }
    }

    return (l: bestParams[0], m: bestParams[1], s: bestParams[2]);
  }

  /// Simplified Nelder-Mead optimization with bounds
  static List<double> _nelderMeadOptimize(List<int> sds, List<double> values,
      List<double> initialParams, List<List<double>> bounds) {
    const maxIterations = 5000; // Increased for higher precision
    const tolerance = 1e-12; // Much higher precision tolerance
    const relativeTolerance = 1e-10; // Additional relative tolerance

    final params = List<double>.from(initialParams);
    var bestParams = List<double>.from(params);
    var bestError =
        calculateError(sds, values, params[0], params[1], params[2]);

    // Create initial simplex (4 points for 3 parameters)
    final simplex = <List<double>>[];
    simplex.add(List<double>.from(params));

    // Add 3 more points with smaller perturbations for higher precision
    for (int i = 0; i < 3; i++) {
      final point = List<double>.from(params);
      point[i] += params[i] * 0.01; // Reduced to 1% perturbation for precision
      // Apply bounds
      for (int j = 0; j < point.length; j++) {
        point[j] = point[j].clamp(bounds[j][0], bounds[j][1]);
      }
      simplex.add(point);
    }

    for (int iter = 0; iter < maxIterations; iter++) {
      // Calculate errors for all simplex points
      final errors = simplex
          .map((point) =>
              calculateError(sds, values, point[0], point[1], point[2]))
          .toList();

      // Find best, worst, and second worst
      int bestIdx = 0;
      int worstIdx = 0;
      for (int i = 1; i < errors.length; i++) {
        if (errors[i] < errors[bestIdx]) bestIdx = i;
        if (errors[i] > errors[worstIdx]) worstIdx = i;
      }

      final currentBest = simplex[bestIdx];
      final currentError = errors[bestIdx];

      if (currentError < bestError) {
        bestError = currentError;
        bestParams = List<double>.from(currentBest);
      }

      // Check convergence with both absolute and relative tolerance
      final errorRange = errors.reduce((a, b) => a > b ? a : b) -
          errors.reduce((a, b) => a < b ? a : b);
      final avgError = errors.reduce((a, b) => a + b) / errors.length;

      if (errorRange < tolerance ||
          (avgError > 0 && errorRange / avgError < relativeTolerance)) {
        break;
      }

      // Calculate centroid (excluding worst point)
      final centroid = List<double>.filled(3, 0.0);
      for (int i = 0; i < simplex.length; i++) {
        if (i != worstIdx) {
          for (int j = 0; j < 3; j++) {
            centroid[j] += simplex[i][j];
          }
        }
      }
      for (int j = 0; j < 3; j++) {
        centroid[j] /= simplex.length - 1;
      }

      // Reflection with higher precision coefficients
      final reflected = <double>[];
      for (int j = 0; j < 3; j++) {
        reflected.add(centroid[j] + 1.0 * (centroid[j] - simplex[worstIdx][j]));
        reflected[j] = reflected[j].clamp(bounds[j][0], bounds[j][1]);
      }

      final reflectedError =
          calculateError(sds, values, reflected[0], reflected[1], reflected[2]);

      if (reflectedError < errors[bestIdx]) {
        // Expansion
        final expanded = <double>[];
        for (int j = 0; j < 3; j++) {
          expanded.add(centroid[j] + 2.0 * (reflected[j] - centroid[j]));
          expanded[j] = expanded[j].clamp(bounds[j][0], bounds[j][1]);
        }

        final expandedError =
            calculateError(sds, values, expanded[0], expanded[1], expanded[2]);
        simplex[worstIdx] =
            expandedError < reflectedError ? expanded : reflected;
      } else if (reflectedError < errors[worstIdx]) {
        simplex[worstIdx] = reflected;
      } else {
        // Contraction
        final contracted = <double>[];
        for (int j = 0; j < 3; j++) {
          contracted
              .add(centroid[j] + 0.5 * (simplex[worstIdx][j] - centroid[j]));
          contracted[j] = contracted[j].clamp(bounds[j][0], bounds[j][1]);
        }

        final contractedError = calculateError(
            sds, values, contracted[0], contracted[1], contracted[2]);
        if (contractedError < errors[worstIdx]) {
          simplex[worstIdx] = contracted;
        } else {
          // Shrinkage with smaller step for precision
          for (int i = 0; i < simplex.length; i++) {
            if (i != bestIdx) {
              for (int j = 0; j < 3; j++) {
                simplex[i][j] = simplex[bestIdx][j] +
                    0.5 * (simplex[i][j] - simplex[bestIdx][j]);
                simplex[i][j] = simplex[i][j].clamp(bounds[j][0], bounds[j][1]);
              }
            }
          }
        }
      }
    }

    return bestParams;
  }

  /// Helper method to parse SD values from CSV format often used in growth charts
  /// The first row is expected to have z-score values, and [rowIndex] specifies
  /// which data row to use
  static Map<int, double> parseSDFromCsv(
      List<List<dynamic>> csvData, int rowIndex) {
    final result = <int, double>{};

    if (csvData.isEmpty || csvData[0].length < 2) {
      throw ArgumentError('Invalid CSV format');
    }

    // Parse header to get z-score values
    final header = csvData[0];
    for (int i = 1; i < header.length; i++) {
      final zScore = int.tryParse(header[i].toString());
      if (zScore != null) {
        final value = double.tryParse(csvData[rowIndex][i].toString());
        if (value != null) {
          result[zScore] = value;
        }
      }
    }

    return result;
  }

  /// Helper method to parse centile values from CSV format
  /// The first row is expected to have percentile values, and [rowIndex] specifies
  /// which data row to use
  static Map<int, double> parseCentilesFromCsv(
      List<List<dynamic>> csvData, int rowIndex) {
    final result = <int, double>{};

    if (csvData.isEmpty || csvData[0].length < 2) {
      throw ArgumentError('Invalid CSV format');
    }

    // Parse header to get percentile values
    final header = csvData[0];
    for (int i = 1; i < header.length; i++) {
      final percentile =
          int.tryParse(header[i].toString().replaceAll(RegExp('[^0-9]'), ''));
      if (percentile != null) {
        final value = double.tryParse(csvData[rowIndex][i].toString());
        if (value != null) {
          result[percentile] = value;
        }
      }
    }

    return result;
  }
}

/// Normal distribution equation, the name [qnorm] inspired from R language
num qnorm(num percentile) => sqrt(2) * erfInv(2 * percentile - 1);

typedef LMS = ({num l, num m, num s});
