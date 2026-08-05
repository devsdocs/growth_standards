// ignore_for_file: avoid_print

import 'package:growth_standards/growth_standards.dart';

void main() {
  final birthDay = Date(year: 2022, month: Months.june, date: 30);
  final age = Age(birthDay);
  const sex = Sex.male;
  final centimeters = Length$Centimeter(82.8);
  final kilograms = Mass$Kilogram(11.75);

  final gs = GrowthStandard.who.fromBirthTo5Years;

  print('=== 1. WHO Standard Calculation ===');
  print(
    'Age: ${age.yearsMonthsWeeksDaysOfAgeByNow} (${age.ageInTotalMonthsByNow} months)',
  );

  // WHO Length-for-Age
  final calcLengthForAge = gs.lengthForAge(
    age: age,
    lengthHeight: centimeters,
    sex: sex,
    measure: LengthHeightMeasurementPosition.recumbent,
  );
  print('Length-for-Age Z-Score: ${calcLengthForAge.zScore()} SD');
  print('Length-for-Age Percentile: ${calcLengthForAge.percentile()}%');

  // WHO Weight-for-Age
  final calcWeightForAge = gs.weightForAge(
    age: age,
    weight: kilograms,
    sex: sex,
  );
  print('Weight-for-Age Z-Score: ${calcWeightForAge.zScore()} SD');
  print('Weight-for-Age Percentile: ${calcWeightForAge.percentile()}%');

  print('\n=== 2. Longitudinal Trajectory Tracking (GrowthTrajectory) ===');
  final trajectory = GrowthTrajectory.whoWeightForAge(
    sex: sex,
    dateOfBirth: birthDay,
    visits: [
      VisitObservation(
        Date(year: 2022, month: Months.june, date: 30),
        Mass$Kilogram(3.4),
      ),
      VisitObservation(
        Date(year: 2022, month: Months.september, date: 30),
        Mass$Kilogram(6.4),
      ),
      VisitObservation(
        Date(year: 2022, month: Months.december, date: 30),
        Mass$Kilogram(7.9),
      ),
      VisitObservation(
        Date(year: 2023, month: Months.june, date: 30),
        Mass$Kilogram(9.6),
      ),
      VisitObservation(
        Date(year: 2024, month: Months.june, date: 30),
        Mass$Kilogram(12.2),
      ),
    ],
  );

  print('Tracked Visits: ${trajectory.length}');
  print('Latest Result: Z-Score = ${trajectory.latestResult?.zScore()} SD');

  print('\n=== 3. WHO Growth Velocity Calculation ===');
  final velocityAge = Age.byMonthsAgo(6);
  final msr1 = MassMeasurementHistory(
    velocityAge.dateAtMonthsAfterBirth(4),
    Mass$Kilogram(6.4),
  );
  final msr2 = MassMeasurementHistory(
    velocityAge.dateAtMonthsAfterBirth(6),
    Mass$Kilogram(7.9),
  );

  final velocityResult = gs.weightVelocityForAge(
    age: velocityAge,
    sex: sex,
    pastMeasurement: [msr1, msr2],
  );
  print(
    'Velocity Intervals Calculated: ${velocityResult.zScorePercentileMap().keys}',
  );

  print('\n=== 4. Growth Chart Graphic Export ===');
  final svgStr = calcWeightForAge.toSvg();
  print('Generated SVG Growth Chart (${svgStr.length} bytes)');

  final trajectorySvg = trajectory.toSvg();
  print(
    'Generated Longitudinal Trajectory SVG (${trajectorySvg.length} bytes)',
  );

  final velocitySvg = velocityResult.toSvg();
  print('Generated Growth Velocity SVG (${velocitySvg.length} bytes)');
}
