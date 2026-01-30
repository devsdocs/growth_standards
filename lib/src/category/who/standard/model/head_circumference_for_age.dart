part of '../standard.dart';

class WHOGrowthStandardsHeadCircumferenceForAgeData extends AgeBasedData {
  factory WHOGrowthStandardsHeadCircumferenceForAgeData() => _singleton;
  WHOGrowthStandardsHeadCircumferenceForAgeData._(this._data);

  static final _singleton = WHOGrowthStandardsHeadCircumferenceForAgeData._(
    _parse(),
  );

  static Map<Sex, Map<int, _WHOGrowthStandardsHeadCircumferenceForAgeLMS>>
  _parse() => _hcanthro.map(
    (k1, v1) => MapEntry(
      k1 == 1 ? Sex.male : Sex.female,
      v1.map((k2, v2) {
        final lms = LMS(l: v2['l']!, m: v2['m']!, s: v2['s']!);
        return MapEntry(
          k2,
          _WHOGrowthStandardsHeadCircumferenceForAgeLMS(lms: lms),
        );
      }),
    ),
  );

  final Map<Sex, Map<int, _WHOGrowthStandardsHeadCircumferenceForAgeLMS>> _data;
  @override
  Map<Sex, Map<int, _WHOGrowthStandardsHeadCircumferenceForAgeLMS>> get data =>
      _data;

  @override
  String toString() => 'Head Circumference For Age Data($_data)';

  @override
  TimeUnit get unit => TimeUnit.days;
}

@freezed
sealed class WHOGrowthStandardsHeadCircumferenceForAge extends AgeBasedResult
    with _$WHOGrowthStandardsHeadCircumferenceForAge {
  factory WHOGrowthStandardsHeadCircumferenceForAge({
    required Sex sex,
    required Age age,
    required Length measurementResult,
  }) = _WHOGrowthStandardsHeadCircumferenceForAge;

  const WHOGrowthStandardsHeadCircumferenceForAge._();

  factory WHOGrowthStandardsHeadCircumferenceForAge.fromJson(
    Map<String, dynamic> json,
  ) => _$WHOGrowthStandardsHeadCircumferenceForAgeFromJson(json);

  @override
  WHOGrowthStandardsHeadCircumferenceForAgeData get contextData =>
      WHOGrowthStandardsHeadCircumferenceForAgeData();

  _WHOGrowthStandardsHeadCircumferenceForAgeLMS get _ageData =>
      contextData._data[sex]![ageAtObservationDate.ageInTotalByUnit(
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
  _WHOGrowthStandardsHeadCircumferenceForAgeLMS get lmsData => _ageData;

  @override
  num get measurementResultInDefaultUnit =>
      measurementResult.toCentimeter.value;
}

class _WHOGrowthStandardsHeadCircumferenceForAgeLMS extends LMSContext {
  _WHOGrowthStandardsHeadCircumferenceForAgeLMS({required this.lms});
  @override
  final LMS lms;

  @override
  String toString() => 'Head Circumference For Age LMS($lms)';
}
