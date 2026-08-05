import 'dart:math';

import 'package:dart_numerics/dart_numerics.dart';
import 'package:growth_standards/src/common/model/age.dart';
import 'package:growth_standards/src/common/model/lms.dart';
import 'package:growth_standards/src/common/types.dart';
import 'package:super_measurement/super_measurement.dart';

final _r0 = Rational.parse('0');
final _r0_5 = Rational.parse('0.5');
final _r1 = Rational.fromInt(1);
final _r2 = Rational.fromInt(2);
final _rMinus2 = Rational.fromInt(-2);
final _r3 = Rational.fromInt(3);
final _rMinus3 = Rational.fromInt(-3);
final _r100 = Rational.fromInt(100);
final _rInf = Rational.parse('1e99');
final _rNegInf = Rational.parse('-1e99');

Rational _toRational(dynamic value) {
  if (value is Rational) return value;
  if (value is double) {
    if (value.isNaN) return _r0;
    if (value.isInfinite) return value > 0 ? _rInf : _rNegInf;
  }
  return Rational.parse(value.toString());
}

Rational? _sdRational(Rational rSD, {required LMS lms}) {
  final rM = _toRational(lms.m);
  final rL = _toRational(lms.l);
  final rS = _toRational(lms.s);

  if (lms.l.abs() < 1e-7) {
    final expVal = exp((rS * rSD).toDouble());
    if (expVal.isNaN) return null;
    if (expVal.isInfinite) return expVal > 0 ? _rInf : _rNegInf;
    return rM * _toRational(expVal);
  }

  final inner = (_r1 + (rL * rS * rSD)).toDouble();
  final exponent = (_r1 / rL).toDouble();
  final pVal = pow(inner, exponent);
  if (pVal.isNaN) return null;
  if (pVal.isInfinite) return pVal > 0 ? _rInf : _rNegInf;
  return rM * _toRational(pVal);
}

/// SD calculation using [LMS]
num standardDeviationCalculation(num sd, {required LMS lms}) {
  final result = _sdRational(_toRational(sd), lms: lms);
  return result?.toDouble() ?? double.nan;
}

Rational? _zScoreRational(Rational rY, {required LMS lms}) {
  final rM = _toRational(lms.m);
  final rS = _toRational(lms.s);
  final rL = _toRational(lms.l);

  if (lms.l.abs() < 1e-7) {
    final inner = (rY / rM).toDouble();
    final logVal = log(inner);
    if (logVal.isNaN) return null;
    if (logVal.isInfinite) return logVal > 0 ? _rInf : _rNegInf;
    return _toRational(logVal) / rS;
  }
  final inner = (rY / rM).toDouble();
  final numPow = pow(inner, lms.l);
  if (numPow.isNaN) return null;
  if (numPow.isInfinite) return numPow > 0 ? _rInf : _rNegInf;
  return (_toRational(numPow) - _r1) / (rS * rL);
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
  final result = _zScoreRational(_toRational(y), lms: lms);
  return result?.toDouble() ?? double.nan;
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
  final rY = _toRational(y);
  final zScoreRational = _zScoreRational(rY, lms: lms);
  if (zScoreRational == null) return double.nan;

  final num zScore = zScoreRational.toDouble();

  if (zScore > 3) {
    final rSD3pos = _sdRational(_r3, lms: lms);
    final rSD2pos = _sdRational(_r2, lms: lms);
    if (rSD3pos == null || rSD2pos == null) return double.nan;

    final rSD23pos = rSD3pos - rSD2pos;

    return (_r3 + ((rY - rSD3pos) / rSD23pos)).toDouble();
  }
  if (zScore < -3) {
    final rSD3neg = _sdRational(_rMinus3, lms: lms);
    final rSD2neg = _sdRational(_rMinus2, lms: lms);
    if (rSD3neg == null || rSD2neg == null) return double.nan;

    final rSD23neg = rSD2neg - rSD3neg;

    return (_rMinus3 + ((rY - rSD3neg) / rSD23neg)).toDouble();
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
  num toCm = lengthHeight.toCentimeter.value.toDouble();
  final isStanding = measure == LengthHeightMeasurementPosition.standing;
  final ageMos = age.ageInTotalMonthsByNow;
  final ageDays = age.ageInTotalDaysByNow;
  final val = type.value.toDouble();

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
num pnorm(num zScore) {
  final rZ = _toRational(zScore);
  final rSq2 = _toRational(_sq2);

  final inner = (rZ / rSq2).toDouble();
  final erfVal = erf(inner);
  if (erfVal.isNaN) return double.nan;
  if (erfVal.isInfinite) return erfVal;

  return ((_r1 + _toRational(erfVal)) * _r0_5).toDouble();
}

/// Normal distribution equation, the name [qnorm] inspired from R language
num qnorm(num percentile) {
  final rPercentile = _toRational(percentile);
  final rP = rPercentile > _r1 ? rPercentile / _r100 : rPercentile;

  if (rP <= _r0) return double.negativeInfinity;
  if (rP >= _r1) return double.infinity;

  final inner = ((rP * _r2) - _r1).toDouble();
  final erfInvVal = erfInv(inner);
  if (erfInvVal.isNaN) return double.nan;
  if (erfInvVal.isInfinite) return erfInvVal;

  final rSq2 = _toRational(_sq2);
  return (rSq2 * _toRational(erfInvVal)).toDouble();
}

final _sq2 = sqrt(2);
