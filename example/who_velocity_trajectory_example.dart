// ignore_for_file: avoid_print

import 'package:growth_standards/growth_standards.dart';

void main() {
  print('====================================================');
  print(' WHO Growth Velocity Trajectory Example');
  print('====================================================\n');

  final gs = GrowthStandard.who.fromBirthTo5Years;
  const sex = Sex.male;

  // Simulate a child's growth over time with multiple velocity calculations
  // This shows how velocity changes over time - a velocity trajectory

  final velocityResults = <WHOGrowthStandardsWeightVelocityForAge>[];

  // 1. Calculate velocity at 6 months (4-6 month interval)
  final age6m = Age.byMonthsAgo(6);
  final weightMsr1_6m = MassMeasurementHistory(
    age6m.dateAtMonthsAfterBirth(4),
    Mass$Kilogram(6.4),
  );
  final weightMsr2_6m = MassMeasurementHistory(
    age6m.dateAtMonthsAfterBirth(6),
    Mass$Kilogram(7.9),
  );

  final velocity6m = gs.weightVelocityForAge(
    sex: sex,
    age: age6m,
    pastMeasurement: [weightMsr1_6m, weightMsr2_6m],
  );
  velocityResults.add(velocity6m);
  print('1. Velocity at 6 months (4-6m interval):');
  print('   ${velocity6m.zScorePercentileMap()}');

  // 2. Calculate velocity at 9 months (7-9 month interval)
  final age9m = Age.byMonthsAgo(9);
  final weightMsr1_9m = MassMeasurementHistory(
    age9m.dateAtMonthsAfterBirth(7),
    Mass$Kilogram(7.9),
  );
  final weightMsr2_9m = MassMeasurementHistory(
    age9m.dateAtMonthsAfterBirth(9),
    Mass$Kilogram(8.7),
  );

  final velocity9m = gs.weightVelocityForAge(
    sex: sex,
    age: age9m,
    pastMeasurement: [weightMsr1_9m, weightMsr2_9m],
  );
  velocityResults.add(velocity9m);
  print('\n2. Velocity at 9 months (7-9m interval):');
  print('   ${velocity9m.zScorePercentileMap()}');

  // 3. Calculate velocity at 12 months (10-12 month interval)
  final age12m = Age.byMonthsAgo(12);
  final weightMsr1_12m = MassMeasurementHistory(
    age12m.dateAtMonthsAfterBirth(10),
    Mass$Kilogram(8.7),
  );
  final weightMsr2_12m = MassMeasurementHistory(
    age12m.dateAtMonthsAfterBirth(12),
    Mass$Kilogram(9.5),
  );

  final velocity12m = gs.weightVelocityForAge(
    sex: sex,
    age: age12m,
    pastMeasurement: [weightMsr1_12m, weightMsr2_12m],
  );
  velocityResults.add(velocity12m);
  print('\n3. Velocity at 12 months (10-12m interval):');
  print('   ${velocity12m.zScorePercentileMap()}');

  // 4. Calculate velocity at 15 months (13-15 month interval)
  final age15m = Age.byMonthsAgo(15);
  final weightMsr1_15m = MassMeasurementHistory(
    age15m.dateAtMonthsAfterBirth(13),
    Mass$Kilogram(9.5),
  );
  final weightMsr2_15m = MassMeasurementHistory(
    age15m.dateAtMonthsAfterBirth(15),
    Mass$Kilogram(10.1),
  );

  final velocity15m = gs.weightVelocityForAge(
    sex: sex,
    age: age15m,
    pastMeasurement: [weightMsr1_15m, weightMsr2_15m],
  );
  velocityResults.add(velocity15m);
  print('\n4. Velocity at 15 months (13-15m interval):');
  print('   ${velocity15m.zScorePercentileMap()}');

  // 5. Calculate velocity at 18 months (16-18 month interval)
  final age18m = Age.byMonthsAgo(18);
  final weightMsr1_18m = MassMeasurementHistory(
    age18m.dateAtMonthsAfterBirth(16),
    Mass$Kilogram(10.1),
  );
  final weightMsr2_18m = MassMeasurementHistory(
    age18m.dateAtMonthsAfterBirth(18),
    Mass$Kilogram(10.6),
  );

  final velocity18m = gs.weightVelocityForAge(
    sex: sex,
    age: age18m,
    pastMeasurement: [weightMsr1_18m, weightMsr2_18m],
  );
  velocityResults.add(velocity18m);
  print('\n5. Velocity at 18 months (16-18m interval):');
  print('   ${velocity18m.zScorePercentileMap()}');

  // Export velocity trajectory SVG
  print('\n====================================================');
  print(' Exporting Velocity Trajectory SVG chart...');
  print('====================================================');

  // Use the new trajectory extension method
  velocityResults.saveSvg('doc/samples/who_weight_velocity_trajectory.svg');
  print(
    'Saved velocity trajectory chart to doc/samples/who_weight_velocity_trajectory.svg',
  );

  print('\n====================================================');
  print(' Velocity Trajectory Summary');
  print('====================================================');
  print('Total velocity measurements: ${velocityResults.length}');
  print('Age range: 6 to 18 months');
  print('Chart shows velocity trends over time');
  print('This helps identify acceleration/deceleration in growth rate');
}
