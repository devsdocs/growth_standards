import 'dart:math';

import 'package:reusable_tools/reusable_tools.dart';
import 'package:who_growth_standards/src/types.dart';

double _rawZscore({
  required num y,
  required num l,
  required num m,
  required num s,
}) =>
    (pow(y / m, l) - 1) / (s * l);

/// COMPUTATION OF CENTILES AND Z-SCORES FOR
///
/// HEAD CIRCUMFERENCE-FOR-AGE,
///
/// LENGTH-FOR-AGE,
///
/// HEIGHT-FOR-AGE,
num zscore({
  required num y,
  required num l,
  required num m,
  required num s,
}) =>
    _rawZscore(y: y, l: l, m: m, s: s).toPrecision(2);

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
num adjustedZScore({
  required num y,
  required num l,
  required num m,
  required num s,
}) {
  num calcSD(double sd) => m * pow(1 + l * s * sd, 1 / l);

  // print('y: $y, l:$l, m:$m, s:$s');

  final double zscore = _rawZscore(y: y, m: m, l: l, s: s);

  if (zscore > 3) {
    final sD3pos = calcSD(3);
    final calcSD2pos = calcSD(2);
    final sD23pos = sD3pos - calcSD2pos;

    final cal = 3 + ((y - sD3pos) / sD23pos);
    return cal.toPrecision(2);
  }
  if (zscore < -3) {
    final sD3neg = calcSD(-3);
    final calcSD2neg = calcSD(-2);
    final sD23neg = calcSD2neg - sD3neg;

    final cal = -3 + ((y - sD3neg) / sD23neg);
    return cal.toPrecision(2);
  }
  return zscore.toPrecision(2);
}

num adjustedLengthHeight({
  required int ageInDays,
  required Measure measure,
  required num lengthHeight,
}) {
  // Assuming round_up function rounds the age to the nearest whole number.
  // Dart's round() function rounds to the nearest integer.

  num adjustedLenHeight = lengthHeight;

  if (ageInDays <= 730 && measure == Measure.standing) {
    adjustedLenHeight += 0.7;
  } else if (ageInDays > 730 && measure == Measure.recumbent) {
    adjustedLenHeight -= 0.7;
  }

  return adjustedLenHeight;
}

num rounding(num value) {
  // Remove the decimal part to work with integers
  final integerPart = value.toInt();
  final decimalPart = value - integerPart;

  // Check if the decimal part is exactly 0.5
  if (decimalPart == 0.5) {
    // If the integer part is even, round down by returning the integer part
    if (integerPart.isEven) {
      return integerPart.toDouble();
    }
    // If the integer part is odd, round up by adding 1
    else {
      return (integerPart + 1).toDouble();
    }
  } else {
    // Use the default rounding method for other cases
    return value.roundToDouble();
  }
}
