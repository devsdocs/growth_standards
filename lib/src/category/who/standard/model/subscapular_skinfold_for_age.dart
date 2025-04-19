part of '../standard.dart';

class WHOGrowthStandardsSubscapularSkinfoldForAgeData extends BaseData {
  factory WHOGrowthStandardsSubscapularSkinfoldForAgeData() => _singleton;
  WHOGrowthStandardsSubscapularSkinfoldForAgeData._(this._data);

  static final _singleton =
      WHOGrowthStandardsSubscapularSkinfoldForAgeData._(_parse());

  static Map<Sex, Map<int, _WHOGrowthStandardsSubscapularSkinfoldForAgeLMS>>
      _parse() => _ssanthro.toJsonObjectAsMap.map(
            (k1, v1) => MapEntry(
                k1 == '1' ? Sex.male : Sex.female,
                (v1 as Map<String, dynamic>).map((k2, v2) {
                  v2 as Map<String, dynamic>;
                  final lms = LMS(
                      l: v2['l'] as num, m: v2['m'] as num, s: v2['s'] as num);
                  return MapEntry(
                    int.parse(k2),
                    _WHOGrowthStandardsSubscapularSkinfoldForAgeLMS(
                      lms: lms,
                    ),
                  );
                })),
          );

  final Map<Sex, Map<int, _WHOGrowthStandardsSubscapularSkinfoldForAgeLMS>>
      _data;
  @override
  Map<Sex, Map<int, _WHOGrowthStandardsSubscapularSkinfoldForAgeLMS>>
      get data => _data;

  @override
  String toString() => 'Subscapular Skinfold For Age Data($_data)';
}

@freezed
sealed class WHOGrowthStandardsSubscapularSkinfoldForAge extends AgeBasedResult
    with _$WHOGrowthStandardsSubscapularSkinfoldForAge {
  @Assert(
    'age.ageInTotalDaysByNow >= 91 && age.ageInTotalDaysByNow <= 1856',
    'Age must be in range of 91 - 1856 days',
  )
  @Assert(
    'observationDate == null || observationDate.isSameOrBefore(Date.today()) || observationDate.isSameOrAfter(age.dateOfBirth)',
    'Observation date is impossible, because happen after today or before birth',
  )
  @Assert(
    'observationDate == null || observationDate.isSameOrAfter(age.dateAtDaysAfterBirth(91)) ',
    'Observation date is impossible, because happen after today or before birth',
  )
  factory WHOGrowthStandardsSubscapularSkinfoldForAge({
    Date? observationDate,
    required Sex sex,
    required Age age,
    required Length measurementResult,
  }) = _WHOGrowthStandardsSubscapularSkinfoldForAge;

  const WHOGrowthStandardsSubscapularSkinfoldForAge._();

  factory WHOGrowthStandardsSubscapularSkinfoldForAge.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$WHOGrowthStandardsSubscapularSkinfoldForAgeFromJson(json);

  WHOGrowthStandardsSubscapularSkinfoldForAgeData
      get _subscapularSkinfoldData =>
          WHOGrowthStandardsSubscapularSkinfoldForAgeData();

  Map<int, _WHOGrowthStandardsSubscapularSkinfoldForAgeLMS> get _maleData =>
      _subscapularSkinfoldData._data[Sex.male]!;
  Map<int, _WHOGrowthStandardsSubscapularSkinfoldForAgeLMS> get _femaleData =>
      _subscapularSkinfoldData._data[Sex.female]!;

  _WHOGrowthStandardsSubscapularSkinfoldForAgeLMS get _ageData =>
      (sex == Sex.male
          ? _maleData
          : _femaleData)[ageAtObservationDate.ageInTotalDaysByNow]!;

  num get _zScore =>
      _ageData.lms.adjustedZScore(measurementResultInDefaultUnit);

  @override
  Age get ageAtObservationDate => checkObservationDate(age, observationDate);

  @override
  num zScore([
    Precision precision = Precision.ten,
  ]) =>
      _zScore.precision(precision);

  @override
  num percentile([
    Precision precision = Precision.ten,
  ]) =>
      (pnorm(_zScore) * 100).precision(precision);

  @override
  _WHOGrowthStandardsSubscapularSkinfoldForAgeLMS get ageData => _ageData;

  @override
  num get measurementResultInDefaultUnit =>
      measurementResult.toCentimeter.value;
}

class _WHOGrowthStandardsSubscapularSkinfoldForAgeLMS extends LMSBasedResult {
  _WHOGrowthStandardsSubscapularSkinfoldForAgeLMS({
    required this.lms,
  });
  @override
  final LMS lms;

  @override
  String toString() => 'Subscapular Skinfold For Age LMS($lms)';
}
