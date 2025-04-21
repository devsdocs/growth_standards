import 'package:growth_standards/growth_standards.dart';
import 'package:growth_standards/src/common/model/lms.dart';

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

  num get measurementResultInDefaultUnit;

  LMSBasedResult get lmsData;
}

abstract class AgeBasedResult extends Result {
  const AgeBasedResult();
  Age get ageAtObservationDate;
}

abstract class LengthBasedResult extends Result {
  const LengthBasedResult();
  Length get lengthAtObservationDate;
}

abstract class LMSBasedResult {
  const LMSBasedResult();
  LMS get lms;
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
