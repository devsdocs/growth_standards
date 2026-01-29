import 'package:growth_standards/src/category/who/reference/reference.dart';
import 'package:growth_standards/src/category/who/standard/standard.dart';
import 'package:growth_standards/src/category/who/tools.dart';
import 'package:growth_standards/src/common/model/age.dart';
import 'package:growth_standards/src/common/types.dart';
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

  WHOGrowthStandardsWeightForLengthData get weightForLengthData =>
      WHOGrowthStandardsWeightForLengthData();

  WHOGrowthStandardsHeadCircumferenceVelocityForAgeData
  get headCircumferenceVelocityForAgeData =>
      WHOGrowthStandardsHeadCircumferenceVelocityForAgeData();

  WHOGrowthStandardsLengthVelocityForAgeData get lengthVelocityForAgeData =>
      WHOGrowthStandardsLengthVelocityForAgeData();

  WHOGrowthStandardsWeightVelocityForAgeData get weightVelocityForAgeData =>
      WHOGrowthStandardsWeightVelocityForAgeData();
}

final class WHOGrowthStandardFromJson {
  WHOGrowthStandardsArmCircumferenceForAge armCircumferenceForAge(
    Map<String, dynamic> json,
  ) => WHOGrowthStandardsArmCircumferenceForAge.fromJson(json);

  WHOGrowthStandardsBodyMassIndexForAge bodyMassIndexForAge(
    Map<String, dynamic> json,
  ) => WHOGrowthStandardsBodyMassIndexForAge.fromJson(json);

  WHOGrowthStandardsHeadCircumferenceForAge headCircumferenceForAge(
    Map<String, dynamic> json,
  ) => WHOGrowthStandardsHeadCircumferenceForAge.fromJson(json);
  WHOGrowthStandardsLengthForAge lengthForAge(Map<String, dynamic> json) =>
      WHOGrowthStandardsLengthForAge.fromJson(json);

  WHOGrowthStandardsSubscapularSkinfoldForAge subscapularSkinfoldForAge(
    Map<String, dynamic> json,
  ) => WHOGrowthStandardsSubscapularSkinfoldForAge.fromJson(json);

  WHOGrowthStandardsTricepsSkinfoldForAge tricepsSkinfoldForAge(
    Map<String, dynamic> json,
  ) => WHOGrowthStandardsTricepsSkinfoldForAge.fromJson(json);
  WHOGrowthStandardsWeightForAge weightForAge(Map<String, dynamic> json) =>
      WHOGrowthStandardsWeightForAge.fromJson(json);
  WHOGrowthStandardsWeightForHeight weightForHeight(
    Map<String, dynamic> json,
  ) => WHOGrowthStandardsWeightForHeight.fromJson(json);

  WHOGrowthStandardsWeightForLength weightForLength(
    Map<String, dynamic> json,
  ) => WHOGrowthStandardsWeightForLength.fromJson(json);

  WHOGrowthStandardsHeadCircumferenceVelocityForAge
  headCircumferenceVelocityForAge(Map<String, dynamic> json) =>
      WHOGrowthStandardsHeadCircumferenceVelocityForAge.fromJson(json);

  WHOGrowthStandardsLengthVelocityForAge lengthVelocityForAge(
    Map<String, dynamic> json,
  ) => WHOGrowthStandardsLengthVelocityForAge.fromJson(json);

  WHOGrowthStandardsWeightVelocityForAge weightVelocityForAge(
    Map<String, dynamic> json,
  ) => WHOGrowthStandardsWeightVelocityForAge.fromJson(json);
}

/// For age 0 to 5 years old (<= 1856 days)
final class WHOGrowthStandard {
  /// Access all statistical data
  WHOGrowthStandardsData get data => WHOGrowthStandardsData();

  /// Because why not?
  WHOGrowthStandardFromJson get fromJson => WHOGrowthStandardFromJson();

  WHOGrowthStandardsArmCircumferenceForAge armCircumferenceForAge({
    required Sex sex,
    required Age age,
    required Length measurementResult,
  }) => WHOGrowthStandardsArmCircumferenceForAge(
    sex: sex,
    age: age,
    measurementResult: measurementResult,
  );

  WHOGrowthStandardsBodyMassIndexForAge bodyMassIndexForAge({
    required Sex sex,
    required WHOGrowthStandardsBodyMassIndexMeasurement
    bodyMassIndexMeasurement,
  }) => WHOGrowthStandardsBodyMassIndexForAge(
    sex: sex,
    bodyMassIndexMeasurement: bodyMassIndexMeasurement,
  );

