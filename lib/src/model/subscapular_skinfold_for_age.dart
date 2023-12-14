import 'dart:convert';

import 'package:super_measurement/super_measurement.dart';
import 'package:who_growth_standards/src/age.dart';
import 'package:who_growth_standards/src/math.dart';
import 'package:who_growth_standards/src/typedef.dart';
import 'package:who_growth_standards/src/types.dart';

part '../data/ssanthro.dart';

class SubscapularSkinfoldForAgeData {
  SubscapularSkinfoldForAgeData()
      : _data = (json.decode(_ssanthro) as Map<String, dynamic>).map(
          (u, e) => MapEntry(
            u,
            SubscapularSkinfoldAgeGender(
              ageData: (e as Map<String, dynamic>).map((x, y) {
                y as Map<String, dynamic>;
                return MapEntry(
                  x,
                  SubscapularSkinfoldForAgeLMS(
                    lms: (l: y['l'], m: y['m'], s: y['s']),
                  ),
                );
              }),
            ),
          ),
        );

  final Map<String, SubscapularSkinfoldAgeGender> _data;
}

class SubscapularSkinfoldForAge {
  SubscapularSkinfoldForAge({
    required Sex sex,
    required Age age,
    required Length measurementResult,
    required SubscapularSkinfoldForAgeData subscapularSkinfoldData,
  })  : _measurementResult = measurementResult,
        _sex = sex,
        _age = age,
        _mapGender = subscapularSkinfoldData._data {
    if (!(_age.totalDays >= 91 && _age.totalDays <= 1856)) {
      throw Exception('Final age must be in range of 91 - 1856 days');
    }
  }

  final Sex _sex;
  final Age _age;
  final Length _measurementResult;
  final Map<String, SubscapularSkinfoldAgeGender> _mapGender;

  SubscapularSkinfoldAgeGender get _maleData => _mapGender['1']!;
  SubscapularSkinfoldAgeGender get _femaleData => _mapGender['2']!;

  SubscapularSkinfoldForAgeLMS get _ageData =>
      (_sex == Sex.male ? _maleData : _femaleData)
          .ageData[_age.totalDays.toString()]!;

  num get zScore => adjustedZScore(
        y: _measurementResult.toCentimeters.value!,
        l: _ageData.lms.l,
        m: _ageData.lms.m,
        s: _ageData.lms.s,
      );

  num get percentile => zScoreToPercentile(zScore);
}

class SubscapularSkinfoldAgeGender {
  SubscapularSkinfoldAgeGender({required this.ageData});
  final Map<String, SubscapularSkinfoldForAgeLMS> ageData;
}

class SubscapularSkinfoldForAgeLMS {
  SubscapularSkinfoldForAgeLMS({
    required this.lms,
  });
  final LMS lms;
}
