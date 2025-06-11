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
