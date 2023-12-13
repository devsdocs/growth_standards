import 'dart:convert';

import 'package:reusable_tools/reusable_tools.dart';
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
                    lorh: y['lorh'] == 'L'
                        ? Measure.recumbent
                        : y['lorh'] == 'H'
                            ? Measure.standing
                            : Measure.unknown,
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
    required num measurementResult,
    // TODO(devsdocs): import reusable_tools and add Length and Weight for BMI calculcation, also consider the [Measure] type
    // required Measure measure,
    required WeightForHeightData weightForHeightData,
  })  : _measurementResult = measurementResult,
        // _measure = measure,
        _sex = sex,
        _mapGender = weightForHeightData.data {
    if (!(measurementResult >= 65 && measurementResult <= 120)) {
      throw Exception('Height must be in range of 65 - 120 cm');
    }
  }

  factory WeightForHeight.male({
    required num measurementResult,
    required WeightForHeightData weightForHeightData,
  }) =>
      WeightForHeight._(
        sex: Sex.male,
        measurementResult: measurementResult,
        weightForHeightData: weightForHeightData,
      );

  factory WeightForHeight.female({
    required num measurementResult,
    required WeightForHeightData weightForHeightData,
  }) =>
      WeightForHeight._(
        sex: Sex.female,
        measurementResult: measurementResult,
        weightForHeightData: weightForHeightData,
      );

  final Sex _sex;

  final num _measurementResult;
  // final Measure _measure;
  final Map<String, WeightForHeightGender> _mapGender;

  WeightForHeightGender get _maleData => _mapGender['1']!;
  WeightForHeightGender get _femaleData => _mapGender['2']!;

  WeightForHeightLMS get _ageData =>
      (_sex == Sex.male ? _maleData : _femaleData)
          .heightData[_measurementResult.toDouble().toPrecision(1).toString()]!;

  num get zScore => adjustedZScore(
        y: _measurementResult,
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
