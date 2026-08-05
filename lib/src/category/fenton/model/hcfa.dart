part of '../fenton.dart';

class FentonHeadCircumferenceForAgeData extends AgeBasedData {
  factory FentonHeadCircumferenceForAgeData() => _singleton;
  FentonHeadCircumferenceForAgeData._(this._data);

  static final _singleton = FentonHeadCircumferenceForAgeData._(_parse());

  static Map<Sex, Map<int, _FentonHeadCircumferenceForAgeLMS>> _parse() => {
    Sex.male: fentonBoysHCfA.map(
      (k, v) => MapEntry(
        k,
        _FentonHeadCircumferenceForAgeLMS(
          lms: LMS(l: v['l']! as num, m: v['m']! as num, s: v['s']! as num),
        ),
      ),
    ),
    Sex.female: fentonGirlsHCfA.map(
      (k, v) => MapEntry(
        k,
        _FentonHeadCircumferenceForAgeLMS(
          lms: LMS(l: v['l']! as num, m: v['m']! as num, s: v['s']! as num),
        ),
      ),
    ),
  };

  final Map<Sex, Map<int, _FentonHeadCircumferenceForAgeLMS>> _data;
  @override
  Map<Sex, Map<int, _FentonHeadCircumferenceForAgeLMS>> get data => _data;

  @override
  String toString() => 'Infant Head Circumference For Age Data($_data)';

  @override
  TimeUnit get unit => TimeUnit.weeks;
}

@freezed
sealed class FentonHeadCircumferenceForAge extends PostmenstrualAgeBasedResult
    with _$FentonHeadCircumferenceForAge {
  factory FentonHeadCircumferenceForAge({
    required Sex sex,
    required PostmenstrualAge age,
    required Length measurementResult,
  }) = _FentonHeadCircumferenceForAge;

  const FentonHeadCircumferenceForAge._();

  factory FentonHeadCircumferenceForAge.fromJson(Map<String, dynamic> json) =>
      _$FentonHeadCircumferenceForAgeFromJson(json);

  @override
  FentonHeadCircumferenceForAgeData get contextData =>
      FentonHeadCircumferenceForAgeData();

  _FentonHeadCircumferenceForAgeLMS get _ageData =>
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
  _FentonHeadCircumferenceForAgeLMS get lmsData => _ageData;

  @override
  num get measurementResultInDefaultUnit =>
      measurementResult.toCentimeter.value.toDouble();
}

class _FentonHeadCircumferenceForAgeLMS extends LMSContext {
  _FentonHeadCircumferenceForAgeLMS({required this.lms});
  @override
  final LMS lms;

  @override
  String toString() => 'Fenton Head Circumference For Age LMS(lms: $lms)';
}
