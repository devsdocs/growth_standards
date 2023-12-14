import 'dart:convert';
import 'dart:math';

import 'package:super_measurement/super_measurement.dart';
import 'package:who_growth_standards/src/age.dart';
import 'package:who_growth_standards/src/math.dart';
import 'package:who_growth_standards/src/typedef.dart';
import 'package:who_growth_standards/src/types.dart';

part '../data/bmianthro.dart';

class BodyMassIndexForAgeData {
  BodyMassIndexForAgeData()
      : _data = (json.decode(_bmianthro) as Map<String, dynamic>).map(
          (x, e) => MapEntry(
            x,
            BodyMassIndexForAgeGender(
              ageData: (e as Map<String, dynamic>).map((x, y) {
                y as Map<String, dynamic>;
                return MapEntry(
                  x,
                  BodyMassIndexForAgeLMS(
                    lms: (l: y['l'], m: y['m'], s: y['s']),
                    loh: y['loh'].toString().toLowerCase() == 'l'
                        ? LengthHeigthMeasurementPosition.recumbent
                        : LengthHeigthMeasurementPosition.standing,
                  ),
                );
              }),
            ),
          ),
        );

  final Map<String, BodyMassIndexForAgeGender> _data;
}

class BodyMassIndexMeasurement {
  const BodyMassIndexMeasurement._(this.value, {required Age age}) : _age = age;

  factory BodyMassIndexMeasurement.fromMeasurement({
    required Length lengthHeight,
    required Mass weight,
    required LengthHeigthMeasurementPosition measure,
    required Age age,
  }) {
    final toMeterSquare = pow(
      Centimeters(
        adjustedLengthHeight(
          ageInDays: age.totalDays,
          measure: measure,
          lengthHeight: lengthHeight.toCentimeters.value!,
        ),
      ).toMeters.value!,
      2,
    );
    final toKg = weight.toKilograms.value!;

    return BodyMassIndexMeasurement._(toKg / toMeterSquare, age: age);
  }

  factory BodyMassIndexMeasurement.fromValue(num value, {required Age age}) =>
      BodyMassIndexMeasurement._(value, age: age);

  final num value;

  final Age _age;
}

class BodyMassIndexForAge {
  BodyMassIndexForAge({
    required Sex sex,
    required BodyMassIndexMeasurement bodyMassIndexMeasurement,
    required BodyMassIndexForAgeData bodyMassIndexData,
  })  : _bodyMassIndexMeasurement = bodyMassIndexMeasurement,
        _sex = sex,
        _age = bodyMassIndexMeasurement._age,
        _mapGender = bodyMassIndexData._data {
    if (!(_age.totalDays >= 0 && _age.totalDays <= 1856)) {
      throw Exception('Final age must be in range of 0 - 1856 days');
    }
  }

  final Sex _sex;
  final Age _age;
  final BodyMassIndexMeasurement _bodyMassIndexMeasurement;

  final Map<String, BodyMassIndexForAgeGender> _mapGender;

  BodyMassIndexForAgeGender get _maleData => _mapGender['1']!;
  BodyMassIndexForAgeGender get _femaleData => _mapGender['2']!;

  BodyMassIndexForAgeLMS get _ageData =>
      (_sex == Sex.male ? _maleData : _femaleData)
          .ageData[_age.totalDays.toString()]!;

  num get zScore => adjustedZScore(
        y: _bodyMassIndexMeasurement.value,
        l: _ageData.lms.l,
        m: _ageData.lms.m,
        s: _ageData.lms.s,
      );

  num get percentile => zScoreToPercentile(zScore);
}

class BodyMassIndexForAgeGender {
  BodyMassIndexForAgeGender({required this.ageData});

  final Map<String, BodyMassIndexForAgeLMS> ageData;
}

class BodyMassIndexForAgeLMS {
  BodyMassIndexForAgeLMS({
    required this.lms,
    required this.loh,
  });
  final LMS lms;
  final LengthHeigthMeasurementPosition loh;
}
