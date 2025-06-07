import 'dart:math';

import 'package:growth_standards/src/common/math.dart';
import 'package:growth_standards/src/common/typedef.dart';
import 'package:growth_standards/src/common/types.dart';

/// [LMS] model for statistical calculation
class LMS {
  const LMS(
      {required this.l,
      required this.m,
      required this.s,
      ZScoreCutOff Function(ZScoreCutOff zScore)? zScoreOverride,
      PercentileCutOff Function(PercentileCutOff percentile)?
          percentileOverride})
      : _zScoreOverride = zScoreOverride,
        _percentileOverride = percentileOverride;
  final num l;
  final num m;
  final num s;

  final ZScoreCutOff Function(ZScoreCutOff zScore)? _zScoreOverride;
  final PercentileCutOff Function(PercentileCutOff percentile)?
      _percentileOverride;

  num zScore(num y) => zScoreCalculation(y, lms: this);
  num adjustedZScore(num y) => adjustedZScoreCalculation(y, lms: this);
  num standardDeviation(num sd) => standardDeviationCalculation(sd, lms: this);

  ZScoreCutOff get standardDeviationCutOff {
    final map = ZScoreValue.values
        .asMap()
        .map((_, v) => MapEntry(v, standardDeviation(v.value)));
    return _zScoreOverride != null ? _zScoreOverride(map) : map;
  }

  PercentileCutOff get percentileCutOff {
    final map = PercentileValue.values
        .asMap()
        .map((_, v) => MapEntry(v, standardDeviation(qnorm(v.value / 100))));
    return _percentileOverride != null ? _percentileOverride(map) : map;
  }

  @override
  String toString() => 'LMS(l: $l, m: $m, s: $s)';

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is LMS &&
          runtimeType == other.runtimeType &&
          l == other.l &&
          m == other.m &&
          s == other.s;

  @override
  int get hashCode => l.hashCode ^ m.hashCode ^ s.hashCode;
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

    // If we have enough points, estimate LMS
    if (sdValues.length >= 3 && sdValues.containsKey(0)) {
      return estimateFromSD(sdValues);
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
    // Initial guesses
    final m0 = values[sds.indexOf(0)] ?? // Median (SD0)
        values[values.length ~/ 2]; // Or middle value if SD0 not available

    // Find SD-1 and SD+1 values if available, or closest values
    int sd1Index = sds.indexOf(1);
    int sdNeg1Index = sds.indexOf(-1);

    if (sd1Index == -1) {
      // Find closest positive SD
      sd1Index = sds.indexWhere((sd) => sd > 0);
    }

    if (sdNeg1Index == -1) {
      // Find closest negative SD
      sdNeg1Index = sds.lastIndexWhere((sd) => sd < 0);
    }

    final s0 = sd1Index != -1 && sdNeg1Index != -1
        ? (values[sd1Index] - values[sdNeg1Index]) /
            (2 * m0 * (sds[sd1Index] - sds[sdNeg1Index]))
        : 0.1; // Default if we can't estimate

    // Initialize best parameters
    double bestError = double.infinity;
    double bestL = 1.0;
    double bestM = m0;
    double bestS = s0.abs();

    // Grid search for L with finer granularity
    for (double l = -2.0; l <= 2.0; l += 0.025) {
      // Skip values too close to 0 to avoid numerical issues
      if (l.abs() < 0.025) continue;

      // For each L, optimize M and S
      double optM = m0;
      double optS = s0.abs();

      // Local optimization for M and S (simplified gradient descent)
      for (int iter = 0; iter < 50; iter++) {
        // Try variations of M and S
        final variations = [
          [optM * 0.99, optS],
          [optM * 1.01, optS],
          [optM, optS * 0.99],
          [optM, optS * 1.01],
        ];

        double currentError = calculateError(sds, values, l, optM, optS);
        bool improved = false;

        for (final variation in variations) {
          final m = variation[0];
          final s = variation[1];

          final error = calculateError(sds, values, l, m, s);
          if (error < currentError) {
            optM = m;
            optS = s;
            currentError = error;
            improved = true;
          }
        }

        if (!improved) break;
      }

      // Check if this is the best combination so far
      final error = calculateError(sds, values, l, optM, optS);
      if (error < bestError) {
        bestError = error;
        bestL = l;
        bestM = optM;
        bestS = optS;
      }
    }

    // Special case for L close to 0 (log-normal distribution)
    {
      const l = 0.0;
      double optM = m0;
      double optS = s0.abs();

      // Local optimization for M and S with L=0
      for (int iter = 0; iter < 50; iter++) {
        final variations = [
          [optM * 0.99, optS],
          [optM * 1.01, optS],
          [optM, optS * 0.99],
          [optM, optS * 1.01],
        ];

        double currentError = calculateError(sds, values, l, optM, optS);
        bool improved = false;

        for (final variation in variations) {
          final m = variation[0];
          final s = variation[1];

          final error = calculateError(sds, values, l, m, s);
          if (error < currentError) {
            optM = m;
            optS = s;
            currentError = error;
            improved = true;
          }
        }

        if (!improved) break;
      }

      final error = calculateError(sds, values, l, optM, optS);
      if (error < bestError) {
        bestError = error;
        bestL = l;
        bestM = optM;
        bestS = optS;
      }
    }

    return LMS(l: bestL, m: bestM, s: bestS);
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
