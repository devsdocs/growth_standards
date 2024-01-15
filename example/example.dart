// ignore_for_file: avoid_print

import 'package:growth_standards/growth_standards.dart';

final birthDay = Date(year: 2022, month: Months.june, date: 30);
const weight = 11.75;
const length = 82.8;

const centimeters = Centimeters(length);
const kilograms = Kilograms(weight);
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
    measure: LengthHeigthMeasurementPosition.standing,
  );
  print(calcLengthForAgeStanding.zScore(Precision.two));
  print(calcLengthForAgeStanding.percentile(Precision.two));

  print(
    gs.fromJson.lengthForAge(calcLengthForAgeStanding.toJson()),
  );

  final calcLengthForAgeRecumbent = calcLengthForAgeStanding.copyWith(
    measure: LengthHeigthMeasurementPosition.recumbent,
  );
  print(calcLengthForAgeRecumbent.zScore(Precision.two));
  print(calcLengthForAgeRecumbent.percentile(Precision.two));
  print(calcLengthForAgeRecumbent.toJson());

  final calcWeigthForAge = gs.weightForAge(
    age: age,
    weight: kilograms,
    sex: sex,
  );
  print(calcWeigthForAge.zScore(Precision.two));
  print(calcWeigthForAge.percentile(Precision.two));
  print(calcWeigthForAge.toJson());

  final calcWeigthForLength = gs.weightForLength(
    lengthMeasurementResult: centimeters,
    massMeasurementResult: kilograms,
    sex: sex,
    age: age,
    measure: LengthHeigthMeasurementPosition.recumbent,
  );
  print(calcWeigthForLength.zScore(Precision.two));
  print(calcWeigthForLength.percentile(Precision.two));
  print(calcWeigthForLength.toJson());

  final calcBMIForAge = gs.bodyMassIndexForAge(
    bodyMassIndexMeasurement:
        WHOGrowthStandardsBodyMassIndexMeasurement.fromMeasurement(
      measure: LengthHeigthMeasurementPosition.recumbent,
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
