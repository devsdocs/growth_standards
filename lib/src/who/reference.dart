part of 'who.dart';

final class _WHOGrowthReferenceBMITools {
  GrowthReferenceBodyMassIndexMeasurement fromValue(num value) =>
      GrowthReferenceBodyMassIndexMeasurement.fromValue(value);

  GrowthReferenceBodyMassIndexMeasurement fromMeasurement({
    required Length height,
    required Mass weight,
  }) =>
      GrowthReferenceBodyMassIndexMeasurement.fromMeasurement(
        lengthHeight: height,
        weight: weight,
      );
}

final class _WHOGrowthReferenceBodyMassIndex {
  GrowthReferenceBodyMassIndexForAgeData get data =>
      GrowthReferenceBodyMassIndexForAgeData();
  _WHOGrowthReferenceBMITools get getBMI => _WHOGrowthReferenceBMITools();

  GrowthReferenceBodyMassIndexForAge measure({
    required Sex sex,
    required GrowthReferenceBodyMassIndexMeasurement bodyMassIndexMeasurement,
    required GrowthReferenceBodyMassIndexForAgeData bodyMassIndexData,
    required Age age,
  }) =>
      GrowthReferenceBodyMassIndexForAge(
        age: age,
        sex: sex,
        bodyMassIndexMeasurement: bodyMassIndexMeasurement,
        bodyMassIndexData: bodyMassIndexData,
      );

  GrowthReferenceBodyMassIndexForAge male({
    required GrowthReferenceBodyMassIndexMeasurement bodyMassIndexMeasurement,
    required GrowthReferenceBodyMassIndexForAgeData bodyMassIndexData,
    required Age age,
  }) =>
      measure(
        sex: Sex.male,
        age: age,
        bodyMassIndexMeasurement: bodyMassIndexMeasurement,
        bodyMassIndexData: bodyMassIndexData,
      );

  GrowthReferenceBodyMassIndexForAge female({
    required GrowthReferenceBodyMassIndexMeasurement bodyMassIndexMeasurement,
    required GrowthReferenceBodyMassIndexForAgeData bodyMassIndexData,
    required Age age,
  }) =>
      measure(
        sex: Sex.female,
        age: age,
        bodyMassIndexMeasurement: bodyMassIndexMeasurement,
        bodyMassIndexData: bodyMassIndexData,
      );
}

final class _WHOGrowthReferenceHeightForAge {
  GrowthReferenceHeightForAgeData get data => GrowthReferenceHeightForAgeData();

  GrowthReferenceHeightForAge measure({
    required Sex sex,
    required Age age,
    required Length lengthHeight,
    required LengthHeigthMeasurementPosition measure,
    required GrowthReferenceHeightForAgeData lengthForAgeData,
  }) =>
      GrowthReferenceHeightForAge(
        sex: sex,
        age: age,
        lengthHeight: lengthHeight,
        lengthForAgeData: lengthForAgeData,
      );

  GrowthReferenceHeightForAge maleStandingPosition({
    required Age age,
    required Length height,
    required GrowthReferenceHeightForAgeData lengthForAgeData,
  }) =>
      measure(
        sex: Sex.male,
        age: age,
        lengthHeight: height,
        lengthForAgeData: lengthForAgeData,
        measure: LengthHeigthMeasurementPosition.standing,
      );

  GrowthReferenceHeightForAge maleRecumbentPosition({
    required Age age,
    required Length length,
    required GrowthReferenceHeightForAgeData lengthForAgeData,
  }) =>
      measure(
        sex: Sex.male,
        age: age,
        lengthHeight: length,
        lengthForAgeData: lengthForAgeData,
        measure: LengthHeigthMeasurementPosition.recumbent,
      );

  GrowthReferenceHeightForAge femaleStandingPosition({
    required Age age,
    required Length heigth,
    required GrowthReferenceHeightForAgeData lengthForAgeData,
  }) =>
      measure(
        sex: Sex.female,
        age: age,
        lengthHeight: heigth,
        lengthForAgeData: lengthForAgeData,
        measure: LengthHeigthMeasurementPosition.standing,
      );

  GrowthReferenceHeightForAge femaleRecumbentPosition({
    required Age age,
    required Length length,
    required GrowthReferenceHeightForAgeData lengthForAgeData,
  }) =>
      measure(
        sex: Sex.female,
        age: age,
        lengthHeight: length,
        lengthForAgeData: lengthForAgeData,
        measure: LengthHeigthMeasurementPosition.recumbent,
      );
}

final class _WHOGrowthReferenceWeightForAge {
  GrowthReferenceWeightForAgeData get data => GrowthReferenceWeightForAgeData();

  GrowthReferenceWeightForAge measure({
    required Sex sex,
    required Age age,
    required Mass weight,
    required GrowthReferenceWeightForAgeData weightForAgeData,
  }) =>
      GrowthReferenceWeightForAge(
        sex: sex,
        age: age,
        weight: weight,
        weightForAgeData: weightForAgeData,
      );

  GrowthReferenceWeightForAge male({
    required Age age,
    required Mass weight,
    required GrowthReferenceWeightForAgeData weightForAgeData,
  }) =>
      measure(
        sex: Sex.male,
        age: age,
        weight: weight,
        weightForAgeData: weightForAgeData,
      );

  GrowthReferenceWeightForAge female({
    required Age age,
    required Mass weight,
    required GrowthReferenceWeightForAgeData weightForAgeData,
  }) =>
      measure(
        sex: Sex.female,
        age: age,
        weight: weight,
        weightForAgeData: weightForAgeData,
      );
}
