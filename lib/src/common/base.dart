import 'package:growth_standards/growth_standards.dart';
import 'package:growth_standards/src/common/model/lms.dart';

abstract class VelocityBasedResult {
  const VelocityBasedResult();
  Map<VelocityIncrement, Map<VelocityMonths, ZScorePercentile>>
  zScorePercentileMap([Precision precision = Precision.two]);
}

sealed class Result {
  const Result();

  num zScore([Precision precision = Precision.two]);
  num percentile([Precision precision = Precision.two]);

  num get measurementResultInDefaultUnit;

  LMSContext get lmsData;

  BaseData get contextData;
}

abstract class AgeBasedResult extends Result {
  const AgeBasedResult();
  Age get ageAtObservationDate;
}

abstract class LengthBasedResult extends Result {
  const LengthBasedResult();
  Length get lengthAtObservationDate;
}

abstract class LMSContext {
  const LMSContext();
  LMS get lms;
}

sealed class BaseData {
  const BaseData();
  Map<Sex, Map<num, LMSContext>> get data;

  /// No need for sorting as the data is already sorted by default.
  Iterable<num> get _contextData => data.values.first.keys;

  num get upperBound => _contextData.last;
  num get lowerBound => _contextData.first;
}

abstract class AgeBasedData extends BaseData {
  const AgeBasedData();

  TimeUnit get unit;
}

abstract class LengthBasedData extends BaseData {
  const LengthBasedData();

  Length get unit;
}

abstract class VelocityBaseData {
  const VelocityBaseData();
  Map<Sex, Map<VelocityIncrement, Map<VelocityMonths, LMSContext>>> get data;
}
