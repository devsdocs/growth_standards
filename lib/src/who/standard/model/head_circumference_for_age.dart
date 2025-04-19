part of '../standard.dart';

class WHOGrowthStandardsHeadCircumferenceForAgeData extends BaseData {
  factory WHOGrowthStandardsHeadCircumferenceForAgeData() => _singleton;
  WHOGrowthStandardsHeadCircumferenceForAgeData._(this._data);

  static final _singleton =
      WHOGrowthStandardsHeadCircumferenceForAgeData._(_parse());

  static Map<Sex, Map<int, _WHOGrowthStandardsHeadCircumferenceForAgeLMS>>
      _parse() => _hcanthro.toJsonObjectAsMap.map(
            (k1, v1) => MapEntry(
              k1 == '1' ? Sex.male : Sex.female,
              (v1 as Map<String, dynamic>).map((k2, v2) {
                v2 as Map<String, dynamic>;
                final lms = LMS(
                    l: v2['l'] as num, m: v2['m'] as num, s: v2['s'] as num);
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
          );

  final Map<Sex, Map<int, _WHOGrowthStandardsHeadCircumferenceForAgeLMS>> _data;
  @override
  Map<Sex, Map<int, _WHOGrowthStandardsHeadCircumferenceForAgeLMS>> get data =>
      _data;

  @override
  String toString() => 'Head Circumference For Age Data($_data)';
}

@freezed
sealed class WHOGrowthStandardsHeadCircumferenceForAge extends AgeBasedResult
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
    Date? observationDate,
    required Sex sex,
    required Age age,
    required Length measurementResult,
  }) = _WHOGrowthStandardsHeadCircumferenceForAge;

  const WHOGrowthStandardsHeadCircumferenceForAge._();

  factory WHOGrowthStandardsHeadCircumferenceForAge.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$WHOGrowthStandardsHeadCircumferenceForAgeFromJson(json);

  WHOGrowthStandardsHeadCircumferenceForAgeData get _headCircumferenceData =>
      WHOGrowthStandardsHeadCircumferenceForAgeData();

  Map<int, _WHOGrowthStandardsHeadCircumferenceForAgeLMS> get _maleData =>
      _headCircumferenceData._data[Sex.male]!;
  Map<int, _WHOGrowthStandardsHeadCircumferenceForAgeLMS> get _femaleData =>
      _headCircumferenceData._data[Sex.female]!;

  _WHOGrowthStandardsHeadCircumferenceForAgeLMS get _ageData => (sex == Sex.male
      ? _maleData
      : _femaleData)[ageAtObservationDate.ageInTotalDaysByNow]!;

  num get _zScore => _ageData.lms.zScore(measurementResult.toCentimeter.value);

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
  _WHOGrowthStandardsHeadCircumferenceForAgeLMS get ageData => _ageData;
}

class _WHOGrowthStandardsHeadCircumferenceForAgeLMS extends LMSBasedResult {
  _WHOGrowthStandardsHeadCircumferenceForAgeLMS({
    required this.lms,
    required this.percentileCutOff,
    required this.standardDeviationCutOff,
  });
  @override
  final LMS lms;

  @override
  final ZScoreCutOff standardDeviationCutOff;

  @override
  final PercentileCutOff percentileCutOff;

  @override
  String toString() =>
      'Age Data(LMS: $lms, Standard Deviation CutOff: $standardDeviationCutOff, Percentile CutOff: $percentileCutOff)';
}
