import 'dart:convert';

import 'package:super_measurement/super_measurement.dart';
import 'package:who_growth_standards/src/age.dart';
import 'package:who_growth_standards/src/math.dart';
import 'package:who_growth_standards/src/typedef.dart';
import 'package:who_growth_standards/src/types.dart';

part '../data/tsanthro.dart';

class TricepsSkinfoldForAgeData {
  TricepsSkinfoldForAgeData()
      : _data = (json.decode(_tsanthro) as Map<String, dynamic>).map(
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

  final Map<String, TricepsSkinfoldAgeGender> _data;
}

class TricepsSkinfoldForAge {
  TricepsSkinfoldForAge({
    required Sex sex,
    required Age age,
    required Length measurementResult,
    required TricepsSkinfoldForAgeData tricepsSkinfoldData,
  })  : _measurementResult = measurementResult,
        _sex = sex,
        _age = age,
        _mapGender = tricepsSkinfoldData._data {
    if (!(_age.totalDays >= 91 && _age.totalDays <= 1856)) {
      throw Exception('Final age must be in range of 91 - 1856 days');
    }
  }

  final Sex _sex;
  final Age _age;
  final Length _measurementResult;
  final Map<String, TricepsSkinfoldAgeGender> _mapGender;

  TricepsSkinfoldAgeGender get _maleData => _mapGender['1']!;
  TricepsSkinfoldAgeGender get _femaleData => _mapGender['2']!;

  TricepsSkinfoldForAgeLMS get _ageData =>
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
