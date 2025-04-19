part of '../standard.dart';

class WHOGrowthStandardsArmCircumferenceForAgeData extends BaseData {
  factory WHOGrowthStandardsArmCircumferenceForAgeData() => _singleton;
  const WHOGrowthStandardsArmCircumferenceForAgeData._(this._data);

  static final _singleton =
      WHOGrowthStandardsArmCircumferenceForAgeData._(_parse());

  static Map<Sex, Map<num, _WHOGrowthStandardsArmCircumferenceForAgeLMS>>
      _parse() => _acanthro.toJsonObjectAsMap.map(
            (k1, v1) => MapEntry(
              k1 == '1' ? Sex.male : Sex.female,
              (v1 as Map<String, dynamic>).map((k2, v2) {
                v2 as Map<String, dynamic>;
                final lms = LMS(
                    l: v2['l'] as num, m: v2['m'] as num, s: v2['s'] as num);
                return MapEntry(
                  int.parse(k2),
                  _WHOGrowthStandardsArmCircumferenceForAgeLMS(
                    lms: lms,
                  ),
                );
              }),
            ),
          );

  final Map<Sex, Map<num, _WHOGrowthStandardsArmCircumferenceForAgeLMS>> _data;

  @override
  Map<Sex, Map<num, _WHOGrowthStandardsArmCircumferenceForAgeLMS>> get data =>
      _data;

  @override
  String toString() => 'Arm Circumference For Age Data($_data)';
}

@freezed
sealed class WHOGrowthStandardsArmCircumferenceForAge extends AgeBasedResult
    with _$WHOGrowthStandardsArmCircumferenceForAge {
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
  factory WHOGrowthStandardsArmCircumferenceForAge({
    Date? observationDate,
    required Sex sex,
    required Age age,
    required Length measurementResult,
  }) = _WHOGrowthStandardsArmCircumferenceForAge;

  const WHOGrowthStandardsArmCircumferenceForAge._();

  factory WHOGrowthStandardsArmCircumferenceForAge.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$WHOGrowthStandardsArmCircumferenceForAgeFromJson(json);

  WHOGrowthStandardsArmCircumferenceForAgeData get _armCircumferenceData =>
      WHOGrowthStandardsArmCircumferenceForAgeData();

  Map<num, _WHOGrowthStandardsArmCircumferenceForAgeLMS> get _maleData =>
      _armCircumferenceData._data[Sex.male]!;
  Map<num, _WHOGrowthStandardsArmCircumferenceForAgeLMS> get _femaleData =>
      _armCircumferenceData._data[Sex.female]!;

  _WHOGrowthStandardsArmCircumferenceForAgeLMS get _ageData => (sex == Sex.male
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
  _WHOGrowthStandardsArmCircumferenceForAgeLMS get ageData => _ageData;

  @override
  num get measurementResultInDefaultUnit =>
      measurementResult.toCentimeter.value;
}

class _WHOGrowthStandardsArmCircumferenceForAgeLMS extends LMSBasedResult {
  _WHOGrowthStandardsArmCircumferenceForAgeLMS({
    required this.lms,
  });
  @override
  final LMS lms;

  @override
  String toString() => 'Arm Circumference For Age LMS($lms)';
}
