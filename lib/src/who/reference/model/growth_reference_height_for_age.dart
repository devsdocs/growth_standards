part of '../reference.dart';

class GrowthReferenceHeightForAgeData {
  factory GrowthReferenceHeightForAgeData() => _singleton;
  const GrowthReferenceHeightForAgeData._(this._data);

  static final _singleton = GrowthReferenceHeightForAgeData._(_parse());

  static Map<Sex, _GrowthReferenceHeightForAgeGender> _parse() =>
      _hfa5yo.toJsonObjectAsMap.map(
        (k1, v1) => MapEntry(
          k1 == '1' ? Sex.male : Sex.female,
          _GrowthReferenceHeightForAgeGender(
            ageData: (v1 as Map<String, dynamic>).map((k2, v2) {
              v2 as Map<String, dynamic>;
              final lms =
                  (l: v2['l'] as num, m: v2['m'] as num, s: v2['s'] as num);
              return MapEntry(
                int.parse(k2),
                _GrowthReferenceHeightForAgeLMS(
                  lms: lms,
                  percentileCutOff: lms.percentileCutOff,
                  standardDeviationCutOff: lms.stDevCutOff,
                ),
              );
            }),
          ),
        ),
      );
  final Map<Sex, _GrowthReferenceHeightForAgeGender> _data;
  Map<Sex, _GrowthReferenceHeightForAgeGender> get data => _data;

  @override
  String toString() => 'Height For Age Data($_data)';
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
      _lengthForAgeData._data[Sex.male]!;
  _GrowthReferenceHeightForAgeGender get _femaleData =>
      _lengthForAgeData._data[Sex.female]!;

  _GrowthReferenceHeightForAgeLMS get _ageData =>
      (sex == Sex.male ? _maleData : _femaleData)
          .ageData[age.ageInTotalMonthsByNow]!;

  num get _zScore => _ageData.lms.zScore(lengthHeight.toCentimeters.value!);
  num zScore([
    Precision precision = Precision.nine,
  ]) =>
      _zScore.toDouble().toPrecision(precision.value);

  num percentile([
    Precision precision = Precision.nine,
  ]) =>
      (pnorm(_zScore) * 100).toDouble().toPrecision(precision.value);
}

class _GrowthReferenceHeightForAgeGender {
  _GrowthReferenceHeightForAgeGender({required this.ageData});
  final Map<int, _GrowthReferenceHeightForAgeLMS> ageData;

  @override
  String toString() => 'Gender Data($ageData)';
}

class _GrowthReferenceHeightForAgeLMS {
  _GrowthReferenceHeightForAgeLMS({
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
