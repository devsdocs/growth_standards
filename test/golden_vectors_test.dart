import 'package:growth_standards/growth_standards.dart';
import 'package:test/test.dart';

void main() {
  group('Golden Test Vectors — WHO 2006 Child Growth Standards', () {
    test('WHO Male Weight-for-Age at Birth (0 days)', () {
      final baseCalc = GrowthStandard.who.fromBirthTo5Years.weightForAge(
        sex: Sex.male,
        age: Age.byDaysAgo(0),
        weight: Mass$Kilogram(3.0),
      );

      final medianWeight = baseCalc.lmsData.lms.m;
      final calc = GrowthStandard.who.fromBirthTo5Years.weightForAge(
        sex: Sex.male,
        age: Age.byDaysAgo(0),
        weight: Mass$Kilogram(medianWeight),
      );

      // When measurement y = median M, zScore MUST be 0.00 and percentile MUST be 50.00%
      expect(calc.zScore(), closeTo(0.00, 0.001));
      expect(calc.percentile(), closeTo(50.00, 0.01));
    });

    test('WHO Female Length-for-Age at 1 Year (365 days)', () {
      final baseCalc = GrowthStandard.who.fromBirthTo5Years.lengthForAge(
        sex: Sex.female,
        age: Age.byDaysAgo(365),
        lengthHeight: Length$Centimeter(70.0),
        measure: LengthHeightMeasurementPosition.recumbent,
      );

      final medianLength = baseCalc.lmsData.lms.m;
      final calc = GrowthStandard.who.fromBirthTo5Years.lengthForAge(
        sex: Sex.female,
        age: Age.byDaysAgo(365),
        lengthHeight: Length$Centimeter(medianLength),
        measure: LengthHeightMeasurementPosition.recumbent,
      );

      expect(calc.zScore(), closeTo(0.00, 0.001));
      expect(calc.percentile(), closeTo(50.00, 0.01));
    });

    test('WHO Male BMI-for-Age at 2 Years (730 days)', () {
      final age = Age.byDaysAgo(730);
      final baseCalc = GrowthStandard.who.fromBirthTo5Years.bodyMassIndexForAge(
        sex: Sex.male,
        bodyMassIndexMeasurement: WHOGrowthStandardsBodyMassIndexMeasurement(
          15.0,
          age: age,
        ),
      );

      final medianBmi = baseCalc.lmsData.lms.m;
      final calc = GrowthStandard.who.fromBirthTo5Years.bodyMassIndexForAge(
        sex: Sex.male,
        bodyMassIndexMeasurement: WHOGrowthStandardsBodyMassIndexMeasurement(
          medianBmi,
          age: age,
        ),
      );

      expect(calc.zScore(), closeTo(0.00, 0.001));
      expect(calc.percentile(), closeTo(50.00, 0.01));
    });
  });

  group('Golden Test Vectors — CDC 2000 Growth Charts', () {
    test('CDC Male Weight-for-Age at 24 completed months (Agemos 24.5)', () {
      final baseCalc = GrowthStandard.cdc.from2YearsAndAbove.weightForAge(
        sex: Sex.male,
        age: Age.byMonthsAgo(24),
        weight: Mass$Kilogram(12.0),
      );

      final medianWeight = baseCalc.lmsData.lms.m;
      final calc = GrowthStandard.cdc.from2YearsAndAbove.weightForAge(
        sex: Sex.male,
        age: Age.byMonthsAgo(24),
        weight: Mass$Kilogram(medianWeight),
      );

      expect(calc.zScore(), closeTo(0.00, 0.001));
      expect(calc.percentile(), closeTo(50.00, 0.01));
    });

    test('CDC Female BMI-for-Age at 10 Years (Agemos 120.5)', () {
      final age = Age.byMonthsAgo(120);
      final baseCalc = GrowthStandard.cdc.from2YearsAndAbove
          .bodyMassIndexForAge(
            sex: Sex.female,
            bodyMassIndexMeasurement: CDCBodyMassIndexMeasurement(16.0),
            age: age,
          );

      final medianBmi = baseCalc.lmsData.lms.m;
      final calc = GrowthStandard.cdc.from2YearsAndAbove.bodyMassIndexForAge(
        sex: Sex.female,
        bodyMassIndexMeasurement: CDCBodyMassIndexMeasurement(medianBmi),
        age: age,
      );

      expect(calc.zScore(), closeTo(0.00, 0.001));
      expect(calc.percentile(), closeTo(50.00, 0.01));
    });
  });

  group('Golden Test Vectors — Fenton 2013 Preterm Growth Standards', () {
    test('Fenton Male Weight-for-Age at 30 weeks PMA', () {
      final calc = GrowthStandard.fenton.weightForAge(
        sex: Sex.male,
        age: PostmenstrualAge.completedWeeks(30),
        weight: Mass$Kilogram(1.48),
      );

      // Fenton 2013 male median weight at 30 weeks PMA is exactly 1.48 kg
      expect(calc.zScore(), closeTo(0.00, 0.001));
      expect(calc.percentile(), closeTo(50.00, 0.01));
    });

    test('Fenton Female Weight-for-Age at 40 weeks PMA', () {
      final calc = GrowthStandard.fenton.weightForAge(
        sex: Sex.female,
        age: PostmenstrualAge.completedWeeks(40),
        weight: Mass$Kilogram(3.51),
      );

      // Fenton 2013 female median weight at 40 weeks PMA is exactly 3.51 kg
      expect(calc.zScore(), closeTo(0.00, 0.001));
      expect(calc.percentile(), closeTo(50.00, 0.01));
    });

    test('Fenton Male Length-for-Age at 40 weeks PMA', () {
      final calc = GrowthStandard.fenton.lengthForAge(
        sex: Sex.male,
        age: PostmenstrualAge.completedWeeks(40),
        lengthHeight: Length$Centimeter(51.6),
        measure: LengthHeightMeasurementPosition.recumbent,
      );

      // Fenton 2013 male median length at 40 weeks PMA is 51.6 cm
      expect(calc.zScore(), closeTo(0.00, 0.001));
      expect(calc.percentile(), closeTo(50.00, 0.01));
    });

    test('Fenton Female Head Circumference-for-Age at 40 weeks PMA', () {
      final calc = GrowthStandard.fenton.headCircumferenceForAge(
        sex: Sex.female,
        age: PostmenstrualAge.completedWeeks(40),
        measurementResult: Length$Centimeter(34.8),
      );

      // Fenton 2013 female median head circumference at 40 weeks PMA is 34.8 cm
      expect(calc.zScore(), closeTo(0.00, 0.001));
      expect(calc.percentile(), closeTo(50.00, 0.01));
    });
  });

  group('Golden Test Vectors — INTERGROWTH-21st Newborn Size', () {
    test('INTERGROWTH Male Birth Weight at 38 weeks GA (266 days)', () {
      final calc = GrowthStandard.intergrowth.atBirth.newbornSizeWeight(
        sex: Sex.male,
        gestationalAge: const GestationalAge(weeks: 38),
        weight: Mass$Kilogram(3.1415),
      );

      expect(calc.zScore().isFinite, isTrue);
      expect(calc.percentile().isFinite, isTrue);
    });
  });
}
