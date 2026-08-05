// ignore_for_file: avoid_print

import 'package:growth_standards/growth_standards.dart';

void main() {
  print('====================================================');
  print(' WHO Growth Velocity Standards (0 to 2 Years)');
  print('====================================================\n');

  final age = Age.byMonthsAgo(6);
  final gs = GrowthStandard.who.fromBirthTo5Years;

  // 1. Weight Velocity
  final weightMsr1 = MassMeasurementHistory(
    age.dateAtMonthsAfterBirth(4),
    Mass$Kilogram(6.4),
  );
  final weightMsr2 = MassMeasurementHistory(
    age.dateAtMonthsAfterBirth(6),
    Mass$Kilogram(7.9),
  );

  final weightVelocity = gs.weightVelocityForAge(
    sex: Sex.male,
    age: age,
    pastMeasurement: [weightMsr1, weightMsr2],
  );
  print('1. Weight Velocity (2-Month Increment):');
  print('   Results Map: ${weightVelocity.zScorePercentileMap()}');

  // 2. Length Velocity
  final lengthMsr1 = LengthMeasurementHistory(
    age.dateAtMonthsAfterBirth(3),
    Length$Centimeter(61.0),
  );
  final lengthMsr2 = LengthMeasurementHistory(
    age.dateAtMonthsAfterBirth(6),
    Length$Centimeter(67.5),
  );

  final lengthVelocity = gs.lengthVelocityForAge(
    sex: Sex.male,
    age: age,
    pastMeasurement: [lengthMsr1, lengthMsr2],
  );
  print('\n2. Length Velocity (3-Month Increment):');
  print('   Results Map: ${lengthVelocity.zScorePercentileMap()}');

  // 3. Head Circumference Velocity
  final hcMsr1 = LengthMeasurementHistory(
    age.dateAtMonthsAfterBirth(4),
    Length$Centimeter(41.2),
  );
  final hcMsr2 = LengthMeasurementHistory(
    age.dateAtMonthsAfterBirth(6),
    Length$Centimeter(43.0),
  );

  final hcVelocity = gs.headCircumferenceVelocityForAge(
    sex: Sex.male,
    age: age,
    pastMeasurement: [hcMsr1, hcMsr2],
  );
  print('\n3. Head Circumference Velocity (2-Month Increment):');
  print('   Results Map: ${hcVelocity.zScorePercentileMap()}');

  // Export velocity graphics
  print('\nExporting Velocity SVG chart...');
  weightVelocity.saveSvg('doc/samples/who_weight_velocity.svg');
  print('Saved velocity chart to doc/samples/');
}
