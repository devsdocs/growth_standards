part of '../reference.dart';

class GrowthReferenceWeightForAgeData {
  factory GrowthReferenceWeightForAgeData() => _singleton;
  const GrowthReferenceWeightForAgeData._(this._data);

  static final _singleton = GrowthReferenceWeightForAgeData._(_parse());

  static Map<String, _GrowthReferenceWeightForAgeGender> _parse() =>
      (json.decode(_wfa5yo) as Map<String, dynamic>).map(
        (k1, v1) => MapEntry(
          k1,
          _GrowthReferenceWeightForAgeGender(
            ageData: (v1 as Map<String, dynamic>).map((k2, v2) {
              v2 as Map<String, dynamic>;
              return MapEntry(
                k2,
                _GrowthReferenceWeightForAgeLMS(
                  lms: (l: v2['l'], m: v2['m'], s: v2['s']),
                ),
              );
            }),
          ),
        ),
      );
  final Map<String, _GrowthReferenceWeightForAgeGender> _data;
}

@freezed
class GrowthReferenceWeightForAge with _$GrowthReferenceWeightForAge {
  @Assert(
    'age.ageInTotalMonthsByNow >= 61 && age.ageInTotalMonthsByNow <= 120',
    'Age must be in range of 61 - 120 months',
  )
  factory GrowthReferenceWeightForAge({
    Date? observationDate,
    required Sex sex,
    required Age age,
    @MassConverter() required Mass weight,
  }) = _GrowthReferenceWeightForAge;

  const GrowthReferenceWeightForAge._();

  GrowthReferenceWeightForAgeData get _weightForAgeData =>
      GrowthReferenceWeightForAgeData();

  _GrowthReferenceWeightForAgeGender get _maleData =>
      _weightForAgeData._data['1']!;
  _GrowthReferenceWeightForAgeGender get _femaleData =>
      _weightForAgeData._data['2']!;

  _GrowthReferenceWeightForAgeLMS get _ageData =>
      (sex == Sex.male ? _maleData : _femaleData)
          .ageData[age.ageInTotalMonthsByNow.toString()]!;

  num get _zScore => adjustedZScore(
        y: weight.toKilograms.value!,
        l: _ageData.lms.l,
        m: _ageData.lms.m,
        s: _ageData.lms.s,
      );

  num get zScore => _zScore.toDouble().toPrecision(2);

  num get percentile => zScoreToPercentile(_zScore).toDouble().toPrecision(2);
}

class _GrowthReferenceWeightForAgeGender {
  _GrowthReferenceWeightForAgeGender({required this.ageData});

  final Map<String, _GrowthReferenceWeightForAgeLMS> ageData;
}

class _GrowthReferenceWeightForAgeLMS {
  _GrowthReferenceWeightForAgeLMS({required this.lms});
  final LMS lms;
}
