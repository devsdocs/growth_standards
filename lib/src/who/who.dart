import 'package:growth_standards/src/common/age.dart';
import 'package:growth_standards/src/common/types.dart';
import 'package:growth_standards/src/who/reference/reference.dart';
import 'package:growth_standards/src/who/standard/standard.dart';
import 'package:super_measurement/super_measurement.dart';

final class WHOGrowthStandard {
  ArmCircumferenceForAgeData get armCircumferenceForAgeData =>
      ArmCircumferenceForAgeData();

  ArmCircumferenceForAge armCircumferenceForAge({
    required Sex sex,
    required Age age,
    required Length measurementResult,
    required ArmCircumferenceForAgeData armCircumferenceForAgeData,
    Date? observationDate,
  }) =>
      ArmCircumferenceForAge(
        sex: sex,
        age: age,
        measurementResult: measurementResult,
        armCircumferenceData: armCircumferenceForAgeData,
        observationDate: observationDate,
      );

  BodyMassIndexForAge bodyMassIndexForAge({
    required Sex sex,
    required BodyMassIndexMeasurement bodyMassIndexMeasurement,
    required BodyMassIndexForAgeData bodyMassIndexData,
    Date? observationDate,
  }) =>
      BodyMassIndexForAge(
        sex: sex,
        bodyMassIndexMeasurement: bodyMassIndexMeasurement,
        bodyMassIndexData: bodyMassIndexData,
        observationDate: observationDate,
      );

  HeadCircumferenceForAge headCircumferenceForAge({
    Date? observationDate,
    required Sex sex,
    required Age age,
    required Length measurementResult,
    required HeadCircumferenceForAgeData headCircumferenceData,
  }) =>
      HeadCircumferenceForAge(
        sex: sex,
        age: age,
        measurementResult: measurementResult,
        headCircumferenceData: headCircumferenceData,
      );

  LengthForAge lengthForAge({
    Date? observationDate,
    required Sex sex,
    required Age age,
    required Length lengthHeight,
    required LengthHeigthMeasurementPosition measure,
    required LengthForAgeData lengthForAgeData,
  }) =>
      LengthForAge(
        observationDate: observationDate,
        sex: sex,
        age: age,
        lengthHeight: lengthHeight,
        measure: measure,
        lengthForAgeData: lengthForAgeData,
      );

  SubscapularSkinfoldForAge subscapularSkinfoldForAge({
    Date? observationDate,
    required Sex sex,
    required Age age,
    required Length measurementResult,
    required SubscapularSkinfoldForAgeData subscapularSkinfoldData,
  }) =>
      SubscapularSkinfoldForAge(
        observationDate: observationDate,
        sex: sex,
        age: age,
        measurementResult: measurementResult,
        subscapularSkinfoldData: subscapularSkinfoldData,
      );

  TricepsSkinfoldForAge tricepsSkinfoldForAge({
    Date? observationDate,
    required Sex sex,
    required Age age,
    required Length measurementResult,
    required TricepsSkinfoldForAgeData tricepsSkinfoldData,
  }) =>
      TricepsSkinfoldForAge(
        observationDate: observationDate,
        sex: sex,
        age: age,
        measurementResult: measurementResult,
        tricepsSkinfoldData: tricepsSkinfoldData,
      );
  WeightForAge weightForAge({
    Date? observationDate,
    required Sex sex,
    required Age age,
    required Mass weight,
    required WeightForAgeData weightForAgeData,
  }) =>
      WeightForAge(
        observationDate: observationDate,
        sex: sex,
        age: age,
        weight: weight,
        weightForAgeData: weightForAgeData,
      );

  WeightForHeight weightForHeight({
    Date? observationDate,
    required Sex sex,
    required Age age,
    required Length height,
    required Mass mass,
    required LengthHeigthMeasurementPosition measure,
    required WeightForHeightData weightForHeightData,
  }) =>
      WeightForHeight(
        observationDate: observationDate,
        sex: sex,
        age: age,
        height: height,
        mass: mass,
        measure: measure,
        weightForHeightData: weightForHeightData,
      );

  WeigthForLength weightForLength({
    Date? observationDate,
    required Sex sex,
    required Length lengthMeasurementResult,
    required Mass massMeasurementResult,
    required Age age,
    required LengthHeigthMeasurementPosition measure,
    required WeigthForLengthData weigthForLengthData,
  }) =>
      WeigthForLength(
        observationDate: observationDate,
        sex: sex,
        length: lengthMeasurementResult,
        massMeasurementResult: massMeasurementResult,
        age: age,
        measure: measure,
        weigthForLengthData: weigthForLengthData,
      );
}

final class WHOGrowthReference {
  GrowthReferenceBodyMassIndexForAge bodyMassIndexForAge({
    Date? observationDate,
    required Sex sex,
    required GrowthReferenceBodyMassIndexMeasurement bodyMassIndexMeasurement,
    required GrowthReferenceBodyMassIndexForAgeData bodyMassIndexData,
    required Age age,
  }) =>
      GrowthReferenceBodyMassIndexForAge(
        observationDate: observationDate,
        age: age,
        sex: sex,
        bodyMassIndexMeasurement: bodyMassIndexMeasurement,
        bodyMassIndexData: bodyMassIndexData,
      );

  GrowthReferenceHeightForAge heightForAge({
    Date? observationDate,
    required Sex sex,
    required Age age,
    required Length lengthHeight,
    required LengthHeigthMeasurementPosition measure,
    required GrowthReferenceHeightForAgeData lengthForAgeData,
  }) =>
      GrowthReferenceHeightForAge(
        observationDate: observationDate,
        sex: sex,
        age: age,
        lengthHeight: lengthHeight,
        lengthForAgeData: lengthForAgeData,
      );

  GrowthReferenceWeightForAge weightForAge({
    Date? observationDate,
    required Sex sex,
    required Age age,
    required Mass weight,
    required GrowthReferenceWeightForAgeData weightForAgeData,
  }) =>
      GrowthReferenceWeightForAge(
        observationDate: observationDate,
        sex: sex,
        age: age,
        weight: weight,
        weightForAgeData: weightForAgeData,
      );
}
