import 'dart:math';

import 'package:dart_numerics/dart_numerics.dart';
import 'package:growth_standards/src/common/model/age.dart';
import 'package:growth_standards/src/common/model/lms.dart';
import 'package:growth_standards/src/common/types.dart';
import 'package:super_measurement/super_measurement.dart';

/// SD calculation using [LMS]
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

/// Adjusted [Length] flaged by [LengthHeigthMeasurementPosition]
/// based on WHO/CDC requirements
Centimeters adjustedLengthHeight({
  required Age age,
  required LengthHeigthMeasurementPosition measure,
  required Length lengthHeight,
  required AdjustedLengthType type,
}) {
  num toCm = lengthHeight.toCentimeters.value!;
  final isStanding = measure == LengthHeigthMeasurementPosition.standing;
  final ageMos = age.ageInTotalMonthsByNow;
  final ageDays = age.ageInTotalDaysByNow;
  final val = type.value;

  if (type == AdjustedLengthType.who) {
    if (ageDays <= 730 && isStanding) {
      toCm += val;
    }
    if (ageDays > 730 && !isStanding) {
      toCm -= val;
    }
  } else {
    if (ageMos < 24 && isStanding) {
      toCm += val;
    }
    if (ageMos >= 24 && !isStanding) {
      toCm -= val;
    }
  }
  return Centimeters(toCm);
}

/// Normal distribution equation, the name [pnorm] inspired from R language
num pnorm(num zScore) => 0.5 * (1 + erf(zScore / sqrt(2)));

/// Normal distribution equation, the name [qnorm] inspired from R language
num qnorm(num percentile) => sqrt(2) * erfInv(2 * percentile - 1);
