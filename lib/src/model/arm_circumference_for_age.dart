import 'dart:convert';

import 'package:super_measurement/super_measurement.dart';
import 'package:who_growth_standards/src/common.dart';
import 'package:who_growth_standards/src/math.dart';
import 'package:who_growth_standards/src/typedef.dart';
import 'package:who_growth_standards/src/types.dart';

part '../data/acanthro.dart';

class ArmCircumferenceForAgeData {
  ArmCircumferenceForAgeData()
      : data = (json.decode(_acanthro) as Map<String, dynamic>).map(
          (k, v) => MapEntry(
            k,
            ArmCircumferenceForAgeGender(
              ageData: (v as Map<String, dynamic>).map((x, y) {
                y as Map<String, dynamic>;
                return MapEntry(
                  x,
                  ArmCircumferenceForAgeLMS(
                    lms: (l: y['l'], m: y['m'], s: y['s']),
                  ),
                );
              }),
            ),
          ),
        );

  final Map<String, ArmCircumferenceForAgeGender> data;
}

class ArmCircumferenceForAge {
  ArmCircumferenceForAge._({
    required Sex sex,
    required Age age,
    required Length measurementResult,
    required ArmCircumferenceForAgeData armCircumferenceData,
  })  : _measurementResult = measurementResult,
        _sex = sex,
        _age = age,
        _mapGender = armCircumferenceData.data {
    if (!(_age.totalDays >= 91 && _age.totalDays <= 1856)) {
      throw Exception('Final age must be in range of 91 - 1856 days');
    }
  }

  factory ArmCircumferenceForAge.male({
    required Age age,
    required Length measurementResult,
    required ArmCircumferenceForAgeData armCircumferenceData,
  }) =>
      ArmCircumferenceForAge._(
        sex: Sex.male,
        age: age,
        measurementResult: measurementResult,
        armCircumferenceData: armCircumferenceData,
      );

  factory ArmCircumferenceForAge.female({
    required Age age,
    required Length measurementResult,
    required ArmCircumferenceForAgeData armCircumferenceData,
  }) =>
      ArmCircumferenceForAge._(
        sex: Sex.female,
        age: age,
        measurementResult: measurementResult,
        armCircumferenceData: armCircumferenceData,
      );

  final Sex _sex;
  final Age _age;
  final Length _measurementResult;
  final Map<String, ArmCircumferenceForAgeGender> _mapGender;

  ArmCircumferenceForAgeGender get _maleData => _mapGender['1']!;
  ArmCircumferenceForAgeGender get _femaleData => _mapGender['2']!;

  ArmCircumferenceForAgeLMS get _ageData =>
      (_sex == Sex.male ? _maleData : _femaleData)
          .ageData[_age.totalDays.toString()]!;

  num get zScore => adjustedZScore(
        y: _measurementResult.toCentimeters.value!,
        l: _ageData.lms.l,
        m: _ageData.lms.m,
        s: _ageData.lms.s,
      );
}

class ArmCircumferenceForAgeGender {
  ArmCircumferenceForAgeGender({required this.ageData});

  final Map<String, ArmCircumferenceForAgeLMS> ageData;
}

class ArmCircumferenceForAgeLMS {
  ArmCircumferenceForAgeLMS({required this.lms});
  final LMS lms;
}
