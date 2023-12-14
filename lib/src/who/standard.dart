part of 'who.dart';

final class _WHOGrowthStandardArmCircumference {
  ArmCircumferenceForAgeData get data => ArmCircumferenceForAgeData();

  ArmCircumferenceForAge measure({
    required Sex sex,
    required Age age,
    required Length measurementResult,
    required ArmCircumferenceForAgeData armCircumferenceData,
  }) =>
      ArmCircumferenceForAge(
        sex: sex,
        age: age,
        measurementResult: measurementResult,
        armCircumferenceData: armCircumferenceData,
      );

  ArmCircumferenceForAge male({
    required Age age,
    required Length measurementResult,
    required ArmCircumferenceForAgeData armCircumferenceData,
  }) =>
      measure(
        sex: Sex.male,
        age: age,
        measurementResult: measurementResult,
        armCircumferenceData: armCircumferenceData,
      );

  ArmCircumferenceForAge female({
    required Age age,
    required Length measurementResult,
    required ArmCircumferenceForAgeData armCircumferenceData,
  }) =>
      measure(
        sex: Sex.female,
        age: age,
        measurementResult: measurementResult,
        armCircumferenceData: armCircumferenceData,
      );
}

final class _WHOGrowthStandardBMITools {
  BodyMassIndexMeasurement fromValue(num value, {required Age age}) =>
      BodyMassIndexMeasurement.fromValue(value, age: age);

  BodyMassIndexMeasurement withStandingPosition({
    required Length height,
    required Mass weight,
    required Age age,
  }) =>
      BodyMassIndexMeasurement.fromMeasurement(
        measure: LengthHeigthMeasurementPosition.standing,
        lengthHeight: height,
        weight: weight,
        age: age,
      );

  BodyMassIndexMeasurement withRecumbentPosition({
    required Length length,
    required Mass weight,
    required Age age,
  }) =>
      BodyMassIndexMeasurement.fromMeasurement(
        measure: LengthHeigthMeasurementPosition.recumbent,
        lengthHeight: length,
        weight: weight,
        age: age,
      );
}

final class _WHOGrowthStandardBodyMassIndex {
  BodyMassIndexForAgeData get data => BodyMassIndexForAgeData();
  _WHOGrowthStandardBMITools get calculateBMI => _WHOGrowthStandardBMITools();

  BodyMassIndexForAge measure({
    required Sex sex,
    required BodyMassIndexMeasurement bodyMassIndexMeasurement,
    required BodyMassIndexForAgeData bodyMassIndexData,
  }) =>
      BodyMassIndexForAge(
        sex: sex,
        bodyMassIndexMeasurement: bodyMassIndexMeasurement,
        bodyMassIndexData: bodyMassIndexData,
      );

  BodyMassIndexForAge male({
    required BodyMassIndexMeasurement bodyMassIndexMeasurement,
    required BodyMassIndexForAgeData bodyMassIndexData,
  }) =>
      measure(
        sex: Sex.male,
        bodyMassIndexMeasurement: bodyMassIndexMeasurement,
        bodyMassIndexData: bodyMassIndexData,
      );

  BodyMassIndexForAge female({
    required BodyMassIndexMeasurement bodyMassIndexMeasurement,
    required BodyMassIndexForAgeData bodyMassIndexData,
  }) =>
      measure(
        sex: Sex.female,
        bodyMassIndexMeasurement: bodyMassIndexMeasurement,
        bodyMassIndexData: bodyMassIndexData,
      );
}

final class _WHOGrowthStandardHeadCircumference {
  HeadCircumferenceForAgeData get data => HeadCircumferenceForAgeData();

