part of '../standard.dart';

class WHOGrowthStandardsSubscapularSkinfoldForAgeData extends AgeBasedData {
  factory WHOGrowthStandardsSubscapularSkinfoldForAgeData() => _singleton;
  WHOGrowthStandardsSubscapularSkinfoldForAgeData._(this._data);

  static final _singleton = WHOGrowthStandardsSubscapularSkinfoldForAgeData._(
    _parse(),
  );

  static Map<Sex, Map<int, _WHOGrowthStandardsSubscapularSkinfoldForAgeLMS>>
  _parse() => _ssanthro.map(
    (k1, v1) => MapEntry(
      k1 == 1 ? Sex.male : Sex.female,
      (v1).map((k2, v2) {
        v2;
        final lms = LMS(
          l: v2['l'] as num,
          m: v2['m'] as num,
          s: v2['s'] as num,
        );
        return MapEntry(
          int.parse(k2),
          _WHOGrowthStandardsSubscapularSkinfoldForAgeLMS(lms: lms),
        );
      }),
    ),
  );

  final Map<Sex, Map<int, _WHOGrowthStandardsSubscapularSkinfoldForAgeLMS>>
  _data;
  @override
  Map<Sex, Map<int, _WHOGrowthStandardsSubscapularSkinfoldForAgeLMS>>
  get data => _data;

  @override
  String toString() => 'Subscapular Skinfold For Age Data($_data)';

  @override
  TimeUnit get unit => TimeUnit.days;
}

@freezed
sealed class WHOGrowthStandardsSubscapularSkinfoldForAge extends AgeBasedResult
    with _$WHOGrowthStandardsSubscapularSkinfoldForAge {
  factory WHOGrowthStandardsSubscapularSkinfoldForAge({
    required Sex sex,
    required Age age,
    required Length measurementResult,
  }) = _WHOGrowthStandardsSubscapularSkinfoldForAge;

  const WHOGrowthStandardsSubscapularSkinfoldForAge._();

  factory WHOGrowthStandardsSubscapularSkinfoldForAge.fromJson(
    Map<String, dynamic> json,
  ) => _$WHOGrowthStandardsSubscapularSkinfoldForAgeFromJson(json);

  @override
  WHOGrowthStandardsSubscapularSkinfoldForAgeData get contextData =>
      WHOGrowthStandardsSubscapularSkinfoldForAgeData();

  _WHOGrowthStandardsSubscapularSkinfoldForAgeLMS get _ageData =>
      contextData._data[sex]![ageAtObservationDate.ageInTotalByUnit(
        contextData.unit,
      )]!;

  num get _zScore =>
      _ageData.lms.adjustedZScore(measurementResultInDefaultUnit);

  @override
  Age get ageAtObservationDate => checkAge(age, contextData: contextData);

  @override
  num zScore([Precision precision = Precision.two]) =>
      _zScore.precision(precision);

  @override
  num percentile([Precision precision = Precision.two]) =>
      (pnorm(_zScore) * 100).precision(precision);

  @override
  _WHOGrowthStandardsSubscapularSkinfoldForAgeLMS get lmsData => _ageData;

  @override
  num get measurementResultInDefaultUnit =>
      measurementResult.toMillimeter.value;
}

class _WHOGrowthStandardsSubscapularSkinfoldForAgeLMS extends LMSContext {
  _WHOGrowthStandardsSubscapularSkinfoldForAgeLMS({required this.lms});
  @override
  final LMS lms;

  @override
  String toString() => 'Subscapular Skinfold For Age LMS($lms)';
}
