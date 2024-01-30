part of '../standard.dart';

class WHOGrowthStandardsWeightForAgeData {
  factory WHOGrowthStandardsWeightForAgeData() => _singleton;
  WHOGrowthStandardsWeightForAgeData._(this._data);

  static final _singleton = WHOGrowthStandardsWeightForAgeData._(_parse());

  static Map<Sex, _WHOGrowthStandardsWeightForAgeGender> _parse() =>
      _weianthro.toJsonObjectAsMap.map(
        (k1, v1) => MapEntry(
          k1 == '1' ? Sex.male : Sex.female,
          _WHOGrowthStandardsWeightForAgeGender(
            ageData: (v1 as Map<String, dynamic>).map((k2, v2) {
              v2 as Map<String, dynamic>;
              final lms =
                  LMS(l: v2['l'] as num, m: v2['m'] as num, s: v2['s'] as num);
              return MapEntry(
                int.parse(k2),
                _WHOGrowthStandardsWeightForAgeLMS(
                  lms: lms,
                  percentileCutOff: lms.percentileCutOff,
                  standardDeviationCutOff: lms.stDevCutOff,
                ),
              );
            }),
          ),
        ),
      );
  final Map<Sex, _WHOGrowthStandardsWeightForAgeGender> _data;
  Map<Sex, _WHOGrowthStandardsWeightForAgeGender> get data => _data;

  @override
  String toString() => 'Weight For Age Data($_data)';
}

@freezed
class WHOGrowthStandardsWeightForAge with _$WHOGrowthStandardsWeightForAge {
  @Assert(
    'age.ageInTotalDaysByNow >= 0 && age.ageInTotalDaysByNow <= 1856',
    'Age must be in range of 0 - 1856 days',
  )
  @Assert(
    'observationDate == null || observationDate.isSameOrBefore(Date.today()) || observationDate.isSameOrAfter(age.dateOfBirth)',
    'Observation date is impossible, because happen after today or before birth',
  )
  factory WHOGrowthStandardsWeightForAge({
    @DateConverter() Date? observationDate,
    required Sex sex,
    @AgeConverter() required Age age,
    @MassConverter() required Mass weight,
  }) = _WHOGrowthStandardsWeightForAge;

  const WHOGrowthStandardsWeightForAge._();

  factory WHOGrowthStandardsWeightForAge.fromJson(Map<String, dynamic> json) =>
      _$WHOGrowthStandardsWeightForAgeFromJson(json);

  WHOGrowthStandardsWeightForAgeData get _weightForAgeData =>
      WHOGrowthStandardsWeightForAgeData();

  _WHOGrowthStandardsWeightForAgeGender get _maleData =>
      _weightForAgeData._data[Sex.male]!;
  _WHOGrowthStandardsWeightForAgeGender get _femaleData =>
      _weightForAgeData._data[Sex.female]!;

  _WHOGrowthStandardsWeightForAgeLMS get _ageData =>
      (sex == Sex.male ? _maleData : _femaleData)
          .ageData[_ageAtObservationDate.ageInTotalDaysByNow]!;

  num get _zScore => _ageData.lms.adjustedZScore(weight.toKilogram.value);

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

class _WHOGrowthStandardsWeightForAgeGender {
  _WHOGrowthStandardsWeightForAgeGender({required this.ageData});

  final Map<int, _WHOGrowthStandardsWeightForAgeLMS> ageData;
  @override
  String toString() => 'Gender Data($ageData)';
}

class _WHOGrowthStandardsWeightForAgeLMS {
  _WHOGrowthStandardsWeightForAgeLMS({
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