  HeadCircumferenceForAge measure({
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

  HeadCircumferenceForAge male({
    required Age age,
    required Length measurementResult,
    required HeadCircumferenceForAgeData headCircumferenceData,
  }) =>
      measure(
        sex: Sex.male,
        age: age,
        measurementResult: measurementResult,
        headCircumferenceData: headCircumferenceData,
      );

  HeadCircumferenceForAge female({
    required Age age,
    required Length measurementResult,
    required HeadCircumferenceForAgeData headCircumferenceData,
  }) =>
      measure(
        sex: Sex.female,
        age: age,
        measurementResult: measurementResult,
        headCircumferenceData: headCircumferenceData,
      );
}

final class _WHOGrowthStandardLengthForAge {
  LengthForAgeData get data => LengthForAgeData();

  LengthForAge measure({
    required Sex sex,
    required Age age,
    required Length lengthHeight,
    required LengthHeigthMeasurementPosition measure,
    required LengthForAgeData lengthForAgeData,
  }) =>
      LengthForAge(
        sex: sex,
        age: age,
        lengthHeight: lengthHeight,
        measure: measure,
        lengthForAgeData: lengthForAgeData,
      );

  LengthForAge maleStandingPosition({
    required Age age,
    required Length height,
    required LengthForAgeData lengthForAgeData,
  }) =>
      measure(
        sex: Sex.male,
        age: age,
        lengthHeight: height,
        lengthForAgeData: lengthForAgeData,
        measure: LengthHeigthMeasurementPosition.standing,
      );

  LengthForAge maleRecumbentPosition({
    required Age age,
    required Length length,
    required LengthForAgeData lengthForAgeData,
  }) =>
      measure(
        sex: Sex.male,
        age: age,
        lengthHeight: length,
        lengthForAgeData: lengthForAgeData,
        measure: LengthHeigthMeasurementPosition.recumbent,
      );

  LengthForAge femaleStandingPosition({
    required Age age,
    required Length heigth,
    required LengthForAgeData lengthForAgeData,
  }) =>
      measure(
        sex: Sex.female,
        age: age,
        lengthHeight: heigth,
        lengthForAgeData: lengthForAgeData,
        measure: LengthHeigthMeasurementPosition.standing,
      );

  LengthForAge femaleRecumbentPosition({
    required Age age,
    required Length length,
    required LengthForAgeData lengthForAgeData,
  }) =>
      measure(
        sex: Sex.female,
        age: age,
        lengthHeight: length,
        lengthForAgeData: lengthForAgeData,
        measure: LengthHeigthMeasurementPosition.recumbent,
      );
}

final class _WHOGrowthStandardSubscapularSkinfoldForAge {
  SubscapularSkinfoldForAgeData get data => SubscapularSkinfoldForAgeData();

  SubscapularSkinfoldForAge measure({
    required Sex sex,
    required Age age,
    required Length measurementResult,
    required SubscapularSkinfoldForAgeData subscapularSkinfoldData,
  }) =>
      SubscapularSkinfoldForAge(
        sex: sex,
        age: age,
        measurementResult: measurementResult,
        subscapularSkinfoldData: subscapularSkinfoldData,
      );

  SubscapularSkinfoldForAge male({
    required Age age,
    required Length measurementResult,
    required SubscapularSkinfoldForAgeData subscapularSkinfoldData,
  }) =>
      measure(
        sex: Sex.male,
        age: age,
        measurementResult: measurementResult,
        subscapularSkinfoldData: subscapularSkinfoldData,
      );

  SubscapularSkinfoldForAge female({
    required Age age,
    required Length measurementResult,
    required SubscapularSkinfoldForAgeData subscapularSkinfoldData,
  }) =>
      measure(
        sex: Sex.female,
        age: age,
        measurementResult: measurementResult,
        subscapularSkinfoldData: subscapularSkinfoldData,
      );
}

final class _WHOGrowthStandardTricepsSkinfoldForAge {
  TricepsSkinfoldForAgeData get data => TricepsSkinfoldForAgeData();

  TricepsSkinfoldForAge measure({
    required Sex sex,
    required Age age,
    required Length measurementResult,
    required TricepsSkinfoldForAgeData tricepsSkinfoldData,
  }) =>
      TricepsSkinfoldForAge(
        sex: sex,
        age: age,
        measurementResult: measurementResult,
        tricepsSkinfoldData: tricepsSkinfoldData,
      );

  TricepsSkinfoldForAge male({
    required Age age,
    required Length measurementResult,
    required TricepsSkinfoldForAgeData tricepsSkinfoldData,
  }) =>
      measure(
        sex: Sex.male,
        age: age,
        measurementResult: measurementResult,
        tricepsSkinfoldData: tricepsSkinfoldData,
      );

  TricepsSkinfoldForAge female({
    required Age age,
    required Length measurementResult,
    required TricepsSkinfoldForAgeData tricepsSkinfoldData,
  }) =>
      measure(
        sex: Sex.female,
        age: age,
        measurementResult: measurementResult,
        tricepsSkinfoldData: tricepsSkinfoldData,
      );
}

final class _WHOGrowthStandardWeightForAge {
  WeightForAgeData get data => WeightForAgeData();

  WeightForAge measure({
    required Sex sex,
    required Age age,
    required Mass weight,
    required WeightForAgeData weightForAgeData,
  }) =>
      WeightForAge(
        sex: sex,
        age: age,
        weight: weight,
        weightForAgeData: weightForAgeData,
      );

  WeightForAge male({
    required Age age,
    required Mass weight,
    required WeightForAgeData weightForAgeData,
  }) =>
      measure(
        sex: Sex.male,
        age: age,
        weight: weight,
        weightForAgeData: weightForAgeData,
      );

  WeightForAge female({
    required Age age,
    required Mass weight,
    required WeightForAgeData weightForAgeData,
  }) =>
      measure(
        sex: Sex.female,
        age: age,
        weight: weight,
        weightForAgeData: weightForAgeData,
      );
}

final class _WHOGrowthStandardWeightForHeight {
  WeightForHeightData get data => WeightForHeightData();

  WeightForHeight measure({
    required Sex sex,
    required Age age,
    required Length height,
    required Mass mass,
    required LengthHeigthMeasurementPosition measure,
    required WeightForHeightData weightForHeightData,
  }) =>
      WeightForHeight(
        sex: sex,
        age: age,
        height: height,
        mass: mass,
        measure: measure,
        weightForHeightData: weightForHeightData,
      );

  WeightForHeight maleStandingPosition({
    required Length height,
    required Mass weight,
    required WeightForHeightData weightForHeightData,
    required Age age,
  }) =>
      measure(
        sex: Sex.male,
        height: height,
        weightForHeightData: weightForHeightData,
        mass: weight,
        measure: LengthHeigthMeasurementPosition.standing,
        age: age,
      );

  WeightForHeight maleRecumbentPosition({
    required Length length,
    required Mass weight,
    required WeightForHeightData weightForHeightData,
    required Age age,
  }) =>
      measure(
        sex: Sex.male,
        height: length,
        weightForHeightData: weightForHeightData,
        mass: weight,
        measure: LengthHeigthMeasurementPosition.recumbent,
        age: age,
      );

  WeightForHeight femaleStandingPosition({
    required Length height,
    required Mass weight,
    required WeightForHeightData weightForHeightData,
    required Age age,
  }) =>
      measure(
        sex: Sex.female,
        height: height,
        mass: weight,
        weightForHeightData: weightForHeightData,
        measure: LengthHeigthMeasurementPosition.standing,
        age: age,
      );

  WeightForHeight femaleRecumbentPosition({
    required Length length,
    required Mass weight,
    required WeightForHeightData weightForHeightData,
    required Age age,
  }) =>
      measure(
        sex: Sex.female,
        height: length,
        mass: weight,
        weightForHeightData: weightForHeightData,
        measure: LengthHeigthMeasurementPosition.recumbent,
        age: age,
      );
}

final class _WHOGrowthStandardWeightForLength {
  WeigthForLengthData get data => WeigthForLengthData();

  WeigthForLength measure({
    required Sex sex,
    required Length lengthMeasurementResult,
    required Mass massMeasurementResult,
    required Age age,
    required LengthHeigthMeasurementPosition measure,
    required WeigthForLengthData weigthForLengthData,
  }) =>
      WeigthForLength(
        sex: sex,
        lengthMeasurementResult: lengthMeasurementResult,
        massMeasurementResult: massMeasurementResult,
        age: age,
        measure: measure,
        weigthForLengthData: weigthForLengthData,
      );

  WeigthForLength maleStandingPosition({
    required Length height,
    required Mass weight,
    required WeigthForLengthData weigthForLengthData,
    required Age age,
  }) =>
      measure(
        sex: Sex.male,
        age: age,
        measure: LengthHeigthMeasurementPosition.standing,
        lengthMeasurementResult: height,
        massMeasurementResult: weight,
        weigthForLengthData: weigthForLengthData,
      );

  WeigthForLength maleRecumbentPosition({
    required Length length,
    required Mass weight,
    required WeigthForLengthData weigthForLengthData,
    required Age age,
  }) =>
      measure(
        sex: Sex.male,
        age: age,
        measure: LengthHeigthMeasurementPosition.recumbent,
        lengthMeasurementResult: length,
        massMeasurementResult: weight,
        weigthForLengthData: weigthForLengthData,
      );

  WeigthForLength femaleStandingPosition({
    required Length height,
    required Mass weight,
    required WeigthForLengthData weigthForLengthData,
    required Age age,
  }) =>
      measure(
        sex: Sex.female,
        age: age,
        measure: LengthHeigthMeasurementPosition.standing,
        lengthMeasurementResult: height,
        massMeasurementResult: weight,
        weigthForLengthData: weigthForLengthData,
      );

  WeigthForLength femaleRecumbentPosition({
    required Length length,
    required Mass weight,
    required WeigthForLengthData weigthForLengthData,
    required Age age,
  }) =>
      measure(
        sex: Sex.female,
        age: age,
        measure: LengthHeigthMeasurementPosition.recumbent,
        lengthMeasurementResult: length,
        massMeasurementResult: weight,
        weigthForLengthData: weigthForLengthData,
      );
}
