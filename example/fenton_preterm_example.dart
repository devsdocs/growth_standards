// ignore_for_file: avoid_print

import 'package:growth_standards/growth_standards.dart';

void main() {
  print('====================================================');
  print(' Fenton 2013 Preterm Growth Standards (22 to 50 Weeks)');
  print('====================================================\n');

  final fenton = GrowthStandard.fenton;
  const pma = PostmenstrualAge.completedWeeks(32); // 32 weeks Postmenstrual Age
  const sex = Sex.female;

  // 1. Fenton Preterm Weight-for-Age
  final fentonWeight = fenton.weightForAge(
    sex: sex,
    age: pma,
    weight: const Mass$Kilogram(1.85),
  );
  print(
    '1. Fenton Weight (32w PMA): Z = ${fentonWeight.zScore()} SD | P = ${fentonWeight.percentile()}%',
  );

  // 2. Fenton Preterm Length-for-Age
  final fentonLength = fenton.lengthForAge(
    sex: sex,
    age: pma,
    lengthHeight: const Length$Centimeter(42.0),
    measure: LengthHeightMeasurementPosition.recumbent,
  );
  print(
    '2. Fenton Length (32w PMA): Z = ${fentonLength.zScore()} SD | P = ${fentonLength.percentile()}%',
  );

  // 3. Fenton Preterm Head Circumference-for-Age
  final fentonHc = fenton.headCircumferenceForAge(
    sex: sex,
    age: pma,
    measurementResult: const Length$Centimeter(29.5),
  );
  print(
    '3. Fenton Head Circumference (32w PMA): Z = ${fentonHc.zScore()} SD | P = ${fentonHc.percentile()}%',
  );

  // Export Fenton Chart Graphics
  print('\nGenerating Fenton Preterm SVG & PNG Growth Charts...');
  fentonWeight.saveSvg('doc/samples/fenton_preterm_girl.svg');
  fentonWeight.savePng('doc/samples/fenton_preterm_girl.png');
  print('Saved Fenton charts to doc/samples/');
}
