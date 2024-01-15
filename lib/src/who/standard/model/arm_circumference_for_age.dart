part of '../standard.dart';

class WHOGrowthStandardsArmCircumferenceForAgeData {
  factory WHOGrowthStandardsArmCircumferenceForAgeData() => _singleton;
  const WHOGrowthStandardsArmCircumferenceForAgeData._(this._data);

  static final _singleton =
      WHOGrowthStandardsArmCircumferenceForAgeData._(_parse());

  static Map<Sex, _WHOGrowthStandardsArmCircumferenceForAgeGender> _parse() =>
      _acanthro.toJsonObjectAsMap.map(
        (k1, v1) => MapEntry(
          k1 == '1' ? Sex.male : Sex.female,
          _WHOGrowthStandardsArmCircumferenceForAgeGender(
            ageData: (v1 as Map<String, dynamic>).map((k2, v2) {
              v2 as Map<String, dynamic>;
              final lms =
                  LMS(l: v2['l'] as num, m: v2['m'] as num, s: v2['s'] as num);
              return MapEntry(
                int.parse(k2),
                _WHOGrowthStandardsArmCircumferenceForAgeLMS(
                  lms: lms,
                  percentileCutOff: lms.percentileCutOff,
                  standardDeviationCutOff: lms.stDevCutOff,
                ),
              );
            }),
          ),
        ),
      );

  final Map<Sex, _WHOGrowthStandardsArmCircumferenceForAgeGender> _data;

  Map<Sex, _WHOGrowthStandardsArmCircumferenceForAgeGender> get data => _data;

  @override
  String toString() => 'Arm Circumference For Age Data($_data)';
}

@freezed
class WHOGrowthStandardsArmCircumferenceForAge
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
    @LengthConverter() required Length measurementResult,
  }) = _WHOGrowthStandardsArmCircumferenceForAge;

  const WHOGrowthStandardsArmCircumferenceForAge._();

  factory WHOGrowthStandardsArmCircumferenceForAge.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$WHOGrowthStandardsArmCircumferenceForAgeFromJson(json);

  WHOGrowthStandardsArmCircumferenceForAgeData get _armCircumferenceData =>
      WHOGrowthStandardsArmCircumferenceForAgeData();

  _WHOGrowthStandardsArmCircumferenceForAgeGender get _maleData =>
      _armCircumferenceData._data[Sex.male]!;
  _WHOGrowthStandardsArmCircumferenceForAgeGender get _femaleData =>
      _armCircumferenceData._data[Sex.female]!;

  _WHOGrowthStandardsArmCircumferenceForAgeLMS get _ageData =>
      (sex == Sex.male ? _maleData : _femaleData)
          .ageData[_ageAtObservationDate.ageInTotalDaysByNow]!;

  num get _zScore => _ageData.lms.adjustedZScore(measurementResult.value!);

  Age get _ageAtObservationDate => checkObservationDate(age, observationDate);

  num zScore([
    Precision precision = Precision.ten,
  ]) =>
      _zScore.precision(precision);

  num percentile([
    Precision precision = Precision.ten,
  ]) =>
      (pnorm(_zScore) * 100).precision(precision);
}

class _WHOGrowthStandardsArmCircumferenceForAgeGender {
  _WHOGrowthStandardsArmCircumferenceForAgeGender({required this.ageData});

  final Map<int, _WHOGrowthStandardsArmCircumferenceForAgeLMS> ageData;

  @override
  String toString() => 'Gender Data($ageData)';
}

class _WHOGrowthStandardsArmCircumferenceForAgeLMS {
  _WHOGrowthStandardsArmCircumferenceForAgeLMS({
    required this.lms,
    required this.standardDeviationCutOff,
    required this.percentileCutOff,
  });
  final LMS lms;

  final ZScoreCutOff standardDeviationCutOff;

  final PercentileCutOff percentileCutOff;

  @override
  String toString() =>
      'Age Data(LMS: $lms, Standard Deviation CutOff: $standardDeviationCutOff, Percentile CutOff: $percentileCutOff)';
}
