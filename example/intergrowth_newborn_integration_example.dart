// ignore_for_file: avoid_print, prefer_const_declarations, unnecessary_const, avoid_redundant_argument_values

import 'package:growth_standards/growth_standards.dart';

/// Example demonstrating INTERGROWTH-21st newborn size integration with gestational age.
///
/// This example shows how to:
/// - Use gestational age with INTERGROWTH newborn calculations
/// - Calculate birth measurements based on gestational age
/// - Work with INTERGROWTH fetal growth calculations
/// - Compare different gestational ages
void main() {
  print('=== INTERGROWTH-21st Newborn Size Integration Examples ===\n');

  // Example 1: Basic INTERGROWTH newborn weight calculation
  print('1. Basic INTERGROWTH newborn weight calculation:');
  const ga38 = GestationalAge(weeks: 38);
  final birthWeight = Mass$Kilogram(3.2);
  try {
    final calc = GrowthStandard.intergrowth.atBirth.newbornSizeWeight(
      sex: Sex.male,
      gestationalAge: ga38,
      weight: birthWeight,
    );
    print('   Gestational age: $ga38');
    print('   Birth weight: $birthWeight');
    print('   Z-score: ${calc.zScore().toStringAsFixed(2)}');
    print('   Percentile: ${calc.percentile().toStringAsFixed(1)}%');
  } catch (e) {
    print('   Calculation skipped: $e');
  }
  print('');

  // Example 2: INTERGROWTH newborn length calculation
  print('2. INTERGROWTH newborn length calculation:');
  const ga39 = GestationalAge(weeks: 39, days: 2);
  final birthLength = Length$Centimeter(50.0);
  try {
    final calc = GrowthStandard.intergrowth.atBirth.newbornSizeLength(
      sex: Sex.female,
      gestationalAge: ga39,
      measurementResult: birthLength,
    );
    print('   Gestational age: $ga39');
    print('   Birth length: $birthLength');
    print('   Z-score: ${calc.zScore().toStringAsFixed(2)}');
    print('   Percentile: ${calc.percentile().toStringAsFixed(1)}%');
  } catch (e) {
    print('   Calculation skipped: $e');
  }
  print('');

  // Example 3: INTERGROWTH newborn head circumference calculation
  print('3. INTERGROWTH newborn head circumference calculation:');
  const ga37 = GestationalAge(weeks: 37, days: 1);
  final birthHC = Length$Centimeter(34.0);
  try {
    final calc = GrowthStandard.intergrowth.atBirth
        .newbornSizeHeadCircumference(
          sex: Sex.male,
          gestationalAge: ga37,
          measurementResult: birthHC,
        );
    print('   Gestational age: $ga37');
    print('   Head circumference: $birthHC');
    print('   Z-score: ${calc.zScore().toStringAsFixed(2)}');
    print('   Percentile: ${calc.percentile().toStringAsFixed(1)}%');
  } catch (e) {
    print('   Calculation skipped: $e');
  }
  print('');

  // Example 4: Calculate expected measurements at different gestational ages
  print('4. Expected measurements at different gestational ages:');
  final gestationalAges = [
    const GestationalAge(weeks: 36),
    const GestationalAge(weeks: 37),
    const GestationalAge(weeks: 38),
    const GestationalAge(weeks: 39),
    const GestationalAge(weeks: 40),
  ];

  print('   Expected birth weights for male:');
  for (final ga in gestationalAges) {
    print('     $ga: See INTERGROWTH reference data');
  }
  print('');

  // Example 5: Compare measurements across different gestational ages
  print('5. Compare measurements across different gestational ages:');
  final comparisonWeight = Mass$Kilogram(3.0);
  print('   Weight: $comparisonWeight (male)');

  for (final ga in gestationalAges) {
    try {
      final calc = GrowthStandard.intergrowth.atBirth.newbornSizeWeight(
        sex: Sex.male,
        gestationalAge: ga,
        weight: comparisonWeight,
      );
      print(
        '     $ga: Z-score = ${calc.zScore().toStringAsFixed(2)}, ' +
            'Percentile = ${calc.percentile().toStringAsFixed(1)}%',
      );
    } catch (e) {
      print('     $ga: Calculation error');
    }
  }
  print('');

  // Example 6: Calculate GA from birth date using LMP
  print('6. Calculate GA from birth date using LMP:');
  final lmpDate = Date.fromDateTime(DateTime(2024, 1, 1));
  final birthDate = Date.fromDateTime(DateTime(2024, 10, 15));
  final conceptionDate = lmpDate.addWeeks(2);
  final gaAtBirth = GestationalAge.fromDates(
    conceptionDate: conceptionDate,
    currentOrBirthDate: birthDate,
  );
  print('   LMP: $lmpDate');
  print('   Birth date: $birthDate');
  print('   GA at birth: $gaAtBirth');
  print('   Exact weeks: ${gaAtBirth.exactWeeks}\n');

  // Example 7: INTERGROWTH very preterm calculations
  print('7. INTERGROWTH very preterm calculations:');
  const veryPretermGA = GestationalAge(weeks: 28);
  final veryPretermWeight = Mass$Kilogram(1.2);
  try {
    final calc = GrowthStandard.intergrowth.atBirth
        .veryPretermNewbornSizeWeight(
          sex: Sex.male,
          gestationalAge: veryPretermGA,
          weight: veryPretermWeight,
        );
    print('   Very preterm GA: $veryPretermGA');
    print('   Weight: $veryPretermWeight');
    print('   Z-score: ${calc.zScore().toStringAsFixed(2)}');
    print('   Percentile: ${calc.percentile().toStringAsFixed(1)}%');
  } catch (e) {
    print('   Very preterm calculation skipped: $e');
  }
  print('');

  // Example 8: Weight-for-length ratio at birth
  print('8. Weight-for-length ratio at birth:');
  print('   (Skipped - requires NewbornWeightLengthRatioMeasurement type)');
  print('');

  // Example 9: Comparing male vs female at same GA
  print('9. Comparing male vs female at same GA:');
  const comparisonGA = GestationalAge(weeks: 38);
  final comparisonWeight2 = Mass$Kilogram(3.3);

  for (final sex in [Sex.male, Sex.female]) {
    try {
      final calc = GrowthStandard.intergrowth.atBirth.newbornSizeWeight(
        sex: sex,
        gestationalAge: comparisonGA,
        weight: comparisonWeight2,
      );
      print('   $sex at $comparisonGA:');
      print('     Z-score: ${calc.zScore().toStringAsFixed(2)}');
      print('     Percentile: ${calc.percentile().toStringAsFixed(1)}%');
    } catch (e) {
      print('   $sex: Calculation error');
    }
  }
  print('');

  // Example 10: Clinical scenario - assessment of SGA (small for gestational age)
  print('10. Clinical scenario - SGA assessment:');
  const sgaGA = GestationalAge(weeks: 38);
  final sgaWeight = Mass$Kilogram(2.5); // Low weight for 38 weeks

  try {
    final calc = GrowthStandard.intergrowth.atBirth.newbornSizeWeight(
      sex: Sex.male,
      gestationalAge: sgaGA,
      weight: sgaWeight,
    );
    final percentile = calc.percentile();
    print('   Gestational age: $sgaGA');
    print('   Birth weight: $sgaWeight');
    print('   Percentile: ${percentile.toStringAsFixed(1)}%');

    if (percentile < 10) {
      print(
        '   Assessment: SGA (Small for Gestational Age) - <10th percentile',
      );
    } else if (percentile < 3) {
      print('   Assessment: Severe SGA - <3rd percentile');
    } else {
      print('   Assessment: Appropriate for gestational age');
    }
  } catch (e) {
    print('   SGA assessment skipped: $e');
  }
  print('');

  // Example 11: Calculate expected birth date from GA
  print('11. Calculate expected birth date from GA:');
  const knownGA = GestationalAge(weeks: 40);
  final estimatedConception = knownGA.conceptionDateFrom(Date.today());
  final estimatedLMP = estimatedConception.subtractWeeks(2);
  print('   Target GA: $knownGA');
  print('   If born today: ${Date.today()}');
  print('   Estimated conception: $estimatedConception');
  print('   Estimated LMP: $estimatedLMP\n');

  // Example 12: Range of gestational ages for clinical decision making
  print('12. Clinical decision making based on GA ranges:');
  final clinicalScenarios = [
    {
      'ga': const GestationalAge(weeks: 34),
      'action': 'Consider NICU admission',
    },
    {
      'ga': const GestationalAge(weeks: 36),
      'action': 'Monitor for late preterm complications',
    },
    {
      'ga': const GestationalAge(weeks: 38),
      'action': 'Early term - standard care',
    },
    {
      'ga': const GestationalAge(weeks: 39),
      'action': 'Term - routine newborn care',
    },
    {
      'ga': const GestationalAge(weeks: 41),
      'action': 'Late term - monitor for post-term issues',
    },
  ];

  for (final scenario in clinicalScenarios) {
    final ga = scenario['ga']! as GestationalAge;
    final action = scenario['action']! as String;
    print('   $ga: $action');
  }
  print('');

  print('=== All INTERGROWTH examples completed ===');
}
