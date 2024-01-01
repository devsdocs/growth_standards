part of '../reference.dart';

class GrowthReferenceWeightForAgeData {
  factory GrowthReferenceWeightForAgeData() => _singleton;
  const GrowthReferenceWeightForAgeData._(this._data);

  static final _singleton = GrowthReferenceWeightForAgeData._(_parse());

  static Map<Sex, _GrowthReferenceWeightForAgeGender> _parse() =>
      _wfa5yo.toJsonObjectAsMap.map(
        (k1, v1) => MapEntry(
          k1 == '1' ? Sex.male : Sex.female,
          _GrowthReferenceWeightForAgeGender(
            ageData: (v1 as Map<String, dynamic>).map((k2, v2) {
              v2 as Map<String, dynamic>;
              final lms =
                  (l: v2['l'] as num, m: v2['m'] as num, s: v2['s'] as num);
              return MapEntry(
                int.parse(k2),
                _GrowthReferenceWeightForAgeLMS(
                  lms: lms,
                  percentileCutOff: lms.percentileCutOff,
                  standardDeviationCutOff: lms.stDevCutOff,
                ),
              );
            }),
          ),
        ),
      );
  final Map<Sex, _GrowthReferenceWeightForAgeGender> _data;
  Map<Sex, _GrowthReferenceWeightForAgeGender> get data => _data;

  @override
  String toString() => 'Weight For Age Data($_data)';
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

  factory GrowthReferenceWeightForAge.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$GrowthReferenceWeightForAgeFromJson(json);

  GrowthReferenceWeightForAgeData get _weightForAgeData =>
      GrowthReferenceWeightForAgeData();

  _GrowthReferenceWeightForAgeGender get _maleData =>
      _weightForAgeData._data[Sex.male]!;
  _GrowthReferenceWeightForAgeGender get _femaleData =>
      _weightForAgeData._data[Sex.female]!;

  _GrowthReferenceWeightForAgeLMS get _ageData =>
      (sex == Sex.male ? _maleData : _femaleData)
          .ageData[age.ageInTotalMonthsByNow]!;

  num get _zScore => _ageData.lms.adjustedZScore(weight.toKilograms.value!);

  num zScore([
    Precision precision = Precision.ten,
  ]) =>
      _zScore.precision(precision);

  num percentile([
    Precision precision = Precision.ten,
  ]) =>
      (pnorm(_zScore) * 100).precision(precision);
}

class _GrowthReferenceWeightForAgeGender {
  _GrowthReferenceWeightForAgeGender({required this.ageData});

  final Map<int, _GrowthReferenceWeightForAgeLMS> ageData;
  @override
  String toString() => 'Gender Data($ageData)';
}

class _GrowthReferenceWeightForAgeLMS {
  _GrowthReferenceWeightForAgeLMS({
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
