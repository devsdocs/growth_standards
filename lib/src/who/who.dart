
import 'package:growth_standards/src/common/model/age.dart';
import 'package:growth_standards/src/common/types.dart';
import 'package:growth_standards/src/who/reference/reference.dart';
import 'package:growth_standards/src/who/standard/standard.dart';
import 'package:super_measurement/super_measurement.dart';

final class WHOGrowthStandard {
  ArmCircumferenceForAge armCircumferenceForAge({
    required Sex sex,
    required Age age,
    required Length measurementResult,
    Date? observationDate,
  }) =>
      ArmCircumferenceForAge(
        sex: sex,
        age: age,
        measurementResult: measurementResult,
        observationDate: observationDate,
      );

  BodyMassIndexForAge bodyMassIndexForAge({
    required Sex sex,
    required BodyMassIndexMeasurement bodyMassIndexMeasurement,
    Date? observationDate,
  }) =>
      BodyMassIndexForAge(
        sex: sex,
        bodyMassIndexMeasurement: bodyMassIndexMeasurement,
        observationDate: observationDate,
      );

  HeadCircumferenceForAge headCircumferenceForAge({
    Date? observationDate,
    required Sex sex,
    required Age age,
    required Length measurementResult,
  }) =>
      HeadCircumferenceForAge(
        sex: sex,
        age: age,
        measurementResult: measurementResult,
      );

  LengthForAge lengthForAge({
    Date? observationDate,
    required Sex sex,
    required Age age,
    required Length lengthHeight,
    required LengthHeigthMeasurementPosition measure,
  }) =>
      LengthForAge(
        observationDate: observationDate,
        sex: sex,
        age: age,
        lengthHeight: lengthHeight,
        measure: measure,
      );

  SubscapularSkinfoldForAge subscapularSkinfoldForAge({
    Date? observationDate,
    required Sex sex,
    required Age age,
    required Length measurementResult,
  }) =>
      SubscapularSkinfoldForAge(
        observationDate: observationDate,
        sex: sex,
        age: age,
        measurementResult: measurementResult,
      );

  TricepsSkinfoldForAge tricepsSkinfoldForAge({
    Date? observationDate,
    required Sex sex,
    required Age age,
    required Length measurementResult,
  }) =>
      TricepsSkinfoldForAge(
        observationDate: observationDate,
        sex: sex,
        age: age,
        measurementResult: measurementResult,
      );
  WeightForAge weightForAge({
    Date? observationDate,
    required Sex sex,
    required Age age,
    required Mass weight,
  }) =>
      WeightForAge(
        observationDate: observationDate,
        sex: sex,
        age: age,
        weight: weight,
      );

  WeightForHeight weightForHeight({
    Date? observationDate,
    required Sex sex,
    required Age age,
    required Length height,
    required Mass mass,
    required LengthHeigthMeasurementPosition measure,
  }) =>
      WeightForHeight(
        observationDate: observationDate,
        sex: sex,
        age: age,
        height: height,
        weight: mass,
        measure: measure,
      );

  WeigthForLength weightForLength({
    Date? observationDate,
    required Sex sex,
    required Length lengthMeasurementResult,
    required Mass massMeasurementResult,
    required Age age,
    required LengthHeigthMeasurementPosition measure,
  }) =>
      WeigthForLength(
        observationDate: observationDate,
        sex: sex,
        length: lengthMeasurementResult,
        weight: massMeasurementResult,
        age: age,
        measure: measure,
      );
}

final class WHOGrowthReference {
  GrowthReferenceBodyMassIndexForAge bodyMassIndexForAge({
    Date? observationDate,
    required Sex sex,
    required GrowthReferenceBodyMassIndexMeasurement bodyMassIndexMeasurement,
    required Age age,
  }) =>
      GrowthReferenceBodyMassIndexForAge(
        observationDate: observationDate,
        age: age,
        sex: sex,
        bodyMassIndexMeasurement: bodyMassIndexMeasurement,
      );

  GrowthReferenceHeightForAge heightForAge({
    Date? observationDate,
    required Sex sex,
    required Age age,
    required Length lengthHeight,
    required LengthHeigthMeasurementPosition measure,
  }) =>
      GrowthReferenceHeightForAge(
        observationDate: observationDate,
        sex: sex,
        age: age,
        lengthHeight: lengthHeight,
      );

  GrowthReferenceWeightForAge weightForAge({
    Date? observationDate,
    required Sex sex,
    required Age age,
    required Mass weight,
  }) =>
      GrowthReferenceWeightForAge(
        observationDate: observationDate,
        sex: sex,
        age: age,
        weight: weight,
      );
}
