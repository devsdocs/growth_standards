// ignore_for_file: avoid_print

import 'package:growth_standards/growth_standards.dart';

void main() {
  print('====================================================');
  print(' INTERGROWTH-21st Fetal Size & Ultrasound Standards');
  print('====================================================\n');

  final intergrowth = GrowthStandard.intergrowth.duringPregnancy;
  final ga10w = Age(
    Date(year: 2024, month: Months.january, date: 1),
    observedDate: Date(year: 2024, month: Months.march, date: 12),
  );
  final ga24w = Age(
    Date(year: 2024, month: Months.january, date: 1),
    observedDate: Date(year: 2024, month: Months.june, date: 18),
  );

  // 1. Early Pregnancy Dating by Crown-Rump Length (CRL)
  final crlDating = intergrowth.earlyPregnancyCRL(
    gestationalAge: ga10w,
    measurementResult: const Length$Millimeter(45.0),
  );
  print('1. Early Pregnancy Dating (CRL 45mm): Z = ${crlDating.zScore()} SD');

  // 2. Fetal Crown-Rump Length (CRL) Size by Gestational Age
  final fetalCrl = intergrowth.fetalSizeInEarlyPregnancy(
    gestationalAge: ga10w,
    measurementResult: const Length$Millimeter(38.0),
  );
  print(
    '2. Fetal CRL (10w): Z = ${fetalCrl.zScore()} SD | P = ${fetalCrl.percentile()}%',
  );

  // 3. Fetal Abdominal Circumference (AC)
  final fetalAc = intergrowth.fetalAbdominalCircumference(
    gestationalAge: ga24w,
    measurementResult: const Length$Millimeter(195.0),
  );
  print(
    '3. Fetal Abdominal Circumference (24w): Z = ${fetalAc.zScore()} SD | P = ${fetalAc.percentile()}%',
  );

  // 4. Fetal Biparietal Diameter (BPD)
  final fetalBpd = intergrowth.fetalBiparietalDiameter(
    gestationalAge: ga24w,
    measurementResult: const Length$Millimeter(60.5),
  );
  print(
    '4. Fetal Biparietal Diameter (24w): Z = ${fetalBpd.zScore()} SD | P = ${fetalBpd.percentile()}%',
  );

  // 5. Fetal Femur Length (FL)
  final fetalFl = intergrowth.fetalFemurLength(
    gestationalAge: ga24w,
    measurementResult: const Length$Millimeter(43.2),
  );
  print(
    '5. Fetal Femur Length (24w): Z = ${fetalFl.zScore()} SD | P = ${fetalFl.percentile()}%',
  );

  // 6. Fetal Head Circumference (HC)
  final fetalHc = intergrowth.fetalHeadCircumference(
    gestationalAge: ga24w,
    measurementResult: const Length$Millimeter(222.0),
  );
  print(
    '6. Fetal Head Circumference (24w): Z = ${fetalHc.zScore()} SD | P = ${fetalHc.percentile()}%',
  );
}
