part of '../reference.dart';

class GrowthReferenceBodyMassIndexForAgeData {
  factory GrowthReferenceBodyMassIndexForAgeData() => _singleton;
  const GrowthReferenceBodyMassIndexForAgeData._(this._data);

  static final _singleton = GrowthReferenceBodyMassIndexForAgeData._(_parse());

  static Map<Sex, _GrowthReferenceBodyMassIndexForAgeGender> _parse() =>
      _bmi5yo.toJsonObjectAsMap.map(
        (k1, v1) => MapEntry(
          k1 == '1' ? Sex.male : Sex.female,
          _GrowthReferenceBodyMassIndexForAgeGender(
            ageData: (v1 as Map<String, dynamic>).map((k2, v2) {
              v2 as Map<String, dynamic>;
              final lms =
                  (l: v2['l'] as num, m: v2['m'] as num, s: v2['s'] as num);
              return MapEntry(
                int.parse(k2),
                _GrowthReferenceBodyMassIndexForAgeLMS(
                  lms: lms,
                  percentileCutOff: lms.percentileCutOff,
                  standardDeviationCutOff: lms.stDevCutOff,
                ),
              );
            }),
          ),
        ),
      );

  final Map<Sex, _GrowthReferenceBodyMassIndexForAgeGender> _data;
  Map<Sex, _GrowthReferenceBodyMassIndexForAgeGender> get data => _data;

  @override
  String toString() => 'Body Mass Index For Age Data($_data)';
}

@freezed
class GrowthReferenceBodyMassIndexMeasurement
    with _$GrowthReferenceBodyMassIndexMeasurement {
  factory GrowthReferenceBodyMassIndexMeasurement(num value) =
      _GrowthReferenceBodyMassIndexMeasurement;
  const GrowthReferenceBodyMassIndexMeasurement._();

  factory GrowthReferenceBodyMassIndexMeasurement.fromMeasurement(
    BodyMassIndex bodyMassIndex,
  ) =>
      GrowthReferenceBodyMassIndexMeasurement(bodyMassIndex.value);

  factory GrowthReferenceBodyMassIndexMeasurement.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$GrowthReferenceBodyMassIndexMeasurementFromJson(json);
}

@freezed
class GrowthReferenceBodyMassIndexForAge
    with _$GrowthReferenceBodyMassIndexForAge {
  @Assert(
    'age.ageInTotalMonthsByNow >= 61 && age.ageInTotalMonthsByNow <= 228',
    'Age must be in range of 61 - 228 months',
  )
  factory GrowthReferenceBodyMassIndexForAge({
    Date? observationDate,
    required Sex sex,
    required Age age,
    required GrowthReferenceBodyMassIndexMeasurement bodyMassIndexMeasurement,
  }) = _GrowthReferenceBodyMassIndexForAge;

  const GrowthReferenceBodyMassIndexForAge._();

  factory GrowthReferenceBodyMassIndexForAge.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$GrowthReferenceBodyMassIndexForAgeFromJson(json);

  GrowthReferenceBodyMassIndexForAgeData get _bodyMassIndexData =>
      GrowthReferenceBodyMassIndexForAgeData();

  _GrowthReferenceBodyMassIndexForAgeGender get _maleData =>
      _bodyMassIndexData._data[Sex.male]!;
  _GrowthReferenceBodyMassIndexForAgeGender get _femaleData =>
      _bodyMassIndexData._data[Sex.female]!;

  _GrowthReferenceBodyMassIndexForAgeLMS get _ageData =>
      (sex == Sex.male ? _maleData : _femaleData)
          .ageData[age.ageInTotalMonthsByNow]!;

  num get _zScore =>
      _ageData.lms.adjustedZScore(bodyMassIndexMeasurement.value);

  num zScore([
    Precision precision = Precision.ten,
  ]) =>
      _zScore.precision(precision);

  num percentile([
    Precision precision = Precision.ten,
  ]) =>
      (pnorm(_zScore) * 100).precision(precision);
}

class _GrowthReferenceBodyMassIndexForAgeGender {
  _GrowthReferenceBodyMassIndexForAgeGender({required this.ageData});
  final Map<int, _GrowthReferenceBodyMassIndexForAgeLMS> ageData;

  @override
  String toString() => 'Gender Data($ageData)';
}

class _GrowthReferenceBodyMassIndexForAgeLMS {
  _GrowthReferenceBodyMassIndexForAgeLMS({
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
