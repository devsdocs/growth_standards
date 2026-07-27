// ignore_for_file: avoid_print

import 'package:growth_standards/growth_standards.dart';

void main() {
  print('====================================================');
  print(' CDC Clinical Growth Standards (2 to 20 Years)');
  print('====================================================\n');

  final cdc220 = GrowthStandard.cdc.from2YearsAndAbove;
  final childAge = Age(
    Date(year: 2016, month: Months.june, date: 1),
    observedDate: Date(year: 2024, month: Months.june, date: 1),
  ); // 8 years old
  const sex = Sex.male;

  // 1. CDC Weight-for-Age (2-20y)
  final cdcWfa = cdc220.weightForAge(
    sex: sex,
    age: childAge,
    weight: const Mass$Kilogram(26.5),
  );
  print(
    '1. CDC Weight-for-Age (8y): Z = ${cdcWfa.zScore()} SD | P = ${cdcWfa.percentile()}%',
  );

  // 2. CDC Stature-for-Age (2-20y)
  final cdcStature = cdc220.statureForAge(
    sex: sex,
    age: childAge,
    lengthHeight: const Length$Centimeter(128.0),
    measure: LengthHeightMeasurementPosition.standing,
  );
  print(
    '2. CDC Stature-for-Age (8y): Z = ${cdcStature.zScore()} SD | P = ${cdcStature.percentile()}%',
  );

  // 3. CDC BMI-for-Age (2-20y)
  final cdcBmi = cdc220.bodyMassIndexForAge(
    sex: sex,
    age: childAge,
    bodyMassIndexMeasurement: CDCBodyMassIndexMeasurement(16.18),
  );
  print(
    '3. CDC BMI-for-Age (8y): Z = ${cdcBmi.zScore()} SD | P = ${cdcBmi.percentile()}%',
  );

  // 4. CDC Infant Weight-for-Age (0-36m)
  final cdcInfant = GrowthStandard.cdc.fromBirthTo36Months;
  final infantAge = Age(
    Date(year: 2023, month: Months.january, date: 1),
    observedDate: Date(year: 2024, month: Months.january, date: 1),
  ); // 12 months old
  final cdcInfantWfa = cdcInfant.weightForAge(
    sex: sex,
    age: infantAge,
    weight: const Mass$Kilogram(10.5),
  );
  print(
    '4. CDC Infant Weight-for-Age (12m): Z = ${cdcInfantWfa.zScore()} SD | P = ${cdcInfantWfa.percentile()}%',
  );

  // 5. CDC Infant Head Circumference-for-Age (0-36m)
  final cdcInfantHc = cdcInfant.headCircumferenceForAge(
    sex: sex,
    age: infantAge,
    measurementResult: const Length$Centimeter(46.8),
  );
  print(
    '5. CDC Infant Head Circumference (12m): Z = ${cdcInfantHc.zScore()} SD | P = ${cdcInfantHc.percentile()}%',
  );

  // Render CDC Chart in Percentile Mode
  print('\nGenerating CDC Percentile Growth Chart SVG & PNG...');
  final cdcConfig = GrowthChartConfig(
    displayMode: GrowthChartDisplayMode.percentile,
    title: 'CDC Weight-for-Age Clinical Record (Male, 8 Years)',
    theme: GrowthChartTheme.boy(),
  );

  cdcWfa.saveSvg('doc/samples/cdc_wfa_percentile.svg', config: cdcConfig);
  cdcWfa.savePng('doc/samples/cdc_wfa_percentile.png', config: cdcConfig);
  print('Saved CDC charts to doc/samples/');
}
