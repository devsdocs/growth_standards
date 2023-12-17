part of '../reference.dart';

class GrowthReferenceBodyMassIndexForAgeData {
  factory GrowthReferenceBodyMassIndexForAgeData() => _singleton;
  GrowthReferenceBodyMassIndexForAgeData._()
      : _data = (json.decode(_bmi5yo) as Map<String, dynamic>).map(
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

  static final _singleton = GrowthReferenceBodyMassIndexForAgeData._();

  final Map<String, _GrowthReferenceBodyMassIndexForAgeGender> _data;
}

class GrowthReferenceBodyMassIndexMeasurement {
  const GrowthReferenceBodyMassIndexMeasurement._(this.value);

  factory GrowthReferenceBodyMassIndexMeasurement.fromMeasurement({
    required Length lengthHeight,
    required Mass weight,
  }) {
    final toMeterSquare = pow(
      lengthHeight.toMeters.value!,
      2,
    );
    final toKg = weight.toKilograms.value!;

    return GrowthReferenceBodyMassIndexMeasurement._(toKg / toMeterSquare);
  }

  factory GrowthReferenceBodyMassIndexMeasurement.fromValue(num value) =>
      GrowthReferenceBodyMassIndexMeasurement._(value);

  final num value;
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
    required GrowthReferenceBodyMassIndexForAgeData bodyMassIndexData,
  }) = _GrowthReferenceBodyMassIndexForAge;

  const GrowthReferenceBodyMassIndexForAge._();

  _GrowthReferenceBodyMassIndexForAgeGender get _maleData =>
      bodyMassIndexData._data['1']!;
  _GrowthReferenceBodyMassIndexForAgeGender get _femaleData =>
      bodyMassIndexData._data['2']!;

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
