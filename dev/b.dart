import 'dart:math';
import 'package:dart_numerics/dart_numerics.dart' as f;

import 'a.dart';

double zScoreToPercentile(double zScore) {
  final double percentile = 0.5 * (1 + f.erf(zScore / sqrt(2)));
  return percentile * 100;
}

void main() {
  const double zScore = 2.11; // Replace this with your actual Z-score
  final double percentile = zScoreToPercentile(zScore);
  print('Z-score: $zScore, Percentile: $percentile%');
  cell(zScore);
}
