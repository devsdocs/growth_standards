part of '../standard.dart';

class WHOGrowthStandardsSubscapularSkinfoldForAgeData {
  factory WHOGrowthStandardsSubscapularSkinfoldForAgeData() => _singleton;
  WHOGrowthStandardsSubscapularSkinfoldForAgeData._(this._data);

  static final _singleton =
      WHOGrowthStandardsSubscapularSkinfoldForAgeData._(_parse());

  static Map<Sex, _SubscapularSkinfoldAgeGender> _parse() =>
      _ssanthro.toJsonObjectAsMap.map(
        (k1, v1) => MapEntry(
          k1 == '1' ? Sex.male : Sex.female,
          _SubscapularSkinfoldAgeGender(
            ageData: (v1 as Map<String, dynamic>).map((k2, v2) {
              v2 as Map<String, dynamic>;
              final lms =
                  LMS(l: v2['l'] as num, m: v2['m'] as num, s: v2['s'] as num);
              return MapEntry(
                int.parse(k2),
                _WHOGrowthStandardsSubscapularSkinfoldForAgeLMS(
                  lms: lms,
                  percentileCutOff: lms.percentileCutOff,
                  standardDeviationCutOff: lms.stDevCutOff,
                ),
              );
            }),
          ),
        ),
      );

  final Map<Sex, _SubscapularSkinfoldAgeGender> _data;
  Map<Sex, _SubscapularSkinfoldAgeGender> get data => _data;

  @override
  String toString() => 'Subscapular Skinfold For Age Data($_data)';
}

@freezed
sealed class WHOGrowthStandardsSubscapularSkinfoldForAge
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

  _SubscapularSkinfoldAgeGender get _maleData =>
      _subscapularSkinfoldData._data[Sex.male]!;
  _SubscapularSkinfoldAgeGender get _femaleData =>
      _subscapularSkinfoldData._data[Sex.female]!;

  _WHOGrowthStandardsSubscapularSkinfoldForAgeLMS get _ageData =>
      (sex == Sex.male ? _maleData : _femaleData)
          .ageData[ageAtObservationDate.ageInTotalDaysByNow]!;

  num get _zScore =>
      _ageData.lms.adjustedZScore(measurementResult.toCentimeter.value);

  Age get ageAtObservationDate => checkObservationDate(age, observationDate);

  num zScore([
    Precision precision = Precision.ten,
  ]) =>
      _zScore.precision(precision);

  num percentile([
    Precision precision = Precision.ten,
  ]) =>
      (pnorm(_zScore) * 100).precision(precision);

  _WHOGrowthStandardsSubscapularSkinfoldForAgeLMS get ageData => _ageData;
}

class _SubscapularSkinfoldAgeGender {
  _SubscapularSkinfoldAgeGender({required this.ageData});
  final Map<int, _WHOGrowthStandardsSubscapularSkinfoldForAgeLMS> ageData;
  @override
  String toString() => 'Gender Data($ageData)';
}

class _WHOGrowthStandardsSubscapularSkinfoldForAgeLMS {
  _WHOGrowthStandardsSubscapularSkinfoldForAgeLMS({
    required this.lms,
    required this.percentileCutOff,
    required this.standardDeviationCutOff,
  });
  final LMS lms;

  final ZScoreCutOff standardDeviationCutOff;

  final PercentileCutOff percentileCutOff;

  @override
  String toString() =>
      'Age Data(LMS: $lms, Standard Deviation CutOff: $standardDeviationCutOff, Percentile CutOff: $percentileCutOff)';
}
