import 'dart:convert';

import 'package:who_growth_standards/src/common.dart';
import 'package:who_growth_standards/src/math.dart';
import 'package:who_growth_standards/src/typedef.dart';
import 'package:who_growth_standards/src/types.dart';

part '../data/hcanthro.dart';

class HeadCircumferenceData {
  HeadCircumferenceData()
      : data = (json.decode(_hcanthro) as Map<String, dynamic>).map((u, e) {
          e as Map<String, dynamic>;
          return MapEntry(
            u,
            HeadCircumferenceGender(
              ageData: (e['data'] as Map<String, dynamic>).map((x, y) {
                y as Map<String, dynamic>;
                return MapEntry(
                  x,
                  HeadCircumferenceAge(lms: (l: y['l'], m: y['m'], s: y['s'])),
                );
              }),
            ),
          );
        });

  final Map<String, HeadCircumferenceGender> data;
}

class HeadCircumference {
  HeadCircumference({
    required Sex sex,
    required DateOfBirth dateOfBirth,
    required num measurementResult,
    required HeadCircumferenceData headCircumferenceData,
  })  : _measurementResult = measurementResult,
        _sex = sex,
        _age = Age(dateOfBirth),
        _mapGender = headCircumferenceData.data {
    assert(_age.totalDays >= 0 && _age.totalDays <= 1856);
  }

  final Sex _sex;
  final Age _age;
  final num _measurementResult;
  final Map<String, HeadCircumferenceGender> _mapGender;

  HeadCircumferenceGender get _maleData => _mapGender['1']!;
  HeadCircumferenceGender get _femaleData => _mapGender['2']!;

  HeadCircumferenceAge get _genderData =>
      (_sex == Sex.male ? _maleData : _femaleData)
          .ageData[_age.totalDays.toString()]!;

  num get zScore => zscore(
        y: _measurementResult,
        l: _genderData.lms.l,
        m: _genderData.lms.m,
        s: _genderData.lms.s,
      );
}

class HeadCircumferenceGender {
  HeadCircumferenceGender({required this.ageData});

  final Map<String, HeadCircumferenceAge> ageData;
}

class HeadCircumferenceAge {
  HeadCircumferenceAge({
    required this.lms,
  });
  final LMS lms;
}
