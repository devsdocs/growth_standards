import 'dart:convert';

import 'package:who_growth_standards/src/common.dart';
import 'package:who_growth_standards/src/math.dart';
import 'package:who_growth_standards/src/typedef.dart';
import 'package:who_growth_standards/src/types.dart';

part '../data/tsanthro.dart';

class TricepsSkinfoldData {
  TricepsSkinfoldData()
      : data = (json.decode(_tsanthro) as Map<String, dynamic>).map(
          (u, e) => MapEntry(
            u,
            TricepsSkinfoldAgeGender(
              ageData: (e as Map<String, dynamic>).map((x, y) {
                y as Map<String, dynamic>;
                return MapEntry(
                  x,
                  TricepsSkinfoldForAgeLMS(
                    lms: (l: y['l'], m: y['m'], s: y['s']),
                  ),
                );
              }),
            ),
          ),
        );

  final Map<String, TricepsSkinfoldAgeGender> data;
}

class TricepsSkinfoldForAge {
  TricepsSkinfoldForAge._({
    required Sex sex,
    required Age age,
    required num measurementResult,
    required TricepsSkinfoldData tricepsSkinfoldData,
  })  : _measurementResult = measurementResult,
        _sex = sex,
        _age = age,
        _mapGender = tricepsSkinfoldData.data {
    if (!(_age.totalDays >= 91 && _age.totalDays <= 1856)) {
      throw Exception('Final age must be in range of 91 - 1856 days');
    }
  }

  factory TricepsSkinfoldForAge.male({
    required Age age,
    required num measurementResult,
    required TricepsSkinfoldData tricepsSkinfoldData,
  }) =>
      TricepsSkinfoldForAge._(
        sex: Sex.male,
        age: age,
        measurementResult: measurementResult,
        tricepsSkinfoldData: tricepsSkinfoldData,
      );

  factory TricepsSkinfoldForAge.female({
    required Age age,
    required num measurementResult,
    required TricepsSkinfoldData tricepsSkinfoldData,
  }) =>
      TricepsSkinfoldForAge._(
        sex: Sex.female,
        age: age,
        measurementResult: measurementResult,
        tricepsSkinfoldData: tricepsSkinfoldData,
      );

  final Sex _sex;
  final Age _age;
  final num _measurementResult;
  final Map<String, TricepsSkinfoldAgeGender> _mapGender;

  TricepsSkinfoldAgeGender get _maleData => _mapGender['1']!;
  TricepsSkinfoldAgeGender get _femaleData => _mapGender['2']!;

  TricepsSkinfoldForAgeLMS get _ageData =>
      (_sex == Sex.male ? _maleData : _femaleData)
          .ageData[_age.totalDays.toString()]!;

  num get zScore => adjustedZScore(
        y: _measurementResult,
        l: _ageData.lms.l,
        m: _ageData.lms.m,
        s: _ageData.lms.s,
      );
}

class TricepsSkinfoldAgeGender {
  TricepsSkinfoldAgeGender({required this.ageData});
  final Map<String, TricepsSkinfoldForAgeLMS> ageData;
}

class TricepsSkinfoldForAgeLMS {
  TricepsSkinfoldForAgeLMS({
    required this.lms,
  });
  final LMS lms;
}
