part of '../fenton.dart';

class FentonHeadCircumferenceForAgeData extends AgeBasedData {
  factory FentonHeadCircumferenceForAgeData() => _singleton;
  FentonHeadCircumferenceForAgeData._(this._data);

  static final _singleton = FentonHeadCircumferenceForAgeData._(_parse());

  static Map<Sex, Map<int, _FentonHeadCircumferenceForAgeLMS>> _parse() {
    final map = fentonHCfA.map((k1, v1) {
      v1;
      final lms = LMS(l: v1['l'] as num, m: v1['m'] as num, s: v1['s'] as num);
      return MapEntry(k1, _FentonHeadCircumferenceForAgeLMS(lms: lms));
    });
    return {Sex.male: map, Sex.female: map};
  }

  final Map<Sex, Map<int, _FentonHeadCircumferenceForAgeLMS>> _data;
  @override
  Map<Sex, Map<int, _FentonHeadCircumferenceForAgeLMS>> get data => _data;

  @override
  String toString() => 'Infant Head Circumference For Age Data($_data)';

  @override
  TimeUnit get unit => TimeUnit.weeks;
}

@freezed
sealed class FentonHeadCircumferenceForAge extends AgeBasedResult
    with _$FentonHeadCircumferenceForAge {
  factory FentonHeadCircumferenceForAge({
    required Age age,
    required Length measurementResult,
  }) = _FentonHeadCircumferenceForAge;

  const FentonHeadCircumferenceForAge._();

  factory FentonHeadCircumferenceForAge.fromJson(Map<String, dynamic> json) =>
      _$FentonHeadCircumferenceForAgeFromJson(json);

  @override
  FentonHeadCircumferenceForAgeData get contextData =>
      FentonHeadCircumferenceForAgeData();

  _FentonHeadCircumferenceForAgeLMS get _ageData =>
      contextData._data.values.first[ageAtObservationDate.ageInTotalByUnit(
        contextData.unit,
      )]!;

  num get _zScore => _ageData.lms.zScore(measurementResultInDefaultUnit);

  @override
  Age get ageAtObservationDate => checkAge(age, contextData: contextData);

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
      measurementResult.toCentimeter.value;
}

class _FentonHeadCircumferenceForAgeLMS extends LMSContext {
  _FentonHeadCircumferenceForAgeLMS({required this.lms});
  @override
  final LMS lms;

  @override
  String toString() => 'Fenton Head Circumference For Age LMS(lms: $lms)';
}
