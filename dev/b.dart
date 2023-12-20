// ignore_for_file: avoid_print

import 'dart:math';
import 'package:dart_numerics/dart_numerics.dart' as f;

double zScoreToPercentile(double zScore) {
  final double percentile = 0.5 * (1 + f.erf(zScore / sqrt(2)));
  return percentile;
}

double percentileToZScore(double percentile) {
  // final double percentile = 0.5 * (1 + f.erfInv(zScore / sqrt(2)));
  return sqrt(2) * f.erfInv(2 * percentile - 1);
}

void main() {
  const double zScore = 0; // Replace this with your actual Z-score

  // cell(zScore);
  print(percentileToZScore(zScoreToPercentile(zScore)));
  print(zScoreToPercentile(percentileToZScore(zScore)));
}
