// ignore_for_file: avoid_print

import 'dart:io';
import 'dart:math' as math;
import 'package:csv/csv.dart';

/// Credit to https://github.com/Yannngn/intergrowth-fetal-growth-csv
class LMSEstimator {
  /// Estimate LMS parameters from given SD scores and values.
  /// Uses nonlinear optimization to fit the Box-Cox (LMS) model:
  /// value = M * (1 + L * S * z) ** (1 / L)  if L != 0
  /// value = M * exp(S * z)                  if L == 0
  static List<double> estimateLms(List<double> sds, List<double> values) {
    double lmsLoss(List<double> params) {
      final double l = params[0];
      final double m = params[1];
      final double s = params[2];

      // Avoid invalid values
      if (m <= 0 || s <= 0) {
        return double.infinity;
      }

      double sumSquaredError = 0;
      for (int i = 0; i < sds.length; i++) {
        double pred;
        if (l.abs() < 1e-6) {
          pred = m * math.exp(s * sds[i]);
        } else {
          pred = m * math.pow(1 + l * s * sds[i], 1 / l);
        }
        sumSquaredError += math.pow(pred - values[i], 2);
      }
      return sumSquaredError;
    }

    // Initial guesses
    final double m0 = values[3]; // SD0
    final double s0 = (values[4] - values[2]) / (2 * m0); // Approximate S
    const double l0 = 0.1; // Small value for L

    // Implement optimization (simplified version of scipy's minimize)
    final List<double> params = [l0, m0, s0];
    final List<List<double>> bounds = [
      [-2, 2],
      [1e-3, double.infinity],
      [1e-6, double.infinity]
    ];

    // Simple optimization using gradient descent
    const double learningRate = 0.01;
    const int maxIterations = 1000;
    const double epsilon = 1e-6;

    for (int i = 0; i < maxIterations; i++) {
      final double currentLoss = lmsLoss(params);
      final List<double> gradients = [];

      // Compute numerical gradients
      for (int j = 0; j < params.length; j++) {
        final List<double> paramsPlus = List<double>.from(params);
        paramsPlus[j] += epsilon;
        final double lossPlus = lmsLoss(paramsPlus);
        gradients.add((lossPlus - currentLoss) / epsilon);
      }

      // Update parameters
      bool converged = true;
      for (int j = 0; j < params.length; j++) {
        final double update = learningRate * gradients[j];
        if (update.abs() > epsilon) converged = false;
        params[j] -= update;

        // Apply bounds
        params[j] = math.max(bounds[j][0], math.min(bounds[j][1], params[j]));
      }

      if (converged) break;
    }

    return [params[0], params[1], params[2]];
  }

  static Future<void> processFile(String inputCsv, String outputCsv) async {
    final file = File(inputCsv);
    final content = await file.readAsString();
    final List<List<dynamic>> rows =
        const CsvToListConverter().convert(content);

    if (rows.isEmpty) {
      print('Empty file: $inputCsv');
      return;
    }

    // Check if LMS parameters already exist
    final headers = rows[0].map((e) => e.toString().toLowerCase()).toList();
    if (headers.contains('l') &&
        headers.contains('m') &&
        headers.contains('s')) {
      print('Skipping $inputCsv, LMS parameters already present.');
      await File(outputCsv).writeAsString(content);
      return;
    }

    print('Processing $inputCsv...');

    final List<List<dynamic>> outputRows = [];
    final List<String> outputHeaders = [
      headers[0],
      'l',
      'm',
      's',
      'sd3neg',
      'sd2neg',
      'sd1neg',
      'sd0',
      'sd1',
      'sd2',
      'sd3'
    ];
    outputRows.add(outputHeaders);

    // Process each row
    for (int i = 1; i < rows.length; i++) {
      final row = rows[i];
      final value = row[0];

      final List<double> sds = [-3, -2, -1, 0, 1, 2, 3];
      final List<double> values = [];

      // Extract SD values
      for (final sd in sds) {
        final String colName = sd >= 0 ? 'sd$sd' : 'sd${sd.abs()}neg';
        final int colIndex = headers.indexOf(colName.toLowerCase());
        if (colIndex >= 0) {
          values.add(double.parse(row[colIndex].toString()));
        } else {
          print('Warning: Column $colName not found in $inputCsv');
          values.add(0.0);
        }
      }

      final List<double> lmsParams = estimateLms(sds, values);

      outputRows.add([
        value,
        lmsParams[0], // L
        lmsParams[1], // M
        lmsParams[2], // S
        values[0], // sd3neg
        values[1], // sd2neg
        values[2], // sd1neg
        values[3], // sd0
        values[4], // sd1
        values[5], // sd2
        values[6], // sd3
      ]);
    }

    final String outputContent = const ListToCsvConverter().convert(outputRows);
    await File(outputCsv).writeAsString(outputContent);
  }

  static Future<void> main() async {
    final directory = Directory('data/tables');
    if (!await directory.exists()) {
      print('Error: Directory data/tables does not exist');
      return;
    }

    final List<FileSystemEntity> entities = await directory.list().toList();
    final List<String> csvFiles = entities
        .where((entity) => entity is File && entity.path.endsWith('.csv'))
        .map((entity) => entity.path)
        .toList();

    for (final String csvFile in csvFiles) {
      final String outputFile = csvFile.replaceFirst('tables', 'lms');

      // Ensure output directory exists
      final outputDir =
          Directory(outputFile.substring(0, outputFile.lastIndexOf('/')));
      if (!await outputDir.exists()) {
        await outputDir.create(recursive: true);
      }

      await processFile(csvFile, outputFile);
    }
  }
}

void main() async {
  await LMSEstimator.main();
}
