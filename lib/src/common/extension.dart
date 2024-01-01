import 'package:growth_standards/src/common/math.dart';
import 'package:growth_standards/src/common/typedef.dart';
import 'package:growth_standards/src/common/types.dart';
import 'package:reusable_tools/reusable_tools.dart';
import 'package:super_measurement/super_measurement.dart';

extension LMSExtension on LMS {
  num zScore(num y) => zScoreCalculation(y, lms: this);
  num adjustedZScore(num y) => adjustedZScoreCalculation(y, lms: this);
  num stDev(num sd) => standardDeviationCalculation(sd, lms: this);

  ZScoreCutOff get stDevCutOff =>
      ZScoreValue.values.asMap().map((_, v) => MapEntry(v, stDev(v.value)));

  PercentileCutOff get percentileCutOff => PercentileValue.values
      .asMap()
      .map((_, v) => MapEntry(v, stDev(qnorm(v.value / 100))));
}

extension NumPrecision on num {
  num precision(Precision precision) => precision == Precision.none
      ? this
      : toDouble().toPrecision(precision.value);
}
