import 'dart:math';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:growth_standards/src/common/tools.dart';

import 'package:super_measurement/super_measurement.dart';

part 'bmi.freezed.dart';
part 'bmi.g.dart';

@freezed
class BodyMassIndex with _$BodyMassIndex {
  factory BodyMassIndex({
    @LengthConverter() required Length lengthHeight,
    @MassConverter() required Mass weight,
  }) = _BodyMassIndex;

  factory BodyMassIndex.fromJson(Map<String, dynamic> json) =>
      _$BodyMassIndexFromJson(json);

  const BodyMassIndex._();

  num get value {
    final toMeterSquare = pow(
      lengthHeight.toMeters.value!,
      2,
    );
    final toKg = weight.toKilograms.value!;

    return toKg / toMeterSquare;
  }
}
