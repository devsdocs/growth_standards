import 'dart:convert';

import 'package:who_growth_standards/src/common.dart';
import 'package:who_growth_standards/src/math.dart';
import 'package:who_growth_standards/src/typedef.dart';
import 'package:who_growth_standards/src/types.dart';

part '../data/acanthro.dart';

class ArmCircumferenceData {
  ArmCircumferenceData()
      : data = (json.decode(_acanthro) as Map<String, dynamic>).map(
          (k, v) => MapEntry(
            k,
            ArmCircumferenceGender(
              ageData: (v as Map<String, dynamic>).map((x, y) {
                y as Map<String, dynamic>;
                return MapEntry(
                  x,
                  ArmCircumferenceAge(lms: (l: y['l'], m: y['m'], s: y['s'])),
                );
              }),
            ),
          ),
        );

  final Map<String, ArmCircumferenceGender> data;
}

class ArmCircumferenceForAge {
  ArmCircumferenceForAge._({
    required Sex sex,
    required Age age,
    required num measurementResult,
    required ArmCircumferenceData armCircumferenceData,
  })  : _measurementResult = measurementResult,
        _sex = sex,
        _age = age,
        _mapGender = armCircumferenceData.data {
    if (_age.totalDays >= 91 && _age.totalDays <= 1856) {
      throw Exception('Final age must be in range of 91 - 1856 days');
    }
  }

  factory ArmCircumferenceForAge.male({
    required Age age,
    required num measurementResult,
    required ArmCircumferenceData armCircumferenceData,
  }) {
    return ArmCircumferenceForAge._(
      sex: Sex.male,
      age: age,
      measurementResult: measurementResult,
      armCircumferenceData: armCircumferenceData,
    );
  }

  factory ArmCircumferenceForAge.female({
    required Age age,
    required num measurementResult,
    required ArmCircumferenceData armCircumferenceData,
  }) {
    return ArmCircumferenceForAge._(
      sex: Sex.female,
      age: age,
      measurementResult: measurementResult,
      armCircumferenceData: armCircumferenceData,
    );
  }

  final Sex _sex;
  final Age _age;
  final num _measurementResult;
  final Map<String, ArmCircumferenceGender> _mapGender;

  ArmCircumferenceGender get _maleData => _mapGender['1']!;
  ArmCircumferenceGender get _femaleData => _mapGender['2']!;

  ArmCircumferenceAge get _ageData =>
      (_sex == Sex.male ? _maleData : _femaleData)
          .ageData[_age.totalDays.toString()]!;

  num get zScore => adjustedZScore(
        y: _measurementResult,
        l: _ageData.lms.l,
        m: _ageData.lms.m,
        s: _ageData.lms.s,
      );
}

class ArmCircumferenceGender {
  ArmCircumferenceGender({required this.ageData});

  final Map<String, ArmCircumferenceAge> ageData;
}

class ArmCircumferenceAge {
  ArmCircumferenceAge({required this.lms});
  final LMS lms;
}
