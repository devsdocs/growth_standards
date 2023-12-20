import 'package:growth_standards/src/common/model/age.dart';
import 'package:growth_standards/src/common/types.dart';
import 'package:growth_standards/src/who/reference/reference.dart';
import 'package:growth_standards/src/who/standard/standard.dart';
import 'package:super_measurement/super_measurement.dart';

final class WHOGrowthStandardData {
  ArmCircumferenceForAgeData get armCircumferenceForAge =>
      ArmCircumferenceForAgeData();

  BodyMassIndexForAgeData get bodyMassIndexForAge => BodyMassIndexForAgeData();

  HeadCircumferenceForAgeData get headCircumferenceForAge =>
      HeadCircumferenceForAgeData();

  LengthForAgeData get lengthForAgeData => LengthForAgeData();

  SubscapularSkinfoldForAgeData get subscapularSkinfoldForAgeData =>
      SubscapularSkinfoldForAgeData();

  TricepsSkinfoldForAgeData get tricepsSkinfoldForAgeData =>
      TricepsSkinfoldForAgeData();

  WeightForAgeData get weightForAgeData => WeightForAgeData();

  WeightForHeightData get weightForHeightData => WeightForHeightData();

  WeigthForLengthData get weigthForLengthData => WeigthForLengthData();
}

final class WHOGrowthStandardFromJson {
  ArmCircumferenceForAge armCircumferenceForAge(Map<String, dynamic> json) =>
      ArmCircumferenceForAge.fromJson(json);

  BodyMassIndexForAge bodyMassIndexForAge(Map<String, dynamic> json) =>
      BodyMassIndexForAge.fromJson(json);

  HeadCircumferenceForAge headCircumferenceForAge(Map<String, dynamic> json) =>
      HeadCircumferenceForAge.fromJson(json);
  LengthForAge lengthForAge(Map<String, dynamic> json) =>
      LengthForAge.fromJson(json);

  SubscapularSkinfoldForAge subscapularSkinfoldForAge(
    Map<String, dynamic> json,
  ) =>
      SubscapularSkinfoldForAge.fromJson(json);

  TricepsSkinfoldForAge tricepsSkinfoldForAge(Map<String, dynamic> json) =>
      TricepsSkinfoldForAge.fromJson(json);
  WeightForAge weightForAge(Map<String, dynamic> json) =>
      WeightForAge.fromJson(json);
  WeightForHeight weightForHeight(Map<String, dynamic> json) =>
      WeightForHeight.fromJson(json);

  WeigthForLength weightForLength(Map<String, dynamic> json) =>
      WeigthForLength.fromJson(json);
}

/// For age 0 to 5 years old (<= 1856 days)
final class WHOGrowthStandard {
  WHOGrowthStandardData get data => WHOGrowthStandardData();
  WHOGrowthStandardFromJson get fromJson => WHOGrowthStandardFromJson();

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

final class WHOGrowthReferenceData {
  GrowthReferenceBodyMassIndexForAgeData get bodyMassIndexForAge =>
      GrowthReferenceBodyMassIndexForAgeData();

  GrowthReferenceHeightForAgeData get heightForAge =>
      GrowthReferenceHeightForAgeData();

  GrowthReferenceWeightForAgeData get weightForAge =>
      GrowthReferenceWeightForAgeData();
}

final class WHOGrowthReferenceFromJson {
  GrowthReferenceBodyMassIndexForAge bodyMassIndexForAge(
    Map<String, dynamic> json,
  ) =>
      GrowthReferenceBodyMassIndexForAge.fromJson(json);

  GrowthReferenceHeightForAge heightForAge(Map<String, dynamic> json) =>
      GrowthReferenceHeightForAge.fromJson(json);

  GrowthReferenceWeightForAge weightForAge(Map<String, dynamic> json) =>
      GrowthReferenceWeightForAge.fromJson(json);
}

/// For age 5 to 18 years old (> 1856 days)
final class WHOGrowthReference {
  WHOGrowthReferenceData get data => WHOGrowthReferenceData();
  WHOGrowthReferenceFromJson get fromJson => WHOGrowthReferenceFromJson();

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
