import 'dart:convert';

import 'package:reusable_tools/reusable_tools.dart';
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

  final Map<String, WeigthForLengthGender> data;
}

class WeigthForLength {
  WeigthForLength._({
    required Sex sex,
    required num measurementResult,
    // TODO(devsdocs): import reusable_tools and add Length and Weight for BMI calculcation, also consider the [Measure] type
    // required Measure measure,
    required WeigthForLengthData weigthForLengthData,
  })  : _measurementResult = measurementResult,
        // _measure = measure,
        _sex = sex,
        _mapGender = weigthForLengthData.data {
    if (!(measurementResult >= 45 && measurementResult <= 110)) {
      throw Exception('Length must be in range of 45 - 110 cm');
    }
  }

  factory WeigthForLength.male({
    required num measurementResult,
    required WeigthForLengthData weigthForLengthData,
  }) =>
      WeigthForLength._(
        sex: Sex.male,
        measurementResult: measurementResult,
        weigthForLengthData: weigthForLengthData,
      );

  factory WeigthForLength.female({
    required num measurementResult,
    required WeigthForLengthData weigthForLengthData,
  }) =>
      WeigthForLength._(
        sex: Sex.female,
        measurementResult: measurementResult,
        weigthForLengthData: weigthForLengthData,
      );

  final Sex _sex;

  final num _measurementResult;
  // final Measure _measure;
  final Map<String, WeigthForLengthGender> _mapGender;

  WeigthForLengthGender get _maleData => _mapGender['1']!;
  WeigthForLengthGender get _femaleData => _mapGender['2']!;

  WeigthForLengthLMS get _ageData =>
      (_sex == Sex.male ? _maleData : _femaleData)
          .lengthData[_measurementResult.toDouble().toPrecision(1).toString()]!;

  num get zScore => adjustedZScore(
        y: _measurementResult,
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
