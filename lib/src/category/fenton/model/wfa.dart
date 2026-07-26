part of '../fenton.dart';

class FentonWeightForAgeData extends AgeBasedData {
  factory FentonWeightForAgeData() => _singleton;
  const FentonWeightForAgeData._(this._data);

  static final _singleton = FentonWeightForAgeData._(_parse());

  static Map<Sex, Map<int, _FentonWeightForAgeLMS>> _parse() => {
    Sex.male: fentonBoysWfA.map(
      (k, v) => MapEntry(
        k,
        _FentonWeightForAgeLMS(
          lms: LMS(l: v['l']! as num, m: v['m']! as num, s: v['s']! as num),
        ),
      ),
    ),
    Sex.female: fentonGirlsWfA.map(
      (k, v) => MapEntry(
        k,
        _FentonWeightForAgeLMS(
          lms: LMS(l: v['l']! as num, m: v['m']! as num, s: v['s']! as num),
        ),
      ),
    ),
  };

  final Map<Sex, Map<int, _FentonWeightForAgeLMS>> _data;
  @override
  Map<Sex, Map<int, _FentonWeightForAgeLMS>> get data => _data;

  @override
  String toString() => 'Infant Weight For Age Data($_data)';

  @override
  TimeUnit get unit => TimeUnit.weeks;
}

@freezed
sealed class FentonWeightForAge extends PostmenstrualAgeBasedResult
    with _$FentonWeightForAge {
  factory FentonWeightForAge({
    required Sex sex,
    required PostmenstrualAge age,
    required Mass weight,
  }) = _FentonWeightForAge;

  const FentonWeightForAge._();

  factory FentonWeightForAge.fromJson(Map<String, dynamic> json) =>
      _$FentonWeightForAgeFromJson(json);

  @override
  FentonWeightForAgeData get contextData => FentonWeightForAgeData();

  _FentonWeightForAgeLMS get _ageData =>
      contextData._data[sex]![postmenstrualAgeAtObservation.completedWeeks]!;

  num get _zScore => _ageData.lms.zScore(measurementResultInDefaultUnit);

  @override
  PostmenstrualAge get postmenstrualAgeAtObservation =>
      checkPostmenstrualAge(age, contextData: contextData);

  @override
  num zScore([Precision precision = Precision.two]) =>
      _zScore.precision(precision);

  @override
  num percentile([Precision precision = Precision.two]) =>
      (pnorm(_zScore) * 100).precision(precision);

  @override
  _FentonWeightForAgeLMS get lmsData => _ageData;

  @override
  num get measurementResultInDefaultUnit => weight.toKilogram.value;
}

class _FentonWeightForAgeLMS extends LMSContext {
  _FentonWeightForAgeLMS({required this.lms});
  @override
  final LMS lms;

  @override
  String toString() => 'Fenton Weight For Age LMS($lms)';
}
