part of 'survey.dart';

({num zscore, num percentile})? _getBMIForAgeValue(
  ({LengthMeasurementHistory length, MassMeasurementHistory mass}) v,
  Person person,
  Precision precision,
  MeasurementType measurementType,
) {
  final ageInDays = person.age.ageInTotalDaysAtDate(v.length.date);
  final ageInMonths = person.age.ageInTotalMonthsAtDate(v.length.date);

  final notValid =
      (measurementType == MeasurementType.cdc && ageInMonths < 24) ||
          (measurementType == MeasurementType.who &&
              ageInDays <= 1856 &&
              v.mass.isOedema!);

  if (notValid) {
    return null;
  }

  final cdcBodyMassIndexForAge = CDCBodyMassIndexForAge(
    observationDate: v.length.date,
    sex: person.sex,
    age: person.age,
    bodyMassIndexMeasurement: CDCBodyMassIndexMeasurement.fromMeasurement(
      BodyMassIndex(
        lengthHeight: v.length.unit,
        weight: v.mass.unit,
      ),
    ),
  );

  final whoGrowthStandardsBodyMassIndexForAge =
      WHOGrowthStandardsBodyMassIndexForAge(
    sex: person.sex,
    oedemExist: v.mass.isOedema!,
    observationDate: v.mass.date,
    bodyMassIndexMeasurement:
        WHOGrowthStandardsBodyMassIndexMeasurement.fromMeasurement(
      lengthHeight: v.length.unit,
      weight: v.mass.unit,
      measure: v.length.measurementPosition!,
      age: person.age,
    ),
  );

  final whoGrowthReferenceBodyMassIndexForAge =
      WHOGrowthReferenceBodyMassIndexForAge(
    age: person.age,
    sex: person.sex,
    observationDate: v.mass.date,
    bodyMassIndexMeasurement:
        WHOGrowthReferenceBodyMassIndexMeasurement.fromMeasurement(
      BodyMassIndex(
        lengthHeight: v.length.unit,
        weight: v.mass.unit,
      ),
    ),
  );

  final whoLessThan2YO = (
    zscore: whoGrowthStandardsBodyMassIndexForAge.zScore(precision),
    percentile: whoGrowthStandardsBodyMassIndexForAge.percentile(precision),
  );

  final cdc = (
    zscore: cdcBodyMassIndexForAge.zScore(precision),
    percentile: cdcBodyMassIndexForAge.percentile(precision),
  );

  final whoMoreThan2YO = (
    zscore: whoGrowthReferenceBodyMassIndexForAge.zScore(precision),
    percentile: whoGrowthReferenceBodyMassIndexForAge.percentile(precision),
  );

  return switch (measurementType) {
    MeasurementType.cdc => cdc,
    MeasurementType.who => ageInDays <= 1856 ? whoLessThan2YO : whoMoreThan2YO,
    _ => null,
  };
}

