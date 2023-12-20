import 'package:growth_standards/src/common/math.dart';
import 'package:growth_standards/src/common/typedef.dart';
import 'package:growth_standards/src/common/types.dart';

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