  WHOGrowthStandardsHeadCircumferenceForAge headCircumferenceForAge({
    required Sex sex,
    required Age age,
    required Length measurementResult,
  }) => WHOGrowthStandardsHeadCircumferenceForAge(
    sex: sex,
    age: age,
    measurementResult: measurementResult,
  );

  WHOGrowthStandardsLengthForAge lengthForAge({
    required Sex sex,
    required Age age,
    required Length lengthHeight,
    required LengthHeightMeasurementPosition measure,
  }) => WHOGrowthStandardsLengthForAge(
    sex: sex,
    age: age,
    lengthHeight: lengthHeight,
    measure: measure,
  );

  WHOGrowthStandardsSubscapularSkinfoldForAge subscapularSkinfoldForAge({
    required Sex sex,
    required Age age,
    required Length measurementResult,
  }) => WHOGrowthStandardsSubscapularSkinfoldForAge(
    sex: sex,
    age: age,
    measurementResult: measurementResult,
  );

  WHOGrowthStandardsTricepsSkinfoldForAge tricepsSkinfoldForAge({
    required Sex sex,
    required Age age,
    required Length measurementResult,
  }) => WHOGrowthStandardsTricepsSkinfoldForAge(
    sex: sex,
    age: age,
    measurementResult: measurementResult,
  );
  WHOGrowthStandardsWeightForAge weightForAge({
    required Sex sex,
    required Age age,
    required Mass weight,
  }) => WHOGrowthStandardsWeightForAge(sex: sex, age: age, weight: weight);

  WHOGrowthStandardsWeightForHeight weightForHeight({
    required Sex sex,
    required Age age,
    required Length height,
    required Mass mass,
    required LengthHeightMeasurementPosition measure,
  }) => WHOGrowthStandardsWeightForHeight(
    sex: sex,
    age: age,
    height: height,
    weight: mass,
    measure: measure,
  );

  WHOGrowthStandardsWeightForLength weightForLength({
    required Sex sex,
    required Length lengthMeasurementResult,
    required Mass massMeasurementResult,
    required Age age,
    required LengthHeightMeasurementPosition measure,
  }) => WHOGrowthStandardsWeightForLength(
    sex: sex,
    length: lengthMeasurementResult,
    weight: massMeasurementResult,
    age: age,
    measure: measure,
  );

  WHOGrowthStandardsHeadCircumferenceVelocityForAge
  headCircumferenceVelocityForAge({
    required Sex sex,
    required Age age,
    required List<LengthMeasurementHistory> pastMeasurement,
  }) => WHOGrowthStandardsHeadCircumferenceVelocityForAge(
    age: age,
    pastMeasurement: pastMeasurement,
    sex: sex,
  );

  WHOGrowthStandardsLengthVelocityForAge lengthVelocityForAge({
    required Sex sex,
    required Age age,
    required List<LengthMeasurementHistory> pastMeasurement,
  }) => WHOGrowthStandardsLengthVelocityForAge(
    age: age,
    pastMeasurement: pastMeasurement,
    sex: sex,
  );

  WHOGrowthStandardsWeightVelocityForAge weightVelocityForAge({
    required Sex sex,
    required Age age,
    required List<MassMeasurementHistory> pastMeasurement,
  }) => WHOGrowthStandardsWeightVelocityForAge(
    age: age,
    pastMeasurement: pastMeasurement,
    sex: sex,
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
  ) => WHOGrowthReferenceBodyMassIndexForAge.fromJson(json);

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
    required Sex sex,
    required WHOGrowthReferenceBodyMassIndexMeasurement
    bodyMassIndexMeasurement,
    required Age age,
  }) => WHOGrowthReferenceBodyMassIndexForAge(
    age: age,
    sex: sex,
    bodyMassIndexMeasurement: bodyMassIndexMeasurement,
  );

  WHOGrowthReferenceHeightForAge heightForAge({
    required Sex sex,
    required Age age,
    required Length lengthHeight,
    required LengthHeightMeasurementPosition measure,
  }) => WHOGrowthReferenceHeightForAge(
    sex: sex,
    age: age,
    lengthHeight: lengthHeight,
  );

  WHOGrowthReferenceWeightForAge weightForAge({
    required Sex sex,
    required Age age,
    required Mass weight,
  }) => WHOGrowthReferenceWeightForAge(sex: sex, age: age, weight: weight);
}
