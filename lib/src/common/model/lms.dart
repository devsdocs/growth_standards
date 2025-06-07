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
    // M is the median (0 SD value)
    final m = sdValues[0]!;

    // Use SD -2 and SD +2 to estimate L and S
    final sd2Neg = sdValues[-2]!;
    final sd2Pos = sdValues[2]!;

    // Calculate L and S using numerical approximation
    final s = estimateS(m, sd2Neg, sd2Pos);
    final l = estimateL(m, s, sdValues);

    return LMS(l: l, m: m, s: s);
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
      // Convert percentile to z-score and round to nearest integer if close
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

    // Fallback: direct estimation using 3rd, 50th, and 97th centiles if available
    if (centileValues.containsKey(3) &&
        centileValues.containsKey(50) &&
        centileValues.containsKey(97)) {
      final m = centileValues[50]!;
      final sd2Neg = centileValues[3]!; // Approximately -2 SD
      final sd2Pos = centileValues[97]!; // Approximately +2 SD

      final s = estimateS(m, sd2Neg, sd2Pos);
      final l = estimateLFromCentiles(centileValues, m, s);

      return LMS(l: l, m: m, s: s);
    }

    throw ArgumentError('Insufficient centile data to estimate LMS parameters');
  }

  /// Estimates the S parameter using the median and ±2 SD values
  static double estimateS(double m, double sd2Neg, double sd2Pos) {
    // For normal distribution, S can be estimated from the ratio of SD to M
    return ((sd2Pos - sd2Neg) / (4 * m)).abs();
  }

  /// Estimates the L parameter by minimizing error between actual and estimated SD values
  static double estimateL(double m, double s, Map<int, double> sdValues) {
    // Try various L values and find the one with minimal error
    double bestL = 1.0; // Default to 1 (normal distribution)
    double minError = double.infinity;

    // Test L values in a reasonable range
    for (double l = -2.0; l <= 2.0; l += 0.1) {
      if (l.abs() < 0.05) continue; // Skip values too close to 0

      double totalError = 0;
      int count = 0;

      // Calculate error for each SD value
      for (final entry in sdValues.entries) {
        if (entry.key == 0) continue; // Skip median

        final sd = entry.key;
        final actualValue = entry.value;
        final estimatedValue = m * pow(1 + l * s * sd, 1 / l);
        final error = pow(actualValue - estimatedValue, 2).toDouble();
        totalError += error;
        count++;
      }

      final meanError = count > 0 ? totalError / count : double.infinity;
      if (meanError < minError) {
        minError = meanError;
        bestL = l;
      }
    }

    return bestL;
  }

  /// Estimates L parameter from centile values
  static double estimateLFromCentiles(
      Map<int, double> centileValues, double m, double s) {
    double bestL = 1.0;
    double minError = double.infinity;

    for (double l = -2.0; l <= 2.0; l += 0.1) {
      if (l.abs() < 0.05) continue; // Skip values too close to 0

      double totalError = 0;
      int count = 0;

      for (final entry in centileValues.entries) {
        if (entry.key == 50) continue; // Skip median

        final percentile = entry.key / 100;
        final zScore = qnorm(percentile);
        final actualValue = entry.value;
        final estimatedValue = m * pow(1 + l * s * zScore, 1 / l);
        final error = pow(actualValue - estimatedValue, 2).toDouble();
        totalError += error;
        count++;
      }

      final meanError = count > 0 ? totalError / count : double.infinity;
      if (meanError < minError) {
        minError = meanError;
        bestL = l;
      }
    }

    return bestL;
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
