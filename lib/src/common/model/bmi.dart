import 'dart:math';

import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:super_measurement/super_measurement.dart';

part 'bmi.freezed.dart';
part 'bmi.g.dart';

@freezed
sealed class BodyMassIndex with _$BodyMassIndex {
  factory BodyMassIndex({
    required Length lengthHeight,
    required Mass weight,
  }) = _BodyMassIndex;

  factory BodyMassIndex.fromJson(Map<String, dynamic> json) =>
      _$BodyMassIndexFromJson(json);

  const BodyMassIndex._();

  num get value {
    final toMeterSquare = pow(
      lengthHeight.toMeter.value,
      2,
    );
    final toKg = weight.toKilogram.value;

    return toKg / toMeterSquare;
  }
}
