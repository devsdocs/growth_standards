import 'package:growth_standards/growth_standards.dart';
import 'package:growth_standards/src/common/model/lms.dart';
import 'package:growth_standards/src/common/typedef.dart';
import 'package:growth_standards/src/who/typedef.dart';

abstract class VelocityBasedResult {
  const VelocityBasedResult();
  Map<VelocityIncrement, Map<VelocityMonths, ZScorePercentile>>
      zScorePercentileMap([Precision precision = Precision.ten]);
}

abstract class Result {
  const Result();

  num zScore([
    Precision precision = Precision.ten,
  ]);
  num percentile([
    Precision precision = Precision.ten,
  ]);
}

abstract class AgeBasedResult extends Result {
  const AgeBasedResult();
  Age get ageAtObservationDate;

  LMSBasedResult get ageData;
}

abstract class LengthBasedResult extends Result {
  const LengthBasedResult();

  LMSBasedResult get lengthData;
}

abstract class LMSBasedResult {
  const LMSBasedResult();
  LMS get lms;
  ZScoreCutOff get standardDeviationCutOff;
  PercentileCutOff get percentileCutOff;
}

abstract class BaseData {
  const BaseData();
  Map<Sex, Map<num, LMSBasedResult>> get data;
}

abstract class SexAgnosticData {
  const SexAgnosticData();
  Map<num, LMSBasedResult> get data;
}

abstract class VelocityBaseData {
  const VelocityBaseData();
  Map<Sex, Map<VelocityIncrement, Map<VelocityMonths, LMSBasedResult>>>
      get data;
}
