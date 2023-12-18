part of '../reference.dart';

class GrowthReferenceHeightForAgeData {
  factory GrowthReferenceHeightForAgeData() => _singleton;
  const GrowthReferenceHeightForAgeData._(this._data);

  static final _singleton = GrowthReferenceHeightForAgeData._(_parse());

  static Map<String, _GrowthReferenceHeightForAgeGender> _parse() =>
      (json.decode(_hfa5yo) as Map<String, dynamic>).map(
        (k1, v1) => MapEntry(
          k1,
          _GrowthReferenceHeightForAgeGender(
            ageData: (v1 as Map<String, dynamic>).map((k2, v2) {
              v2 as Map<String, dynamic>;
              return MapEntry(
                k2,
                _GrowthReferenceHeightForAgeLMS(
                  lms: (l: v2['l'], m: v2['m'], s: v2['s']),
                ),
              );
            }),
          ),
        ),
      );
  final Map<String, _GrowthReferenceHeightForAgeGender> _data;
}

@freezed
class GrowthReferenceHeightForAge with _$GrowthReferenceHeightForAge {
  @Assert(
    'age.ageInTotalMonthsByNow >= 61 && age.ageInTotalMonthsByNow <= 228',
    'Age must be in range of 61 - 228 months',
  )
  factory GrowthReferenceHeightForAge({
    Date? observationDate,
    required Sex sex,
    required Age age,
    @LengthConverter() required Length lengthHeight,
  }) = _GrowthReferenceHeightForAge;

  const GrowthReferenceHeightForAge._();
  factory GrowthReferenceHeightForAge.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$GrowthReferenceHeightForAgeFromJson(json);

  GrowthReferenceHeightForAgeData get _lengthForAgeData =>
      GrowthReferenceHeightForAgeData();

  _GrowthReferenceHeightForAgeGender get _maleData =>
      _lengthForAgeData._data['1']!;
  _GrowthReferenceHeightForAgeGender get _femaleData =>
      _lengthForAgeData._data['2']!;

  _GrowthReferenceHeightForAgeLMS get _ageData =>
      (sex == Sex.male ? _maleData : _femaleData)
          .ageData[age.ageInTotalMonthsByNow.toString()]!;

  num get _zScore => zscore(
        y: lengthHeight.toCentimeters.value!,
        l: _ageData.lms.l,
        m: _ageData.lms.m,
        s: _ageData.lms.s,
      );

  num get zScore => _zScore.toDouble().toPrecision(2);

  num get percentile => zScoreToPercentile(_zScore).toDouble().toPrecision(2);
}

class _GrowthReferenceHeightForAgeGender {
  _GrowthReferenceHeightForAgeGender({required this.ageData});
  final Map<String, _GrowthReferenceHeightForAgeLMS> ageData;
}

class _GrowthReferenceHeightForAgeLMS {
  _GrowthReferenceHeightForAgeLMS({required this.lms});
  final LMS lms;
}
