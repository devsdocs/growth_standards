import 'dart:math';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:super_measurement/super_measurement.dart';

part 'bmi.freezed.dart';
part 'bmi.g.dart';

@freezed
sealed class BodyMassIndex with _$BodyMassIndex {
  factory BodyMassIndex({required Length lengthHeight, required Mass weight}) =
      _BodyMassIndex;

  factory BodyMassIndex.fromJson(Map<String, dynamic> json) =>
      _$BodyMassIndexFromJson(json);

  const BodyMassIndex._();

  num get value {
    final meters = lengthHeight.toMeter.value.toDouble();
    final toKg = weight.toKilogram.value.toDouble();
    if (meters <= 0 || toKg <= 0) {
      throw ArgumentError(
        'Length/height and weight must be strictly positive '
        '(got length=${meters}m, weight=${toKg}kg)',
      );
    }
    final toMeterSquare = pow(meters, 2);

    return toKg / toMeterSquare;
  }
}
