// ignore_for_file: avoid_redundant_argument_values, avoid_print

import 'dart:math';

import 'zscore.dart';

double zScoreToPercentile(double zScore) {
  final double percentile = 0.5 * (1 + erf(zScore / sqrt(2)));
  return percentile;
}

double erf(double x) {
  // Implementation of the error function (erf)
  // You can find various implementations based on your requirements
  // This is a simple implementation for demonstration purposes
  return 2 / sqrt(pi) * integral((t) => exp(-t * t), 0, x, intervals: 1000);
}

double integral(
  double Function(double) f,
  double a,
  double b, {
  int intervals = 1000,
}) {
  final double h = (b - a) / intervals;
  double sum = 0.5 * (f(a) + f(b));

  for (int i = 1; i < intervals; i++) {
    final double x = a + i * h;
    sum += f(x);
  }

  return sum * h;
}

void cell(double zScore) {
  
  final double percentile = zScoreToPercentile(zScore);
  print('Z-score: $zScore, Percentile: $percentile%');
  print(percentile);

  call(zScore);
}
