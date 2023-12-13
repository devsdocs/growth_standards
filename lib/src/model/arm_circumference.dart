import 'dart:convert';

import 'package:who_growth_standards/src/common.dart';
import 'package:who_growth_standards/src/math.dart';

import 'package:who_growth_standards/src/typedef.dart';
import 'package:who_growth_standards/src/types.dart';

part '../data/acanthro.dart';

class ArmCircumferenceData {
  ArmCircumferenceData()
      : data = (json.decode(_acanthro) as Map<String, dynamic>).map((k, v) {
          v as Map<String, dynamic>;
          return MapEntry(
            k,
            ArmCircumferenceGender(
              ageData: (v['data'] as Map<String, dynamic>).map((x, y) {
                y as Map<String, dynamic>;
                return MapEntry(
                  x,
                  ArmCircumferenceAge(lms: (l: y['l'], m: y['m'], s: y['s'])),
                );
              }),
            ),
          );
        });

  final Map<String, ArmCircumferenceGender> data;
}

class ArmCircumference {
  ArmCircumference({
    required Sex sex,
    required DateOfBirth dateOfBirth,
    required num measurementResult,
    required ArmCircumferenceData armCircumferenceData,
  })  : _measurementResult = measurementResult,
        _sex = sex,
        _age = Age(dateOfBirth),
        _mapGender = armCircumferenceData.data {
    assert(_age.totalDays >= 91 && _age.totalDays <= 1856);
  }

  final Sex _sex;
  final Age _age;
  final num _measurementResult;
  final Map<String, ArmCircumferenceGender> _mapGender;

  ArmCircumferenceGender get _maleData => _mapGender['1']!;
  ArmCircumferenceGender get _femaleData => _mapGender['2']!;

  ArmCircumferenceAge get _genderData =>
      (_sex == Sex.male ? _maleData : _femaleData)
          .ageData[_age.totalDays.toString()]!;

  num get zScore => adjustedZScore(
        y: _measurementResult,
        l: _genderData.lms.l,
        m: _genderData.lms.m,
        s: _genderData.lms.s,
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
