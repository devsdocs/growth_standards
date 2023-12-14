import 'dart:convert';

import 'package:super_measurement/super_measurement.dart';
import 'package:who_growth_standards/src/age.dart';
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
                  LengthForAgeLMS(
                    lms: (l: y['l'], m: y['m'], s: y['s']),
                    loh: y['loh'].toString().toLowerCase() == 'l'
                        ? LengthHeigthMeasurementPosition.recumbent
                        : LengthHeigthMeasurementPosition.standing,
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
    required Length lengthHeight,
    required LengthHeigthMeasurementPosition measure,
    required LengthForAgeData lengthForAgeData,
  })  : _lengthHeight = lengthHeight,
        _measure = measure,
        _sex = sex,
        _age = age,
        _mapGender = lengthForAgeData.data {
    if (!(_age.totalDays >= 0 && _age.totalDays <= 1856)) {
      throw Exception('Final age must be in range of 0 - 1856 days');
    }
  }

  factory LengthForAge.maleStandingPosition({
    required Age age,
    required Length height,
    required LengthForAgeData lengthForAgeData,
  }) =>
      LengthForAge._(
        sex: Sex.male,
        age: age,
        lengthHeight: height,
        lengthForAgeData: lengthForAgeData,
        measure: LengthHeigthMeasurementPosition.standing,
      );

  factory LengthForAge.maleRecumbentPosition({
    required Age age,
    required Length length,
    required LengthForAgeData lengthForAgeData,
  }) =>
      LengthForAge._(
        sex: Sex.male,
        age: age,
        lengthHeight: length,
        lengthForAgeData: lengthForAgeData,
        measure: LengthHeigthMeasurementPosition.recumbent,
      );

  factory LengthForAge.femaleStandingPosition({
    required Age age,
    required Length heigth,
    required LengthForAgeData lengthForAgeData,
  }) =>
      LengthForAge._(
        sex: Sex.female,
        age: age,
        lengthHeight: heigth,
        lengthForAgeData: lengthForAgeData,
        measure: LengthHeigthMeasurementPosition.standing,
      );

  factory LengthForAge.femaleRecumbentPosition({
    required Age age,
    required Length length,
    required LengthForAgeData lengthForAgeData,
  }) =>
      LengthForAge._(
        sex: Sex.female,
        age: age,
        lengthHeight: length,
        lengthForAgeData: lengthForAgeData,
        measure: LengthHeigthMeasurementPosition.recumbent,
      );

  final Sex _sex;
  final Age _age;
  final Length _lengthHeight;
  final LengthHeigthMeasurementPosition _measure;
  final Map<String, LengthForAgeGender> _mapGender;

  LengthForAgeGender get _maleData => _mapGender['1']!;
  LengthForAgeGender get _femaleData => _mapGender['2']!;

  LengthForAgeLMS get _ageData => (_sex == Sex.male ? _maleData : _femaleData)
      .ageData[_age.totalDays.toString()]!;

  num get zScore => zscore(
        y: adjustedLengthHeight(
          lengthHeight: _lengthHeight.toCentimeters.value!,
          ageInDays: _age.totalDays,
          measure: _measure,
        ),
        l: _ageData.lms.l,
        m: _ageData.lms.m,
        s: _ageData.lms.s,
      );

  num get percentile => zScoreToPercentile(zScore);
}

class LengthForAgeGender {
  LengthForAgeGender({required this.ageData});
  final Map<String, LengthForAgeLMS> ageData;
}

class LengthForAgeLMS {
  LengthForAgeLMS({
    required this.lms,
    required this.loh,
  });
  final LMS lms;
  final LengthHeigthMeasurementPosition loh;
}
