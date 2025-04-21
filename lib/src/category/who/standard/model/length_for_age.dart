part of '../standard.dart';

class WHOGrowthStandardsLengthForAgeData extends BaseData {
  factory WHOGrowthStandardsLengthForAgeData() => _singleton;
  WHOGrowthStandardsLengthForAgeData._(this._data);
  static final _singleton = WHOGrowthStandardsLengthForAgeData._(_parse());

  static Map<Sex, Map<int, _WHOGrowthStandardsLengthForAgeLMS>> _parse() =>
      _lenanthro.toJsonObjectAsMap.map(
        (k1, v1) => MapEntry(
            k1 == '1' ? Sex.male : Sex.female,
            (v1 as Map<String, dynamic>).map((k2, v2) {
              v2 as Map<String, dynamic>;
              final lms =
                  LMS(l: v2['l'] as num, m: v2['m'] as num, s: v2['s'] as num);
              return MapEntry(
                int.parse(k2),
                _WHOGrowthStandardsLengthForAgeLMS(
                  lms: lms,
                  loh: v2['loh'].toString().toLowerCase() == 'l'
                      ? LengthHeightMeasurementPosition.recumbent
                      : LengthHeightMeasurementPosition.standing,
                ),
              );
            })),
      );
  final Map<Sex, Map<int, _WHOGrowthStandardsLengthForAgeLMS>> _data;
  @override
  Map<Sex, Map<int, _WHOGrowthStandardsLengthForAgeLMS>> get data => _data;

  @override
  String toString() => 'Length For Age Data($_data)';
}

@freezed
sealed class WHOGrowthStandardsLengthForAge extends AgeBasedResult
    with _$WHOGrowthStandardsLengthForAge {
  @Assert(
    'age.ageInTotalDaysByNow >= 0 && age.ageInTotalDaysByNow <= 1856',
    'Age must be in range of 0 - 1856 days',
  )
  @Assert(
    'observationDate == null || observationDate.isSameOrBefore(Date.today()) || observationDate.isSameOrAfter(age.dateOfBirth)',
    'Observation date is impossible, because happen after today or before birth',
  )
  factory WHOGrowthStandardsLengthForAge({
    Date? observationDate,
    required Sex sex,
    required Age age,
    required Length lengthHeight,
    required LengthHeightMeasurementPosition measure,
  }) = _WHOGrowthStandardsLengthForAge;

  const WHOGrowthStandardsLengthForAge._();

  factory WHOGrowthStandardsLengthForAge.fromJson(Map<String, dynamic> json) =>
      _$WHOGrowthStandardsLengthForAgeFromJson(json);

  WHOGrowthStandardsLengthForAgeData get _lengthForAgeData =>
      WHOGrowthStandardsLengthForAgeData();

  Map<int, _WHOGrowthStandardsLengthForAgeLMS> get _maleData =>
      _lengthForAgeData._data[Sex.male]!;
  Map<int, _WHOGrowthStandardsLengthForAgeLMS> get _femaleData =>
      _lengthForAgeData._data[Sex.female]!;

  _WHOGrowthStandardsLengthForAgeLMS get _ageData => (sex == Sex.male
      ? _maleData
      : _femaleData)[ageAtObservationDate.ageInTotalDaysByNow]!;

  num get _adjustedLength => adjustedLengthHeight(
        measure: measure,
        age: age,
        lengthHeight: lengthHeight,
        type: AdjustedLengthType.who,
      ).value;

  num get _zScore => _ageData.lms.zScore(_adjustedLength);

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
  _WHOGrowthStandardsLengthForAgeLMS get lmsData => _ageData;

  @override
  num get measurementResultInDefaultUnit => _adjustedLength;
}

class _WHOGrowthStandardsLengthForAgeLMS extends LMSBasedResult {
  _WHOGrowthStandardsLengthForAgeLMS({
    required this.lms,
    required this.loh,
  });
  @override
  final LMS lms;

  final LengthHeightMeasurementPosition loh;

  @override
  String toString() => 'Length For Age LMS($lms, $loh)';
}
