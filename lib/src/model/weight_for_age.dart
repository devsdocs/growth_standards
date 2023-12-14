import 'dart:convert';

import 'package:super_measurement/super_measurement.dart';
import 'package:who_growth_standards/src/age.dart';
import 'package:who_growth_standards/src/math.dart';
import 'package:who_growth_standards/src/typedef.dart';
import 'package:who_growth_standards/src/types.dart';

part '../data/weianthro.dart';

class WeightForAgeData {
  WeightForAgeData()
      : data = (json.decode(_weianthro) as Map<String, dynamic>).map(
          (u, e) => MapEntry(
            u,
            WeightForAgeGender(
              ageData: (e as Map<String, dynamic>).map((x, y) {
                y as Map<String, dynamic>;
                return MapEntry(
                  x,
                  WeightForAgeLMS(lms: (l: y['l'], m: y['m'], s: y['s'])),
                );
              }),
            ),
          ),
        );

  final Map<String, WeightForAgeGender> data;
}

class WeightForAge {
  WeightForAge._({
    required Sex sex,
    required Age age,
    required Mass weight,
    required WeightForAgeData weightForAgeData,
  })  : _measurementResult = weight,
        _sex = sex,
        _age = age,
        _mapGender = weightForAgeData.data {
    if (!(_age.totalDays >= 0 && _age.totalDays <= 1856)) {
      throw Exception('Final age must be in range of 0 - 1856 days');
    }
  }

  factory WeightForAge.male({
    required Age age,
    required Mass weight,
    required WeightForAgeData weightForAgeData,
  }) =>
      WeightForAge._(
        sex: Sex.male,
        age: age,
        weight: weight,
        weightForAgeData: weightForAgeData,
      );

  factory WeightForAge.female({
    required Age age,
    required Mass weight,
    required WeightForAgeData weightForAgeData,
  }) =>
      WeightForAge._(
        sex: Sex.female,
        age: age,
        weight: weight,
        weightForAgeData: weightForAgeData,
      );

  final Sex _sex;
  final Age _age;
  final Mass _measurementResult;
  final Map<String, WeightForAgeGender> _mapGender;

  WeightForAgeGender get _maleData => _mapGender['1']!;
  WeightForAgeGender get _femaleData => _mapGender['2']!;

  WeightForAgeLMS get _ageData => (_sex == Sex.male ? _maleData : _femaleData)
      .ageData[_age.totalDays.toString()]!;

  num get zScore => adjustedZScore(
        y: _measurementResult.toKilograms.value!,
        l: _ageData.lms.l,
        m: _ageData.lms.m,
        s: _ageData.lms.s,
      );

  num get percentile => zScoreToPercentile(zScore);
}

class WeightForAgeGender {
  WeightForAgeGender({required this.ageData});

  final Map<String, WeightForAgeLMS> ageData;
}

class WeightForAgeLMS {
  WeightForAgeLMS({
    required this.lms,
  });
  final LMS lms;
}
