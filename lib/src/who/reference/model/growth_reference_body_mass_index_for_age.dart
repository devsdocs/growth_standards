part of '../reference.dart';

class GrowthReferenceBodyMassIndexForAgeData {
  factory GrowthReferenceBodyMassIndexForAgeData() => _singleton;
  const GrowthReferenceBodyMassIndexForAgeData._(this._data);

  static final _singleton = GrowthReferenceBodyMassIndexForAgeData._(_parse());

  static Map<String, _GrowthReferenceBodyMassIndexForAgeGender> _parse() =>
      (json.decode(_bmi5yo) as Map<String, dynamic>).map(
        (k1, v1) => MapEntry(
          k1,
          _GrowthReferenceBodyMassIndexForAgeGender(
            ageData: (v1 as Map<String, dynamic>).map((k2, v2) {
              v2 as Map<String, dynamic>;
              return MapEntry(
                k2,
                _GrowthReferenceBodyMassIndexForAgeLMS(
                  lms: (l: v2['l'], m: v2['m'], s: v2['s']),
                ),
              );
            }),
          ),
        ),
      );
  final Map<String, _GrowthReferenceBodyMassIndexForAgeGender> _data;
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
      GrowthReferenceBodyMassIndexMeasurement(
        bodyMassIndex.value.toDouble().toPrecision(2),
      );

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
      _bodyMassIndexData._data['1']!;
  _GrowthReferenceBodyMassIndexForAgeGender get _femaleData =>
      _bodyMassIndexData._data['2']!;

  _GrowthReferenceBodyMassIndexForAgeLMS get _ageData =>
      (sex == Sex.male ? _maleData : _femaleData)
          .ageData[age.ageInTotalMonthsByNow.toString()]!;

  num get _zScore => adjustedZScore(
        y: bodyMassIndexMeasurement.value,
        l: _ageData.lms.l,
        m: _ageData.lms.m,
        s: _ageData.lms.s,
      );

  num get zScore => _zScore.toDouble().toPrecision(2);

  num get percentile => zScoreToPercentile(_zScore).toDouble().toPrecision(2);
}

class _GrowthReferenceBodyMassIndexForAgeGender {
  _GrowthReferenceBodyMassIndexForAgeGender({required this.ageData});
  final Map<String, _GrowthReferenceBodyMassIndexForAgeLMS> ageData;
}

class _GrowthReferenceBodyMassIndexForAgeLMS {
  _GrowthReferenceBodyMassIndexForAgeLMS({required this.lms});
  final LMS lms;
}
