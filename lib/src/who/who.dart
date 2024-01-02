import 'package:growth_standards/src/common/model/age.dart';
import 'package:growth_standards/src/common/types.dart';
import 'package:growth_standards/src/who/reference/reference.dart';
import 'package:growth_standards/src/who/standard/standard.dart';
import 'package:super_measurement/super_measurement.dart';

final class WHOGrowthStandardsData {
  WHOGrowthStandardsArmCircumferenceForAgeData get armCircumferenceForAge =>
      WHOGrowthStandardsArmCircumferenceForAgeData();

  WHOGrowthStandardsBodyMassIndexForAgeData get bodyMassIndexForAge =>
      WHOGrowthStandardsBodyMassIndexForAgeData();

  WHOGrowthStandardsHeadCircumferenceForAgeData get headCircumferenceForAge =>
      WHOGrowthStandardsHeadCircumferenceForAgeData();

  WHOGrowthStandardsLengthForAgeData get lengthForAgeData =>
      WHOGrowthStandardsLengthForAgeData();

  WHOGrowthStandardsSubscapularSkinfoldForAgeData
      get subscapularSkinfoldForAgeData =>
          WHOGrowthStandardsSubscapularSkinfoldForAgeData();

  WHOGrowthStandardsTricepsSkinfoldForAgeData get tricepsSkinfoldForAgeData =>
      WHOGrowthStandardsTricepsSkinfoldForAgeData();

  WHOGrowthStandardsWeightForAgeData get weightForAgeData =>
      WHOGrowthStandardsWeightForAgeData();

  WHOGrowthStandardsWeightForHeightData get weightForHeightData =>
      WHOGrowthStandardsWeightForHeightData();

  WHOGrowthStandardsWeigthForLengthData get weigthForLengthData =>
      WHOGrowthStandardsWeigthForLengthData();
}

final class WHOGrowthStandardFromJson {
  WHOGrowthStandardsArmCircumferenceForAge armCircumferenceForAge(
    Map<String, dynamic> json,
  ) =>
      WHOGrowthStandardsArmCircumferenceForAge.fromJson(json);

  WHOGrowthStandardsBodyMassIndexForAge bodyMassIndexForAge(
    Map<String, dynamic> json,
  ) =>
      WHOGrowthStandardsBodyMassIndexForAge.fromJson(json);

  WHOGrowthStandardsHeadCircumferenceForAge headCircumferenceForAge(
    Map<String, dynamic> json,
  ) =>
      WHOGrowthStandardsHeadCircumferenceForAge.fromJson(json);
  WHOGrowthStandardsLengthForAge lengthForAge(Map<String, dynamic> json) =>
      WHOGrowthStandardsLengthForAge.fromJson(json);

  WHOGrowthStandardsSubscapularSkinfoldForAge subscapularSkinfoldForAge(
    Map<String, dynamic> json,
  ) =>
      WHOGrowthStandardsSubscapularSkinfoldForAge.fromJson(json);

  WHOGrowthStandardsTricepsSkinfoldForAge tricepsSkinfoldForAge(
    Map<String, dynamic> json,
  ) =>
      WHOGrowthStandardsTricepsSkinfoldForAge.fromJson(json);
  WHOGrowthStandardsWeightForAge weightForAge(Map<String, dynamic> json) =>
      WHOGrowthStandardsWeightForAge.fromJson(json);
  WHOGrowthStandardsWeightForHeight weightForHeight(
    Map<String, dynamic> json,
  ) =>
      WHOGrowthStandardsWeightForHeight.fromJson(json);

  WHOGrowthStandardsWeigthForLength weightForLength(
    Map<String, dynamic> json,
  ) =>
      WHOGrowthStandardsWeigthForLength.fromJson(json);
}

/// For age 0 to 5 years old (<= 1856 days)
final class WHOGrowthStandard {
  WHOGrowthStandardsData get data => WHOGrowthStandardsData();
  WHOGrowthStandardFromJson get fromJson => WHOGrowthStandardFromJson();

  WHOGrowthStandardsArmCircumferenceForAge armCircumferenceForAge({
    required Sex sex,
    required Age age,
    required Length measurementResult,
    Date? observationDate,
  }) =>
      WHOGrowthStandardsArmCircumferenceForAge(
        sex: sex,
        age: age,
        measurementResult: measurementResult,
        observationDate: observationDate,
      );

  WHOGrowthStandardsBodyMassIndexForAge bodyMassIndexForAge({
    required Sex sex,
    required WHOGrowthStandardsBodyMassIndexMeasurement
        bodyMassIndexMeasurement,
    Date? observationDate,
  }) =>
      WHOGrowthStandardsBodyMassIndexForAge(
        sex: sex,
        bodyMassIndexMeasurement: bodyMassIndexMeasurement,
        observationDate: observationDate,
      );

  WHOGrowthStandardsHeadCircumferenceForAge headCircumferenceForAge({
    Date? observationDate,
    required Sex sex,
    required Age age,
    required Length measurementResult,
  }) =>
      WHOGrowthStandardsHeadCircumferenceForAge(
        sex: sex,
        age: age,
        measurementResult: measurementResult,
      );

