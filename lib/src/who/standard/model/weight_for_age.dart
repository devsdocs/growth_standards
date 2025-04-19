part of '../standard.dart';

class WHOGrowthStandardsWeightForAgeData extends BaseData {
  factory WHOGrowthStandardsWeightForAgeData() => _singleton;
  WHOGrowthStandardsWeightForAgeData._(this._data);

  static final _singleton = WHOGrowthStandardsWeightForAgeData._(_parse());

  static Map<Sex, Map<int, _WHOGrowthStandardsWeightForAgeLMS>> _parse() =>
      _weianthro.toJsonObjectAsMap.map(
        (k1, v1) => MapEntry(
            k1 == '1' ? Sex.male : Sex.female,
            (v1 as Map<String, dynamic>).map((k2, v2) {
              v2 as Map<String, dynamic>;
              final lms =
                  LMS(l: v2['l'] as num, m: v2['m'] as num, s: v2['s'] as num);
              return MapEntry(
                int.parse(k2),
                _WHOGrowthStandardsWeightForAgeLMS(
                  lms: lms,
                ),
              );
            })),
      );
  final Map<Sex, Map<int, _WHOGrowthStandardsWeightForAgeLMS>> _data;
  @override
  Map<Sex, Map<int, _WHOGrowthStandardsWeightForAgeLMS>> get data => _data;

  @override
  String toString() => 'Weight For Age Data($_data)';
}

@freezed
sealed class WHOGrowthStandardsWeightForAge extends AgeBasedResult
    with _$WHOGrowthStandardsWeightForAge {
  @Assert(
    'age.ageInTotalDaysByNow >= 0 && age.ageInTotalDaysByNow <= 1856',
    'Age must be in range of 0 - 1856 days',
  )
  @Assert(
    'observationDate == null || observationDate.isSameOrBefore(Date.today()) || observationDate.isSameOrAfter(age.dateOfBirth)',
    'Observation date is impossible, because happen after today or before birth',
  )
  factory WHOGrowthStandardsWeightForAge({
    Date? observationDate,
    required Sex sex,
    @Default(false) bool oedemaExist,
    required Age age,
    required Mass weight,
  }) = _WHOGrowthStandardsWeightForAge;

  const WHOGrowthStandardsWeightForAge._();

  factory WHOGrowthStandardsWeightForAge.fromJson(Map<String, dynamic> json) =>
      _$WHOGrowthStandardsWeightForAgeFromJson(json);

  WHOGrowthStandardsWeightForAgeData get _weightForAgeData =>
      WHOGrowthStandardsWeightForAgeData();

  Map<int, _WHOGrowthStandardsWeightForAgeLMS> get _maleData =>
      _weightForAgeData._data[Sex.male]!;
  Map<int, _WHOGrowthStandardsWeightForAgeLMS> get _femaleData =>
      _weightForAgeData._data[Sex.female]!;

  _WHOGrowthStandardsWeightForAgeLMS get _ageData => (sex == Sex.male
      ? _maleData
      : _femaleData)[ageAtObservationDate.ageInTotalDaysByNow]!;

  num get _zScore => _ageData.lms.adjustedZScore(weight.toKilogram.value);

  @override
  Age get ageAtObservationDate => checkObservationDate(age, observationDate);

  @override
  num zScore([
    Precision precision = Precision.ten,
  ]) =>
      oedemaExist ? double.nan : _zScore.precision(precision);

  @override
  num percentile([
    Precision precision = Precision.ten,
  ]) =>
      oedemaExist ? double.nan : (pnorm(_zScore) * 100).precision(precision);

  @override
  _WHOGrowthStandardsWeightForAgeLMS get ageData => _ageData;
}

class _WHOGrowthStandardsWeightForAgeLMS extends LMSBasedResult {
  _WHOGrowthStandardsWeightForAgeLMS({
    required this.lms,
  });
  @override
  final LMS lms;

  @override
  String toString() => 'Weight For Age LMS($lms)';
}
