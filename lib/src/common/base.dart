import 'package:growth_standards/growth_standards.dart';
import 'package:growth_standards/src/common/model/lms.dart';
import 'package:growth_standards/src/common/typedef.dart';
import 'package:growth_standards/src/who/typedef.dart';

abstract class VelocityBasedResult {
  const VelocityBasedResult();
  Map<VelocityIncrement, Map<VelocityMonths, ZScorePercentile>>
      zScorePercentileMap([Precision precision = Precision.ten]);
}

abstract class AgeBasedResult {
  const AgeBasedResult();
  Age get ageAtObservationDate;
  num zScore([
    Precision precision = Precision.ten,
  ]);
  num percentile([
    Precision precision = Precision.ten,
  ]);
}

abstract class LMSBasedResult {
  const LMSBasedResult();
  LMS get lms;
  ZScoreCutOff get standardDeviationCutOff;
  PercentileCutOff get percentileCutOff;
}
