part of '../standard.dart';

class WHOGrowthStandardsLengthForAgeData {
  factory WHOGrowthStandardsLengthForAgeData() => _singleton;
  WHOGrowthStandardsLengthForAgeData._(this._data);
  static final _singleton = WHOGrowthStandardsLengthForAgeData._(_parse());

  static Map<Sex, _WHOGrowthStandardsLengthForAgeGender> _parse() =>
      _lenanthro.toJsonObjectAsMap.map(
        (k1, v1) => MapEntry(
          k1 == '1' ? Sex.male : Sex.female,
          _WHOGrowthStandardsLengthForAgeGender(
            ageData: (v1 as Map<String, dynamic>).map((k2, v2) {
              v2 as Map<String, dynamic>;
              final lms =
                  LMS(l: v2['l'] as num, m: v2['m'] as num, s: v2['s'] as num);
              return MapEntry(
                int.parse(k2),
                _WHOGrowthStandardsLengthForAgeLMS(
                  lms: lms,
                  percentileCutOff: lms.percentileCutOff,
                  standardDeviationCutOff: lms.stDevCutOff,
                  loh: v2['loh'].toString().toLowerCase() == 'l'
                      ? LengthHeightMeasurementPosition.recumbent
                      : LengthHeightMeasurementPosition.standing,
                ),
              );
            }),
          ),
        ),
      );
  final Map<Sex, _WHOGrowthStandardsLengthForAgeGender> _data;
  Map<Sex, _WHOGrowthStandardsLengthForAgeGender> get data => _data;

  @override
  String toString() => 'Length For Age Data($_data)';
}

@freezed
sealed class WHOGrowthStandardsLengthForAge
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

  _WHOGrowthStandardsLengthForAgeGender get _maleData =>
      _lengthForAgeData._data[Sex.male]!;
  _WHOGrowthStandardsLengthForAgeGender get _femaleData =>
      _lengthForAgeData._data[Sex.female]!;

  _WHOGrowthStandardsLengthForAgeLMS get _ageData =>
      (sex == Sex.male ? _maleData : _femaleData)
          .ageData[ageAtObservationDate.ageInTotalDaysByNow]!;

  num get _adjustedLength => adjustedLengthHeight(
        measure: measure,
        age: age,
        lengthHeight: lengthHeight,
        type: AdjustedLengthType.who,
      ).value;

  num get _zScore => _ageData.lms.zScore(_adjustedLength);

  Age get ageAtObservationDate => checkObservationDate(age, observationDate);

  num zScore([
    Precision precision = Precision.ten,
  ]) =>
      _zScore.precision(precision);

  num percentile([
    Precision precision = Precision.ten,
  ]) =>
      (pnorm(_zScore) * 100).precision(precision);

  _WHOGrowthStandardsLengthForAgeLMS get ageData => _ageData;
}

class _WHOGrowthStandardsLengthForAgeGender {
  _WHOGrowthStandardsLengthForAgeGender({required this.ageData});
  final Map<int, _WHOGrowthStandardsLengthForAgeLMS> ageData;

  @override
  String toString() => 'Gender Data($ageData)';
}

class _WHOGrowthStandardsLengthForAgeLMS {
  _WHOGrowthStandardsLengthForAgeLMS({
    required this.lms,
    required this.loh,
    required this.percentileCutOff,
    required this.standardDeviationCutOff,
  });
  final LMS lms;
  final LengthHeightMeasurementPosition loh;

  final ZScoreCutOff standardDeviationCutOff;

  final PercentileCutOff percentileCutOff;

  @override
  String toString() =>
      'Age Data(LMS: $lms, Length/Height Measurement Position: $loh, Standard Deviation CutOff: $standardDeviationCutOff, Percentile CutOff: $percentileCutOff)';
}
