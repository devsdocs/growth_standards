import 'dart:convert';

import 'package:reusable_tools/reusable_tools.dart';
import 'package:super_measurement/super_measurement.dart';
import 'package:who_growth_standards/src/age.dart';
import 'package:who_growth_standards/src/math.dart';
import 'package:who_growth_standards/src/typedef.dart';
import 'package:who_growth_standards/src/types.dart';

part '../data/wflanthro.dart';

class WeigthForLengthData {
  WeigthForLengthData()
      : data = (json.decode(_wflanthro) as Map<String, dynamic>).map(
          (u, e) => MapEntry(
            u,
            WeigthForLengthGender(
              lengthData: (e as Map<String, dynamic>).map((x, y) {
                y as Map<String, dynamic>;
                return MapEntry(
                  x,
                  WeigthForLengthLMS(
                    lms: (l: y['l'], m: y['m'], s: y['s']),
                    lorh: y['lorh'].toString().toLowerCase() == 'l'
                        ? LengthHeigthMeasurementPosition.recumbent
                        : LengthHeigthMeasurementPosition.standing,
                  ),
                );
              }),
            ),
          ),
        );

  final Map<String, WeigthForLengthGender> data;
}

class WeigthForLength {
  WeigthForLength._({
    required Sex sex,
    required Length lengthMeasurementResult,
    required Mass massMeasurementResult,
    required Age age,
    required LengthHeigthMeasurementPosition measure,
    required WeigthForLengthData weigthForLengthData,
  })  : _lengthHeight = lengthMeasurementResult,
        _weight = massMeasurementResult,
        _measure = measure,
        _sex = sex,
        _age = age,
        _mapGender = weigthForLengthData.data {
    if (!(_adjustedLength >= 45 && _adjustedLength <= 110)) {
      if (lengthMeasurementResult.toCentimeters.value! >= 45 &&
          lengthMeasurementResult.toCentimeters.value! <= 110) {
        throw Exception('Please correcting measurement position based on age');
      } else {
        throw Exception('Final length must be in range of 45 - 110 cm');
      }
    }
  }

  factory WeigthForLength.maleStandingPosition({
    required Length height,
    required Mass weight,
    required WeigthForLengthData weigthForLengthData,
    required Age age,
  }) =>
      WeigthForLength._(
        sex: Sex.male,
        age: age,
        measure: LengthHeigthMeasurementPosition.standing,
        lengthMeasurementResult: height,
        massMeasurementResult: weight,
        weigthForLengthData: weigthForLengthData,
      );

  factory WeigthForLength.maleRecumbentPosition({
    required Length length,
    required Mass weight,
    required WeigthForLengthData weigthForLengthData,
    required Age age,
  }) =>
      WeigthForLength._(
        sex: Sex.male,
        age: age,
        measure: LengthHeigthMeasurementPosition.recumbent,
        lengthMeasurementResult: length,
        massMeasurementResult: weight,
        weigthForLengthData: weigthForLengthData,
      );

  factory WeigthForLength.femaleStandingPosition({
    required Length height,
    required Mass weight,
    required WeigthForLengthData weigthForLengthData,
    required Age age,
  }) =>
      WeigthForLength._(
        sex: Sex.female,
        age: age,
        measure: LengthHeigthMeasurementPosition.standing,
        lengthMeasurementResult: height,
        massMeasurementResult: weight,
        weigthForLengthData: weigthForLengthData,
      );

  factory WeigthForLength.femaleRecumbentPosition({
    required Length length,
    required Mass weight,
    required WeigthForLengthData weigthForLengthData,
    required Age age,
  }) =>
      WeigthForLength._(
        sex: Sex.female,
        age: age,
        measure: LengthHeigthMeasurementPosition.recumbent,
        lengthMeasurementResult: length,
        massMeasurementResult: weight,
        weigthForLengthData: weigthForLengthData,
      );

  final Sex _sex;
  final Age _age;
  final Length _lengthHeight;
  final Mass _weight;
  final LengthHeigthMeasurementPosition _measure;
  final Map<String, WeigthForLengthGender> _mapGender;

  num get _adjustedLength => adjustedLengthHeight(
        measure: _measure,
        ageInDays: _age.totalDays,
        lengthHeight: _lengthHeight.toCentimeters.value!,
      );

  WeigthForLengthGender get _maleData => _mapGender['1']!;
  WeigthForLengthGender get _femaleData => _mapGender['2']!;

  WeigthForLengthLMS get _ageData =>
      (_sex == Sex.male ? _maleData : _femaleData)
          .lengthData[_adjustedLength.toDouble().toPrecision(1).toString()]!;

  num get zScore => adjustedZScore(
        y: _weight.toKilograms.value!,
        l: _ageData.lms.l,
        m: _ageData.lms.m,
        s: _ageData.lms.s,
      );

  num get percentile => zScoreToPercentile(zScore);
}

class WeigthForLengthGender {
  WeigthForLengthGender({required this.lengthData});

  final Map<String, WeigthForLengthLMS> lengthData;
}

class WeigthForLengthLMS {
  WeigthForLengthLMS({
    required this.lms,
    required this.lorh,
  });
  final LMS lms;
  final LengthHeigthMeasurementPosition lorh;
}
