import 'dart:math';

import 'package:dart_numerics/dart_numerics.dart';
import 'package:growth_standards/src/common/model/age.dart';
import 'package:growth_standards/src/common/model/lms.dart';
import 'package:growth_standards/src/common/types.dart';
import 'package:super_measurement/super_measurement.dart';

/// SD calculation using [LMS]
num standardDeviationCalculation(num sd, {required LMS lms}) {
  if (lms.l.abs() < 1e-7) {
    return lms.m * exp(lms.s * sd);
  }
  return lms.m * pow(1 + lms.l * lms.s * sd, 1 / lms.l);
}

/// COMPUTATION OF CENTILES AND Z-SCORES FOR
///
/// HEAD CIRCUMFERENCE-FOR-AGE,
///
/// LENGTH-FOR-AGE,
///
/// HEIGHT-FOR-AGE,
num zScoreCalculation(num y, {required LMS lms}) {
  if (y <= 0) {
    throw ArgumentError('Measurement must be strictly positive, got $y');
  }
  if (lms.l.abs() < 1e-7) {
    return log(y / lms.m) / lms.s;
  }
  return (pow(y / lms.m, lms.l) - 1) / (lms.s * lms.l);
}

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
num adjustedZScoreCalculation(num y, {required LMS lms}) {
  // print('y: $y, l:$l, m:$m, s:$s');

  final num zScore = lms.zScore(y);

  if (zScore > 3) {
    final sD3pos = lms.standardDeviation(3);
    final sD2pos = lms.standardDeviation(2);
    final sD23pos = sD3pos - sD2pos;

    return 3 + ((y - sD3pos) / sD23pos);
  }
  if (zScore < -3) {
    final sD3neg = lms.standardDeviation(-3);
    final sD2neg = lms.standardDeviation(-2);
    final sD23neg = sD2neg - sD3neg;

    return -3 + ((y - sD3neg) / sD23neg);
  }
  return zScore;
}

/// Adjusted [Length] flagged by [LengthHeightMeasurementPosition]
/// based on WHO/CDC requirements
Length$Centimeter adjustedLengthHeight({
  required Age age,
  required LengthHeightMeasurementPosition measure,
  required Length lengthHeight,
  required AdjustedLengthType type,
}) {
  num toCm = lengthHeight.toCentimeter.value;
  final isStanding = measure == LengthHeightMeasurementPosition.standing;
  final ageMos = age.ageInTotalMonthsByNow;
  final ageDays = age.ageInTotalDaysByNow;
  final val = type.value;

  final isAdd = type == AdjustedLengthType.who
      ? ageDays <= 730 && isStanding
      : ageMos < 24 && isStanding;

  final isSubtract = type == AdjustedLengthType.who
      ? ageDays > 730 && !isStanding
      : ageMos >= 24 && !isStanding;

  if (isAdd) {
    toCm += val;
  }
  if (isSubtract) {
    toCm -= val;
  }

  return Length$Centimeter(toCm);
}

/// Normal distribution equation, the name [pnorm] inspired from R language
num pnorm(num zScore) => 0.5 * (1 + erf(zScore / _sq2));

/// Normal distribution equation, the name [qnorm] inspired from R language
num qnorm(num percentile) {
  final p = percentile > 1.0 ? percentile / 100 : percentile;
  if (p <= 0) return double.negativeInfinity;
  if (p >= 1) return double.infinity;
  return _sq2 * erfInv(2 * p - 1);
}

final _sq2 = sqrt(2);
