part of '../reference.dart';

class GrowthReferenceBodyMassIndexForAgeData {
  factory GrowthReferenceBodyMassIndexForAgeData() => _singleton;
  GrowthReferenceBodyMassIndexForAgeData._()
      : _data = (json.decode(_bmi5yo) as Map<String, dynamic>).map(
          (k1, v1) => MapEntry(
            k1,
            GrowthReferenceBodyMassIndexForAgeGender(
              ageData: (v1 as Map<String, dynamic>).map((k2, v2) {
                v2 as Map<String, dynamic>;
                return MapEntry(
                  k2,
                  GrowthReferenceBodyMassIndexForAgeLMS(
                    lms: (l: v2['l'], m: v2['m'], s: v2['s']),
                  ),
                );
              }),
            ),
          ),
        );

  static final _singleton = GrowthReferenceBodyMassIndexForAgeData._();

  final Map<String, GrowthReferenceBodyMassIndexForAgeGender> _data;
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

class GrowthReferenceBodyMassIndexForAge {
  GrowthReferenceBodyMassIndexForAge({
    required Sex sex,
    required Age age,
    required GrowthReferenceBodyMassIndexMeasurement bodyMassIndexMeasurement,
    required GrowthReferenceBodyMassIndexForAgeData bodyMassIndexData,
  })  : _bodyMassIndexMeasurement = bodyMassIndexMeasurement,
        _sex = sex,
        _age = age,
        _mapGender = bodyMassIndexData._data {
    if (!(_age.totalMonths >= 61 && _age.totalMonths <= 228)) {
      throw Exception('Age must be in range of 61 - 228 months');
    }
  }

  final Sex _sex;
  final Age _age;
  final GrowthReferenceBodyMassIndexMeasurement _bodyMassIndexMeasurement;

  final Map<String, GrowthReferenceBodyMassIndexForAgeGender> _mapGender;

  GrowthReferenceBodyMassIndexForAgeGender get _maleData => _mapGender['1']!;
  GrowthReferenceBodyMassIndexForAgeGender get _femaleData => _mapGender['2']!;

  GrowthReferenceBodyMassIndexForAgeLMS get _ageData =>
      (_sex == Sex.male ? _maleData : _femaleData)
          .ageData[_age.totalMonths.toString()]!;

  num get _zScore => adjustedZScore(
        y: _bodyMassIndexMeasurement.value,
        l: _ageData.lms.l,
        m: _ageData.lms.m,
        s: _ageData.lms.s,
      );

  num get zScore => _zScore.toDouble().toPrecision(2);

  num get percentile => zScoreToPercentile(_zScore).toDouble().toPrecision(2);
}

class GrowthReferenceBodyMassIndexForAgeGender {
  GrowthReferenceBodyMassIndexForAgeGender({required this.ageData});
  final Map<String, GrowthReferenceBodyMassIndexForAgeLMS> ageData;
}

class GrowthReferenceBodyMassIndexForAgeLMS {
  GrowthReferenceBodyMassIndexForAgeLMS({required this.lms});
  final LMS lms;
}
