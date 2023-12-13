import 'dart:convert';

import 'package:who_growth_standards/src/common.dart';
import 'package:who_growth_standards/src/math.dart';

import 'package:who_growth_standards/src/typedef.dart';
import 'package:who_growth_standards/src/types.dart';

part '../data/bmianthro.dart';

class BodyMassIndexData {
  BodyMassIndexData()
      : data = (json.decode(_bmianthro) as Map<String, dynamic>).map((x, e) {
          e as Map<String, dynamic>;
          return MapEntry(
            x,
            BodyMassIndexGender(
              ageData: (e['data'] as Map<String, dynamic>).map((x, y) {
                y as Map<String, dynamic>;
                return MapEntry(
                  x,
                  BodyMassIndexAge(
                    lms: (l: y['l'], m: y['m'], s: y['s']),
                    loh: y['loh'] as String,
                  ),
                );
              }),
            ),
          );
        });

  final Map<String, BodyMassIndexGender> data;
}

class BodyMassIndex {
  BodyMassIndex({
    required Sex sex,
    required DateOfBirth dateOfBirth,
    required num measurementResult,
    required BodyMassIndexData bodyMassIndexData,
  })  : _measurementResult = measurementResult,
        _sex = sex,
        _age = Age(dateOfBirth),
        _mapGender = bodyMassIndexData.data {
    assert(_age.totalDays >= 0 && _age.totalDays <= 1856);
  }

  final Sex _sex;
  final Age _age;
  final num _measurementResult;
  final Map<String, BodyMassIndexGender> _mapGender;

  BodyMassIndexGender get _maleData => _mapGender['1']!;
  BodyMassIndexGender get _femaleData => _mapGender['2']!;

  BodyMassIndexAge get _genderData =>
      (_sex == Sex.male ? _maleData : _femaleData)
          .ageData[_age.totalDays.toString()]!;

  num get zScore => adjustedZScore(
        y: _measurementResult,
        l: _genderData.lms.l,
        m: _genderData.lms.m,
        s: _genderData.lms.s,
      );
}

class BodyMassIndexGender {
  BodyMassIndexGender({required this.ageData});

  final Map<String, BodyMassIndexAge> ageData;
}

class BodyMassIndexAge {
  BodyMassIndexAge({
    required this.lms,
    required this.loh,
  });
  final LMS lms;
  final String loh;
}
