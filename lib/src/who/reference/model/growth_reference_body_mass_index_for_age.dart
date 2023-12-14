part of '../reference.dart';

class GrowthReferenceBodyMassIndexForAgeData {
  GrowthReferenceBodyMassIndexForAgeData()
      : _data = (json.decode(_bmi5yo) as Map<String, dynamic>).map(
          (x, e) => MapEntry(
            x,
            GrowthReferenceBodyMassIndexForAgeGender(
              ageData: (e as Map<String, dynamic>).map((x, y) {
                y as Map<String, dynamic>;
                return MapEntry(
                  x,
                  GrowthReferenceBodyMassIndexForAgeLMS(
                    lms: (l: y['l'], m: y['m'], s: y['s']),
                  ),
                );
              }),
            ),
          ),
        );

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

  num get zScore => adjustedZScore(
        y: _bodyMassIndexMeasurement.value,
        l: _ageData.lms.l,
        m: _ageData.lms.m,
        s: _ageData.lms.s,
      );

  num get percentile => zScoreToPercentile(zScore);
}

class GrowthReferenceBodyMassIndexForAgeGender {
  GrowthReferenceBodyMassIndexForAgeGender({required this.ageData});
  final Map<String, GrowthReferenceBodyMassIndexForAgeLMS> ageData;
}

class GrowthReferenceBodyMassIndexForAgeLMS {
  GrowthReferenceBodyMassIndexForAgeLMS({required this.lms});
  final LMS lms;
}
