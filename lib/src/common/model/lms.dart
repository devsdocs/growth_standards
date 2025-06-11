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

    // Bounds: L in [-2, 2], M > 1e-3, S > 1e-6
    final bounds = [
      [-2.0, 2.0],
      [1e-3, double.infinity],
      [1e-6, double.infinity]
    ];

    double bestError =
        calculateError(sds, values, params[0], params[1], params[2]);
    var bestParams = List<double>.from(params);

    // Multi-start optimization with different L values to find global minimum
    final lStartValues = [-1.5, -1.0, -0.5, -0.1, 0.0, 0.1, 0.5, 1.0, 1.5];

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

    return LMS(l: bestParams[0], m: bestParams[1], s: bestParams[2]);
  }

  /// Simplified Nelder-Mead optimization with bounds
  static List<double> _nelderMeadOptimize(List<int> sds, List<double> values,
      List<double> initialParams, List<List<double>> bounds) {
    const maxIterations = 1000;
    const tolerance = 1e-8;

    final params = List<double>.from(initialParams);
    var bestParams = List<double>.from(params);
    var bestError =
        calculateError(sds, values, params[0], params[1], params[2]);

    // Create initial simplex (4 points for 3 parameters)
    final simplex = <List<double>>[];
    simplex.add(List<double>.from(params));

    // Add 3 more points with small perturbations
    for (int i = 0; i < 3; i++) {
      final point = List<double>.from(params);
      point[i] += params[i] * 0.05; // 5% perturbation
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

      // Check convergence
      final errorRange = errors.reduce((a, b) => a > b ? a : b) -
          errors.reduce((a, b) => a < b ? a : b);
      if (errorRange < tolerance) break;

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

      // Reflection
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
          // Shrinkage
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