({num zscore, num percentile})? _getWeigthForLengthValue(
  ({LengthMeasurementHistory length, MassMeasurementHistory mass}) v,
  Person person,
  Precision precision,
  MeasurementType measurementType,
) {
  final toCentimeter = v.length.unit.toCentimeter.value;

  if (toCentimeter < 45 || toCentimeter >= 122) return null;

  final adjusted = switch (measurementType) {
    MeasurementType.cdc => adjustedLengthHeight(
        age: person.age,
        measure: v.length.measurementPosition!,
        lengthHeight: v.length.unit,
        type: AdjustedLengthType.cdc,
      ),
    MeasurementType.who => adjustedLengthHeight(
        age: person.age,
        measure: v.length.measurementPosition!,
        lengthHeight: v.length.unit,
        type: AdjustedLengthType.who,
      ),
    _ => null,
  }!
      .value;

  if (adjusted < 45 || adjusted >= 122) {
    return null;
  }

  final ageInMonths = person.age.ageInTotalMonthsAtDate(v.length.date);

  final cdcConstraint = measurementType == MeasurementType.cdc &&
      ((ageInMonths <= 36 && adjusted >= 104) ||
          (ageInMonths > 36 && adjusted < 77));

  final whoConstraint = measurementType == MeasurementType.who &&
      ((ageInMonths <= 24 && adjusted >= 110) ||
          (ageInMonths > 24 && adjusted < 65));

  if (cdcConstraint || whoConstraint) {
    return null;
  }

  final whoGrowthStandardsWeigthForLength = WHOGrowthStandardsWeigthForLength(
    sex: person.sex,
    age: person.age,
    length: v.length.unit,
    weight: v.mass.unit,
    measure: v.length.measurementPosition!,
  );

  final whoGrowthStandardsWeightForHeight = WHOGrowthStandardsWeightForHeight(
    sex: person.sex,
    age: person.age,
    height: v.length.unit,
    weight: v.mass.unit,
    measure: v.length.measurementPosition!,
  );

  final cdcInfantWeigthForLength = CDCInfantWeigthForLength(
    sex: person.sex,
    age: person.age,
    length: v.length.unit,
    weight: v.mass.unit,
    measure: v.length.measurementPosition!,
  );

  final cdcWeigthForStature = CDCWeigthForStature(
    sex: person.sex,
    age: person.age,
    height: v.length.unit,
    weight: v.mass.unit,
    measure: v.length.measurementPosition!,
  );

  final cdcLessThan36Months = (
    zscore: cdcInfantWeigthForLength.zScore(precision),
    percentile: cdcInfantWeigthForLength.percentile(precision),
  );
  final cdcMoreThan36Months = (
    zscore: cdcWeigthForStature.zScore(precision),
    percentile: cdcWeigthForStature.percentile(precision),
  );
  final whoLessThan24Months = (
    zscore: whoGrowthStandardsWeigthForLength.zScore(precision),
    percentile: whoGrowthStandardsWeigthForLength.percentile(precision),
  );
  final whoMoreThan24Months = (
    zscore: whoGrowthStandardsWeightForHeight.zScore(precision),
    percentile: whoGrowthStandardsWeightForHeight.percentile(precision),
  );

  return switch (measurementType) {
    MeasurementType.cdc =>
      ageInMonths <= 36 ? cdcLessThan36Months : cdcMoreThan36Months,
    MeasurementType.who =>
      ageInMonths <= 24 ? whoLessThan24Months : whoMoreThan24Months,
    _ => null,
  };
}

({num zscore, num percentile})? _getLengthHeightForAgeValue(
  LengthMeasurementHistory v,
  Person person,
  Precision precision,
  MeasurementType measurementType,
) {
  return switch (measurementType) {
    MeasurementType.cdc => null,
    MeasurementType.who => null,
    MeasurementType.fenton => null,
  };
}

({num zscore, num percentile})? _getWeightForAgeValue(
  MassMeasurementHistory v,
  Person person,
  Precision precision,
  MeasurementType measurementType,
) {
  return switch (measurementType) {
    MeasurementType.cdc => null,
    MeasurementType.who => null,
    MeasurementType.fenton => null,
  };
}

({num zscore, num percentile})? _getHeadCircumferenceForAgeValue(
  LengthMeasurementHistory v,
  Person person,
  Precision precision,
  MeasurementType measurementType,
) {
  return switch (measurementType) {
    MeasurementType.cdc => null,
    MeasurementType.who => null,
    MeasurementType.fenton => null,
  };
}

({num zscore, num percentile})? _getSubscapularSkinfoldForAgeValue(
  LengthMeasurementHistory v,
  Person person,
  Precision precision,
  MeasurementType measurementType,
) {
  return switch (measurementType) {
    MeasurementType.cdc => null,
    MeasurementType.who => null,
    _ => null,
  };
}

({num zscore, num percentile})? _getTricepsSkinfoldForAgeValue(
  LengthMeasurementHistory v,
  Person person,
  Precision precision,
  MeasurementType measurementType,
) {
  return switch (measurementType) {
    MeasurementType.cdc => null,
    MeasurementType.who => null,
    _ => null,
  };
}

({num zscore, num percentile})? _getArmCircumferenceForAgeValue(
  LengthMeasurementHistory v,
  Person person,
  Precision precision,
  MeasurementType measurementType,
) {
  return switch (measurementType) {
    MeasurementType.cdc => null,
    MeasurementType.who => null,
    _ => null,
  };
}
