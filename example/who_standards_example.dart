// ignore_for_file: avoid_print

import 'package:growth_standards/growth_standards.dart';

void main() {
  print('====================================================');
  print(' WHO Child Growth Standards (0 to 5 Years & 5 to 18 Years)');
  print('====================================================\n');

  final dob = Date(year: 2023, month: Months.june, date: 15);
  final infantAge = Age(
    dob,
    observedDate: Date(year: 2024, month: Months.june, date: 15),
  ); // 1 year old
  const sex = Sex.male;

  final who05 = GrowthStandard.who.fromBirthTo5Years;

  // 1. Weight-for-Age (0-5y)
  final wfa = who05.weightForAge(
    sex: sex,
    age: infantAge,
    weight: const Mass$Kilogram(10.2),
  );
  print(
    '1. Weight-for-Age (0-5y): Z = ${wfa.zScore()} SD | P = ${wfa.percentile()}%',
  );

  // 2. Length-for-Age (0-5y)
  final lfa = who05.lengthForAge(
    sex: sex,
    age: infantAge,
    lengthHeight: const Length$Centimeter(75.5),
    measure: LengthHeightMeasurementPosition.recumbent,
  );
  print(
    '2. Length-for-Age (0-5y): Z = ${lfa.zScore()} SD | P = ${lfa.percentile()}%',
  );

  // 3. Weight-for-Length (45 to 110 cm)
  final wfl = who05.weightForLength(
    sex: sex,
    age: infantAge,
    lengthMeasurementResult: const Length$Centimeter(75.5),
    massMeasurementResult: const Mass$Kilogram(10.2),
    measure: LengthHeightMeasurementPosition.recumbent,
  );
  print(
    '3. Weight-for-Length: Z = ${wfl.zScore()} SD | P = ${wfl.percentile()}%',
  );

  // 4. Weight-for-Height (65 to 120 cm)
  final olderAge = Age(
    dob,
    observedDate: Date(year: 2025, month: Months.june, date: 15),
  ); // 2 years old
  final wfh = who05.weightForHeight(
    sex: sex,
    age: olderAge,
    height: const Length$Centimeter(88.0),
    mass: const Mass$Kilogram(12.5),
    measure: LengthHeightMeasurementPosition.standing,
  );
  print(
    '4. Weight-for-Height: Z = ${wfh.zScore()} SD | P = ${wfh.percentile()}%',
  );

  // 5. BMI-for-Age (0-5y)
  final bmi = who05.bodyMassIndexForAge(
    sex: sex,
    bodyMassIndexMeasurement:
        WHOGrowthStandardsBodyMassIndexMeasurement.fromMeasurement(
          measure: LengthHeightMeasurementPosition.recumbent,
          lengthHeight: const Length$Centimeter(75.5),
          weight: const Mass$Kilogram(10.2),
          age: infantAge,
        ),
  );
  print(
    '5. BMI-for-Age (0-5y): Z = ${bmi.zScore()} SD | P = ${bmi.percentile()}%',
  );

  // 6. Head Circumference-for-Age (0-5y)
  final hc = who05.headCircumferenceForAge(
    sex: sex,
    age: infantAge,
    measurementResult: const Length$Centimeter(46.5),
  );
  print(
    '6. Head Circumference-for-Age: Z = ${hc.zScore()} SD | P = ${hc.percentile()}%',
  );

  // 7. Arm Circumference-for-Age (MUAC 0-5y)
  final muac = who05.armCircumferenceForAge(
    sex: sex,
    age: infantAge,
    measurementResult: const Length$Centimeter(15.2),
  );
  print('7. MUAC-for-Age: Z = ${muac.zScore()} SD | P = ${muac.percentile()}%');

  // 8. Subscapular Skinfold-for-Age (0-5y)
  final subscapular = who05.subscapularSkinfoldForAge(
    sex: sex,
    age: infantAge,
    measurementResult: const Length$Millimeter(7.5),
  );
  print(
    '8. Subscapular Skinfold-for-Age: Z = ${subscapular.zScore()} SD | P = ${subscapular.percentile()}%',
  );

  // 9. Triceps Skinfold-for-Age (0-5y)
  final triceps = who05.tricepsSkinfoldForAge(
    sex: sex,
    age: infantAge,
    measurementResult: const Length$Millimeter(8.2),
  );
  print(
    '9. Triceps Skinfold-for-Age: Z = ${triceps.zScore()} SD | P = ${triceps.percentile()}%',
  );

  print('\n=== WHO Growth Reference (5 to 18 Years) ===');
  final childAge = Age(
    Date(year: 2017, month: Months.june, date: 15),
  ); // 7 years old
  final who518 = GrowthStandard.who.from5YearsAndAbove;

  // 10. Height-for-Age (5-18y)
  final hfa518 = who518.heightForAge(
    sex: Sex.female,
    age: childAge,
    lengthHeight: const Length$Centimeter(133.5),
    measure: LengthHeightMeasurementPosition.standing,
  );
  print(
    '10. WHO Height-for-Age (5-18y): Z = ${hfa518.zScore()} SD | P = ${hfa518.percentile()}%',
  );

  // 11. Weight-for-Age (5-10y)
  final wfa510 = who518.weightForAge(
    sex: Sex.female,
    age: childAge,
    weight: const Mass$Kilogram(28.5),
  );
  print(
    '11. WHO Weight-for-Age (5-10y): Z = ${wfa510.zScore()} SD | P = ${wfa510.percentile()}%',
  );

  // 12. BMI-for-Age (5-18y)
  final bmi518 = who518.bodyMassIndexForAge(
    sex: Sex.female,
    age: childAge,
    bodyMassIndexMeasurement: WHOGrowthReferenceBodyMassIndexMeasurement(16.0),
  );
  print(
    '12. WHO BMI-for-Age (5-18y): Z = ${bmi518.zScore()} SD | P = ${bmi518.percentile()}%',
  );

  print('\nGenerating SVG vector chart for Weight-for-Age...');
  wfa.saveSvg('doc/samples/who_wfa_sample.svg');
  print('Saved WHO SVG chart to doc/samples/who_wfa_sample.svg');
}
