import 'dart:convert';

import 'package:who_growth_standards/src/common.dart';
import 'package:who_growth_standards/src/math.dart';
import 'package:who_growth_standards/src/typedef.dart';
import 'package:who_growth_standards/src/types.dart';

part '../data/lenanthro.dart';

class LengthForAgeData {
  LengthForAgeData()
      : data = (json.decode(_lenanthro) as Map<String, dynamic>).map(
          (u, e) => MapEntry(
            u,
            LengthForAgeGender(
              ageData: (e as Map<String, dynamic>).map((x, y) {
                y as Map<String, dynamic>;
                return MapEntry(
                  x,
                  LengthAge(
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

  final Map<String, LengthForAgeGender> data;
}

class LengthForAge {
  LengthForAge._({
    required Sex sex,
    required Age age,
    required num measurementResult,
    // TODO(devsdocs): import reusable_tools and add Length and Weight for BMI calculcation, also consider the [Measure] type
    // required Measure measure,
    required LengthForAgeData lengthForAgeData,
  })  : _measurementResult = measurementResult,
        // _measure = measure,
        _sex = sex,
        _age = age,
        _mapGender = lengthForAgeData.data {
    if (_age.totalDays >= 0 && _age.totalDays <= 1856) {
      throw Exception('Final age must be in range of 0 - 1856 days');
    }
  }

  factory LengthForAge.male({
    required Age age,
    required num measurementResult,
    required LengthForAgeData lengthForAgeData,
  }) =>
      LengthForAge._(
        sex: Sex.male,
        age: age,
        measurementResult: measurementResult,
        lengthForAgeData: lengthForAgeData,
      );

  factory LengthForAge.female({
    required Age age,
    required num measurementResult,
    required LengthForAgeData lengthForAgeData,
  }) =>
      LengthForAge._(
        sex: Sex.female,
        age: age,
        measurementResult: measurementResult,
        lengthForAgeData: lengthForAgeData,
      );

  final Sex _sex;
  final Age _age;
  final num _measurementResult;
  // final Measure _measure;
  final Map<String, LengthForAgeGender> _mapGender;

  LengthForAgeGender get _maleData => _mapGender['1']!;
  LengthForAgeGender get _femaleData => _mapGender['2']!;

  LengthAge get _ageData => (_sex == Sex.male ? _maleData : _femaleData)
      .ageData[_age.totalDays.toString()]!;

  num get zScore => zscore(
        y: _measurementResult,
        l: _ageData.lms.l,
        m: _ageData.lms.m,
        s: _ageData.lms.s,
      );
}

class LengthForAgeGender {
  LengthForAgeGender({required this.ageData});
  final Map<String, LengthAge> ageData;
}

class LengthAge {
  LengthAge({
    required this.lms,
    required this.loh,
  });
  final LMS lms;
  final Measure loh;
}
