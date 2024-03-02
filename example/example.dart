// ignore_for_file: avoid_print

import 'package:growth_standards/growth_standards.dart';

final birthDay = Date(year: 2022, month: Months.june, date: 30);
const weight = 11.75;
const length = 82.8;

const centimeters = Length$Centimeter(length);
const kilograms = Mass$Kilogram(weight);
final age = Age(birthDay);

final gs = GrowthStandard.who.fromBirthTo5Years;
const sex = Sex.male;

void main() {
  print(
    'Age: ${age.yearsMonthsWeeksDaysOfAgeByNow} with total ${age.ageInTotalMonthsByNow} in Months or ${age.ageInTotalDaysByNow} in Days',
  );
  // Demonstrating adjusted zscore calculation
  final calcLengthForAgeStanding = gs.lengthForAge(
    age: age,
    lengthHeight: centimeters,
    sex: sex,
    measure: LengthHeightMeasurementPosition.standing,
  );
  print(age.toJson());
  print(birthDay.toJson());
  print(Date.fromJson(birthDay.toJson()));
  print(Age.fromJson(age.toJson()));

  print(calcLengthForAgeStanding.zScore(Precision.two));
  print(calcLengthForAgeStanding.percentile(Precision.two));
  print(calcLengthForAgeStanding.toJson());
  print(
    gs.fromJson.lengthForAge(calcLengthForAgeStanding.toJson()),
  );

  final calcLengthForAgeRecumbent = calcLengthForAgeStanding.copyWith(
    measure: LengthHeightMeasurementPosition.recumbent,
  );
  print(calcLengthForAgeRecumbent.zScore(Precision.two));
  print(calcLengthForAgeRecumbent.percentile(Precision.two));
  print(calcLengthForAgeRecumbent.toJson());

  final calcWeightForAge = gs.weightForAge(
    age: age,
    weight: kilograms,
    sex: sex,
  );

  print(calcWeightForAge.zScore(Precision.two));
  print(calcWeightForAge.percentile(Precision.two));
  print(calcWeightForAge.toJson());

  final calcWeightForLength = gs.weightForLength(
    lengthMeasurementResult: centimeters,
    massMeasurementResult: kilograms,
    sex: sex,
    age: age,
    measure: LengthHeightMeasurementPosition.recumbent,
  );
  print(calcWeightForLength.zScore(Precision.two));
  print(calcWeightForLength.percentile(Precision.two));
  print(calcWeightForLength.toJson());

  final calcBMIForAge = gs.bodyMassIndexForAge(
    bodyMassIndexMeasurement:
        WHOGrowthStandardsBodyMassIndexMeasurement.fromMeasurement(
      measure: LengthHeightMeasurementPosition.recumbent,
      lengthHeight: centimeters,
      weight: kilograms,
      age: age,
    ),
    sex: sex,
  );

  print(calcBMIForAge.zScore(Precision.two));
  print(calcBMIForAge.percentile(Precision.two));
  print(calcBMIForAge.toJson());
}
