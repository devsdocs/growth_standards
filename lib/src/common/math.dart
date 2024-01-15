import 'dart:math';

import 'package:dart_numerics/dart_numerics.dart';
import 'package:growth_standards/src/common/model/age.dart';
import 'package:growth_standards/src/common/model/lms.dart';
import 'package:growth_standards/src/common/types.dart';
import 'package:super_measurement/super_measurement.dart';

num standardDeviationCalculation(
  num sd, {
  required LMS lms,
}) =>
    lms.m * pow(1 + lms.l * lms.s * sd, 1 / lms.l);

/// COMPUTATION OF CENTILES AND Z-SCORES FOR
///
/// HEAD CIRCUMFERENCE-FOR-AGE,
///
/// LENGTH-FOR-AGE,
///
/// HEIGHT-FOR-AGE,
num zScoreCalculation(
  num y, {
  required LMS lms,
}) =>
    (pow(y / lms.m, lms.l) - 1) / (lms.s * lms.l);

/// COMPUTATION OF CENTILES AND Z-SCORES FOR
///
/// BMI-FOR-AGE,
///
/// WEIGHT-FOR-HEIGHT,
///
/// WEIGHT-FOR-LENGTH,
///
/// WEIGHT-FOR-AGE,
///
/// ARM CIRCUMFERENCE-FOR-AGE,
///
/// TRICEPS SKINFOLD-FOR-AGE,
///
/// SUBSCAPULAR SKINFOLD-FOR-AGE
num adjustedZScoreCalculation(
  num y, {
  required LMS lms,
}) {
  // print('y: $y, l:$l, m:$m, s:$s');

  final num zScore = lms.zScore(y);

  if (zScore > 3) {
    final sD3pos = lms.stDev(3);
    final sD2pos = lms.stDev(2);
    final sD23pos = sD3pos - sD2pos;

    return 3 + ((y - sD3pos) / sD23pos);
  }
  if (zScore < -3) {
    final sD3neg = lms.stDev(-3);
    final sD2neg = lms.stDev(-2);
    final sD23neg = sD2neg - sD3neg;

    return -3 + ((y - sD3neg) / sD23neg);
  }
  return zScore;
}

Centimeters cdcAdjustedLengthHeight({
  required Age age,
  required LengthHeigthMeasurementPosition measure,
  required Length lengthHeight,
}) {
  num adjustedLenHeight = lengthHeight.toCentimeters.value!;

  if (age.ageInTotalMonthsByNow < 24 &&
      measure == LengthHeigthMeasurementPosition.standing) {
    adjustedLenHeight += 0.8;
    return Centimeters(adjustedLenHeight);
  } else if (age.ageInTotalMonthsByNow >= 24 &&
      measure == LengthHeigthMeasurementPosition.recumbent) {
    adjustedLenHeight -= 0.8;
    return Centimeters(adjustedLenHeight);
  } else {
    return Centimeters(adjustedLenHeight);
  }
}

Centimeters whoAdjustedLengthHeight({
  required Age age,
  required LengthHeigthMeasurementPosition measure,
  required Length lengthHeight,
}) {
  num adjustedLenHeight = lengthHeight.toCentimeters.value!;

  if (age.ageInTotalDaysByNow <= 730 &&
      measure == LengthHeigthMeasurementPosition.standing) {
    adjustedLenHeight += 0.7;
    return Centimeters(adjustedLenHeight);
  } else if (age.ageInTotalDaysByNow > 730 &&
      measure == LengthHeigthMeasurementPosition.recumbent) {
    adjustedLenHeight -= 0.7;
    return Centimeters(adjustedLenHeight);
  } else {
    return Centimeters(adjustedLenHeight);
  }
}

num pnorm(num zScore) => 0.5 * (1 + erf(zScore / sqrt(2)));

num qnorm(num percentile) => sqrt(2) * erfInv(2 * percentile - 1);
