// ignore_for_file: avoid_print

import 'package:growth_standards/growth_standards.dart';

final birthDay = DateOfBirth(year: 2022, month: Months.june, date: 30);
const weight = 11.5;
const length = 80;

const centimeters = Centimeters(length);
const kilograms = Kilograms(weight);
final age = Age.byBirthDay(birthDay);

final gs = GrowthStandard.whoGrowthStandard;

final heightData = gs.lengthForAge.data;
final weightData = gs.weightForAge.data;
final weigthForLengthData = gs.weightForLength.data;
final bodyMassIndexData = gs.bodyMassIndexForAge.data;

void main() {
  print(
    'Age: ${age.yearsMonthsDays.years} Years, ${age.yearsMonthsDays.months} Months, ${age.yearsMonthsDays.days} Days, with total ${age.totalMonths} in Months or ${age.totalDays} in Days',
  );
  // Demonstrating adjusted zscore calculation
  final calcLengthForAgeStanding = gs.lengthForAge.maleStandingPosition(
    age: age,
    height: centimeters,
    lengthForAgeData: heightData,
  );
  print(calcLengthForAgeStanding.zScore);
  print(calcLengthForAgeStanding.percentile);

  final calcLengthForAgeRecumbent = gs.lengthForAge.maleRecumbentPosition(
    age: age,
    length: centimeters,
    lengthForAgeData: heightData,
  );
  print(calcLengthForAgeRecumbent.zScore);
  print(calcLengthForAgeRecumbent.percentile);

  final calcWeigthForAge = gs.weightForAge.male(
    age: age,
    weight: kilograms,
    weightForAgeData: weightData,
  );
  print(calcWeigthForAge.zScore);
  print(calcWeigthForAge.percentile);

  final calcWeigthForLength = gs.weightForLength.maleRecumbentPosition(
    length: centimeters,
    weight: kilograms,
    weigthForLengthData: weigthForLengthData,
    age: age,
  );
  print(calcWeigthForLength.zScore);
  print(calcWeigthForLength.percentile);

  final calcBMIForAge = gs.bodyMassIndexForAge.male(
    bodyMassIndexMeasurement:
        gs.bodyMassIndexForAge.bodyMassIndexMeasurement.withRecumbentPosition(
      length: centimeters,
      weight: kilograms,
      age: age,
    ),
    bodyMassIndexData: bodyMassIndexData,
  );

  print(calcBMIForAge.zScore);
  print(calcBMIForAge.percentile);
}
