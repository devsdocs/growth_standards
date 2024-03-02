part of '../standard.dart';

class WHOGrowthStandardsHeadCircumferenceForAgeData {
  factory WHOGrowthStandardsHeadCircumferenceForAgeData() => _singleton;
  WHOGrowthStandardsHeadCircumferenceForAgeData._(this._data);

  static final _singleton =
      WHOGrowthStandardsHeadCircumferenceForAgeData._(_parse());

  static Map<Sex, _WHOGrowthStandardsHeadCircumferenceForAgeGender> _parse() =>
      _hcanthro.toJsonObjectAsMap.map(
        (k1, v1) => MapEntry(
          k1 == '1' ? Sex.male : Sex.female,
          _WHOGrowthStandardsHeadCircumferenceForAgeGender(
            ageData: (v1 as Map<String, dynamic>).map((k2, v2) {
              v2 as Map<String, dynamic>;
              final lms =
                  LMS(l: v2['l'] as num, m: v2['m'] as num, s: v2['s'] as num);
              return MapEntry(
                int.parse(k2),
                _WHOGrowthStandardsHeadCircumferenceForAgeLMS(
                  lms: lms,
                  percentileCutOff: lms.percentileCutOff,
                  standardDeviationCutOff: lms.stDevCutOff,
                ),
              );
            }),
          ),
        ),
      );

  final Map<Sex, _WHOGrowthStandardsHeadCircumferenceForAgeGender> _data;
  Map<Sex, _WHOGrowthStandardsHeadCircumferenceForAgeGender> get data => _data;

  @override
  String toString() => 'Head Circumference For Age Data($_data)';
}

@freezed
class WHOGrowthStandardsHeadCircumferenceForAge
    with _$WHOGrowthStandardsHeadCircumferenceForAge {
  @Assert(
    'age.ageInTotalDaysByNow >= 0 && age.ageInTotalDaysByNow <= 1856',
    'Age must be in range of 0 - 1856 days',
  )
  @Assert(
    'observationDate == null || observationDate.isSameOrBefore(Date.today()) || observationDate.isSameOrAfter(age.dateOfBirth)',
    'Observation date is impossible, because happen after today or before birth',
  )
  factory WHOGrowthStandardsHeadCircumferenceForAge({
    @DateConverter() Date? observationDate,
    required Sex sex,
    @AgeConverter() required Age age,
    @LengthConverter() required Length measurementResult,
  }) = _WHOGrowthStandardsHeadCircumferenceForAge;

  const WHOGrowthStandardsHeadCircumferenceForAge._();

  factory WHOGrowthStandardsHeadCircumferenceForAge.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$WHOGrowthStandardsHeadCircumferenceForAgeFromJson(json);

  WHOGrowthStandardsHeadCircumferenceForAgeData get _headCircumferenceData =>
      WHOGrowthStandardsHeadCircumferenceForAgeData();

  _WHOGrowthStandardsHeadCircumferenceForAgeGender get _maleData =>
      _headCircumferenceData._data[Sex.male]!;
  _WHOGrowthStandardsHeadCircumferenceForAgeGender get _femaleData =>
      _headCircumferenceData._data[Sex.female]!;

  _WHOGrowthStandardsHeadCircumferenceForAgeLMS get _ageData =>
      (sex == Sex.male ? _maleData : _femaleData)
          .ageData[_ageAtObservationDate.ageInTotalDaysByNow]!;

  num get _zScore => _ageData.lms.zScore(measurementResult.toCentimeter.value);

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

class _WHOGrowthStandardsHeadCircumferenceForAgeGender {
  _WHOGrowthStandardsHeadCircumferenceForAgeGender({required this.ageData});

  final Map<int, _WHOGrowthStandardsHeadCircumferenceForAgeLMS> ageData;

  @override
  String toString() => 'Gender Data($ageData)';
}

class _WHOGrowthStandardsHeadCircumferenceForAgeLMS {
  _WHOGrowthStandardsHeadCircumferenceForAgeLMS({
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
