import 'dart:convert';

import 'package:who_growth_standards/src/common.dart';
import 'package:who_growth_standards/src/math.dart';
import 'package:who_growth_standards/src/typedef.dart';
import 'package:who_growth_standards/src/types.dart';

part '../data/bmianthro.dart';

class BodyMassIndexData {
  BodyMassIndexData()
      : data = (json.decode(_bmianthro) as Map<String, dynamic>).map(
          (x, e) => MapEntry(
            x,
            BodyMassIndexGender(
              ageData: (e as Map<String, dynamic>).map((x, y) {
                y as Map<String, dynamic>;
                return MapEntry(
                  x,
                  BodyMassIndexAge(
                    lms: (l: y['l'], m: y['m'], s: y['s']),
                    loh: y['loh'] == 'L'
                        ? Measure.recumbent
                        : y['loh'] == 'H'
                            ? Measure.standing
                            : Measure.unknown,
                  ),
                );
              }),
            ),
          ),
        );

  final Map<String, BodyMassIndexGender> data;
}

class BodyMassIndexForAge {
  BodyMassIndexForAge._({
    required Sex sex,
    required Age age,
    required num measurementResult,
    // TODO(devsdocs): import reusable_tools and add Length and Weight for BMI calculcation, also consider the [Measure] type
    // required Measure measure,
    required BodyMassIndexData bodyMassIndexData,
  })  : _measurementResult = measurementResult,
        // _measure = measure,
        _sex = sex,
        _age = age,
        _mapGender = bodyMassIndexData.data {
    if (_age.totalDays >= 0 && _age.totalDays <= 1856) {
      throw Exception('Final age must be in range of 0 - 1856 days');
    }
  }

  factory BodyMassIndexForAge.male({
    required Age age,
    required num measurementResult,
    required BodyMassIndexData bodyMassIndexData,
  }) =>
      BodyMassIndexForAge._(
        sex: Sex.male,
        age: age,
        measurementResult: measurementResult,
        bodyMassIndexData: bodyMassIndexData,
      );

  factory BodyMassIndexForAge.female({
    required Age age,
    required num measurementResult,
    required BodyMassIndexData bodyMassIndexData,
  }) =>
      BodyMassIndexForAge._(
        sex: Sex.female,
        age: age,
        measurementResult: measurementResult,
        bodyMassIndexData: bodyMassIndexData,
      );

  final Sex _sex;
  final Age _age;
  // final Measure _measure;
  final num _measurementResult;
  final Map<String, BodyMassIndexGender> _mapGender;

  BodyMassIndexGender get _maleData => _mapGender['1']!;
  BodyMassIndexGender get _femaleData => _mapGender['2']!;

  BodyMassIndexAge get _ageData => (_sex == Sex.male ? _maleData : _femaleData)
      .ageData[_age.totalDays.toString()]!;

  num get zScore => adjustedZScore(
        y: _measurementResult,
        l: _ageData.lms.l,
        m: _ageData.lms.m,
        s: _ageData.lms.s,
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
  final Measure loh;
}
