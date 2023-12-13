import 'dart:convert';

import 'package:reusable_tools/reusable_tools.dart';
import 'package:super_measurement/super_measurement.dart';
import 'package:who_growth_standards/src/common.dart';
import 'package:who_growth_standards/src/math.dart';
import 'package:who_growth_standards/src/typedef.dart';
import 'package:who_growth_standards/src/types.dart';

part '../data/wfhanthro.dart';

class WeightForHeightData {
  WeightForHeightData()
      : data = (json.decode(_wfhanthro) as Map<String, dynamic>).map(
          (u, e) => MapEntry(
            u,
            WeightForHeightGender(
              heightData: (e as Map<String, dynamic>).map((x, y) {
                y as Map<String, dynamic>;
                return MapEntry(
                  x,
                  WeightForHeightLMS(
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

  final Map<String, WeightForHeightGender> data;
}

class WeightForHeight {
  WeightForHeight._({
    required Sex sex,
    required Age age,
    required Length lengthMeasurementResult,
    required Mass massMeasurementResult,
    required Measure measure,
    required WeightForHeightData weightForHeightData,
  })  : _lengthMeasurementResult = lengthMeasurementResult,
        _measure = measure,
        _sex = sex,
        _massMeasurementResult = massMeasurementResult,
        _age = age,
        _mapGender = weightForHeightData.data {
    if (!(_adjustedHeight >= 65 && _adjustedHeight <= 120)) {
      if (lengthMeasurementResult.toCentimeters.value! >= 65 &&
          lengthMeasurementResult.toCentimeters.value! <= 120) {
        throw Exception('Please correcting measurement position based on age');
      } else {
        throw Exception('Final height must be in range of 65 - 120 cm');
      }
    }
  }

  factory WeightForHeight.male({
    required Length lengthMeasurementResult,
    required Mass massMeasurementResult,
    required Measure measure,
    required WeightForHeightData weightForHeightData,
    required Age age,
  }) =>
      WeightForHeight._(
        sex: Sex.male,
        lengthMeasurementResult: lengthMeasurementResult,
        weightForHeightData: weightForHeightData,
        massMeasurementResult: massMeasurementResult,
        measure: measure,
        age: age,
      );

  factory WeightForHeight.female({
    required Length lengthMeasurementResult,
    required Mass massMeasurementResult,
    required WeightForHeightData weightForHeightData,
    required Measure measure,
    required Age age,
  }) =>
      WeightForHeight._(
        sex: Sex.female,
        lengthMeasurementResult: lengthMeasurementResult,
        massMeasurementResult: massMeasurementResult,
        weightForHeightData: weightForHeightData,
        measure: measure,
        age: age,
      );

  final Sex _sex;
  final Age _age;
  final Length _lengthMeasurementResult;
  final Mass _massMeasurementResult;
  final Measure _measure;
  final Map<String, WeightForHeightGender> _mapGender;

  num get _adjustedHeight => adjustedLengthHeight(
        measure: _measure,
        ageInDays: _age.totalDays,
        lengthHeight: _lengthMeasurementResult.toCentimeters.value!,
      );

  WeightForHeightGender get _maleData => _mapGender['1']!;
  WeightForHeightGender get _femaleData => _mapGender['2']!;

  WeightForHeightLMS get _ageData =>
      (_sex == Sex.male ? _maleData : _femaleData)
          .heightData[_adjustedHeight.toDouble().toPrecision(1).toString()]!;

  num get zScore => adjustedZScore(
        y: _massMeasurementResult.toKilograms.value!,
        l: _ageData.lms.l,
        m: _ageData.lms.m,
        s: _ageData.lms.s,
      );
}

class WeightForHeightGender {
  WeightForHeightGender({required this.heightData});

  final Map<String, WeightForHeightLMS> heightData;
}

class WeightForHeightLMS {
  WeightForHeightLMS({
    required this.lms,
    required this.lorh,
  });
  final LMS lms;
  final Measure lorh;
}