  WHOGrowthStandardsLengthForAge lengthForAge({
    Date? observationDate,
    required Sex sex,
    required Age age,
    required Length lengthHeight,
    required LengthHeigthMeasurementPosition measure,
  }) =>
      WHOGrowthStandardsLengthForAge(
        observationDate: observationDate,
        sex: sex,
        age: age,
        lengthHeight: lengthHeight,
        measure: measure,
      );

  WHOGrowthStandardsSubscapularSkinfoldForAge subscapularSkinfoldForAge({
    Date? observationDate,
    required Sex sex,
    required Age age,
    required Length measurementResult,
  }) =>
      WHOGrowthStandardsSubscapularSkinfoldForAge(
        observationDate: observationDate,
        sex: sex,
        age: age,
        measurementResult: measurementResult,
      );

  WHOGrowthStandardsTricepsSkinfoldForAge tricepsSkinfoldForAge({
    Date? observationDate,
    required Sex sex,
    required Age age,
    required Length measurementResult,
  }) =>
      WHOGrowthStandardsTricepsSkinfoldForAge(
        observationDate: observationDate,
        sex: sex,
        age: age,
        measurementResult: measurementResult,
      );
  WHOGrowthStandardsWeightForAge weightForAge({
    Date? observationDate,
    required Sex sex,
    required Age age,
    required Mass weight,
  }) =>
      WHOGrowthStandardsWeightForAge(
        observationDate: observationDate,
        sex: sex,
        age: age,
        weight: weight,
      );

  WHOGrowthStandardsWeightForHeight weightForHeight({
    Date? observationDate,
    required Sex sex,
    required Age age,
    required Length height,
    required Mass mass,
    required LengthHeigthMeasurementPosition measure,
  }) =>
      WHOGrowthStandardsWeightForHeight(
        observationDate: observationDate,
        sex: sex,
        age: age,
        height: height,
        weight: mass,
        measure: measure,
      );

  WHOGrowthStandardsWeigthForLength weightForLength({
    Date? observationDate,
    required Sex sex,
    required Length lengthMeasurementResult,
    required Mass massMeasurementResult,
    required Age age,
    required LengthHeigthMeasurementPosition measure,
  }) =>
      WHOGrowthStandardsWeigthForLength(
        observationDate: observationDate,
        sex: sex,
        length: lengthMeasurementResult,
        weight: massMeasurementResult,
        age: age,
        measure: measure,
      );
}

final class WHOGrowthReferenceData {
  WHOGrowthReferenceBodyMassIndexForAgeData get bodyMassIndexForAge =>
      WHOGrowthReferenceBodyMassIndexForAgeData();

  WHOGrowthReferenceHeightForAgeData get heightForAge =>
      WHOGrowthReferenceHeightForAgeData();

  WHOGrowthReferenceWeightForAgeData get weightForAge =>
      WHOGrowthReferenceWeightForAgeData();
}

final class WHOGrowthReferenceFromJson {
  WHOGrowthReferenceBodyMassIndexForAge bodyMassIndexForAge(
    Map<String, dynamic> json,
  ) =>
      WHOGrowthReferenceBodyMassIndexForAge.fromJson(json);

  WHOGrowthReferenceHeightForAge heightForAge(Map<String, dynamic> json) =>
      WHOGrowthReferenceHeightForAge.fromJson(json);

  WHOGrowthReferenceWeightForAge weightForAge(Map<String, dynamic> json) =>
      WHOGrowthReferenceWeightForAge.fromJson(json);
}

/// For age 5 to 18 years old (> 1856 days)
final class WHOGrowthReference {
  WHOGrowthReferenceData get data => WHOGrowthReferenceData();

  WHOGrowthReferenceFromJson get fromJson => WHOGrowthReferenceFromJson();

  WHOGrowthReferenceBodyMassIndexForAge bodyMassIndexForAge({
    Date? observationDate,
    required Sex sex,
    required WHOGrowthReferenceBodyMassIndexMeasurement
        bodyMassIndexMeasurement,
    required Age age,
  }) =>
      WHOGrowthReferenceBodyMassIndexForAge(
        observationDate: observationDate,
        age: age,
        sex: sex,
        bodyMassIndexMeasurement: bodyMassIndexMeasurement,
      );

  WHOGrowthReferenceHeightForAge heightForAge({
    Date? observationDate,
    required Sex sex,
    required Age age,
    required Length lengthHeight,
    required LengthHeigthMeasurementPosition measure,
  }) =>
      WHOGrowthReferenceHeightForAge(
        observationDate: observationDate,
        sex: sex,
        age: age,
        lengthHeight: lengthHeight,
      );

  WHOGrowthReferenceWeightForAge weightForAge({
    Date? observationDate,
    required Sex sex,
    required Age age,
    required Mass weight,
  }) =>
      WHOGrowthReferenceWeightForAge(
        observationDate: observationDate,
        sex: sex,
        age: age,
        weight: weight,
      );
}
