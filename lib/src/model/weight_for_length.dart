import 'dart:convert';

import 'package:reusable_tools/reusable_tools.dart';
import 'package:super_measurement/super_measurement.dart';
import 'package:who_growth_standards/src/common.dart';
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
                        ? Measure.recumbent
                        : Measure.standing,
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
    required Measure measure,
    required WeigthForLengthData weigthForLengthData,
  })  : _lengthMeasurementResult = lengthMeasurementResult,
        _massMeasurementResult = massMeasurementResult,
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

  factory WeigthForLength.male({
    required Length lengthMeasurementResult,
    required Mass massMeasurementResult,
    required WeigthForLengthData weigthForLengthData,
    required Age age,
    required Measure measure,
  }) =>
      WeigthForLength._(
        sex: Sex.male,
        age: age,
        measure: measure,
        lengthMeasurementResult: lengthMeasurementResult,
        massMeasurementResult: massMeasurementResult,
        weigthForLengthData: weigthForLengthData,
      );

  factory WeigthForLength.female({
    required Length lengthMeasurementResult,
    required Mass massMeasurementResult,
    required WeigthForLengthData weigthForLengthData,
    required Age age,
    required Measure measure,
  }) =>
      WeigthForLength._(
        sex: Sex.female,
        age: age,
        measure: measure,
        lengthMeasurementResult: lengthMeasurementResult,
        massMeasurementResult: massMeasurementResult,
        weigthForLengthData: weigthForLengthData,
      );

  final Sex _sex;
  final Age _age;
  final Length _lengthMeasurementResult;
  final Mass _massMeasurementResult;
  final Measure _measure;
  final Map<String, WeigthForLengthGender> _mapGender;

  num get _adjustedLength => adjustedLengthHeight(
        measure: _measure,
        ageInDays: _age.totalDays,
        lengthHeight: _lengthMeasurementResult.toCentimeters.value!,
      );

  WeigthForLengthGender get _maleData => _mapGender['1']!;
  WeigthForLengthGender get _femaleData => _mapGender['2']!;

  WeigthForLengthLMS get _ageData =>
      (_sex == Sex.male ? _maleData : _femaleData)
          .lengthData[_adjustedLength.toDouble().toPrecision(1).toString()]!;

  num get zScore => adjustedZScore(
        y: _massMeasurementResult.toKilograms.value!,
        l: _ageData.lms.l,
        m: _ageData.lms.m,
        s: _ageData.lms.s,
      );
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
  final Measure lorh;
}
