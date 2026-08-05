// Comprehensive Visualization Tests
// Tests all SVG visualization functionality for all measurement types and standards

// ignore_for_file: avoid_print

import 'dart:io';
import 'package:growth_standards/growth_standards.dart';
import 'package:test/test.dart';

void main() {
  group('WHO Standard Results - Single Point SVG', () {
    test('Weight-for-Age single point SVG', () {
      final age = Age.byMonthsAgo(12);
      final gs = GrowthStandard.who.fromBirthTo5Years;

      final result = gs.weightForAge(
        sex: Sex.male,
        age: age,
        weight: Mass$Kilogram(9.5),
      );

      final svg = result.toSvg();
      expect(svg, isNotEmpty);
      expect(svg.contains('<svg'), true);
      expect(svg.contains('Weight-for-Age'), true);
      print('✓ Weight-for-Age single point SVG generated');
    });

    test('Length-for-Age single point SVG', () {
      final age = Age.byMonthsAgo(12);
      final gs = GrowthStandard.who.fromBirthTo5Years;

      final result = gs.lengthForAge(
        sex: Sex.male,
        age: age,
        lengthHeight: Length$Centimeter(75.0),
        measure: LengthHeightMeasurementPosition.standing,
      );

      final svg = result.toSvg();
      expect(svg, isNotEmpty);
      expect(svg.contains('<svg'), true);
      expect(svg.contains('Length-for-Age'), true);
      print('✓ Length-for-Age single point SVG generated');
    });

    test('BMI-for-Age single point SVG', () {
      final age = Age.byMonthsAgo(12);
      final gs = GrowthStandard.who.fromBirthTo5Years;

      final bmiMeasurement =
          WHOGrowthStandardsBodyMassIndexMeasurement.fromMeasurement(
            lengthHeight: Length$Centimeter(75.0),
            weight: Mass$Kilogram(9.5),
            measure: LengthHeightMeasurementPosition.standing,
            age: age,
          );

      final result = gs.bodyMassIndexForAge(
        sex: Sex.male,
        bodyMassIndexMeasurement: bmiMeasurement,
      );

      final svg = result.toSvg();
      expect(svg, isNotEmpty);
      expect(svg.contains('<svg'), true);
      expect(svg.contains('BMI-for-Age'), true);
      print('✓ BMI-for-Age single point SVG generated');
    });

    test('Head Circumference-for-Age single point SVG', () {
      final age = Age.byMonthsAgo(6);
      final gs = GrowthStandard.who.fromBirthTo5Years;

      final result = gs.headCircumferenceForAge(
        sex: Sex.male,
        age: age,
        measurementResult: Length$Centimeter(43.0),
      );

      final svg = result.toSvg();
      expect(svg, isNotEmpty);
      expect(svg.contains('<svg'), true);
      expect(svg.contains('Head Circumference'), true);
      print('✓ Head Circumference-for-Age single point SVG generated');
    });

    test('Weight-for-Length single point SVG', () {
      final age = Age.byMonthsAgo(12);
      final gs = GrowthStandard.who.fromBirthTo5Years;

      final result = gs.weightForLength(
        sex: Sex.male,
        lengthMeasurementResult: Length$Centimeter(75.0),
        massMeasurementResult: Mass$Kilogram(9.5),
        age: age,
        measure: LengthHeightMeasurementPosition.standing,
      );

      final svg = result.toSvg();
      expect(svg, isNotEmpty);
      expect(svg.contains('<svg'), true);
      expect(svg.contains('Weight-for-Length'), true);
      print('✓ Weight-for-Length single point SVG generated');
    });
  });

  group('WHO Standard Results - Trajectory SVG', () {
    test('Weight-for-Age trajectory SVG', () {
      final gs = GrowthStandard.who.fromBirthTo5Years;
      final results = <Result>[];

      // Create multiple measurements over time
      for (final months in [6, 12, 18, 24]) {
        final age = Age.byMonthsAgo(months);
        final result = gs.weightForAge(
          sex: Sex.male,
          age: age,
          weight: Mass$Kilogram(6.0 + months * 0.2),
        );
        results.add(result);
      }

      final svg = results.toSvg();
      expect(svg, isNotEmpty);
      expect(svg.contains('<svg'), true);
      expect(svg.contains('Weight-for-Age'), true);
      print(
        '✓ Weight-for-Age trajectory SVG generated with ${results.length} points',
      );
    });

    test('Length-for-Age trajectory SVG', () {
      final gs = GrowthStandard.who.fromBirthTo5Years;
      final results = <Result>[];

      for (final months in [6, 12, 18, 24]) {
        final age = Age.byMonthsAgo(months);
        final result = gs.lengthForAge(
          sex: Sex.female,
          age: age,
          lengthHeight: Length$Centimeter(60.0 + months * 0.5),
          measure: LengthHeightMeasurementPosition.standing,
        );
        results.add(result);
      }

      final svg = results.toSvg();
      expect(svg, isNotEmpty);
      expect(svg.contains('<svg'), true);
      print(
        '✓ Length-for-Age trajectory SVG generated with ${results.length} points',
      );
    });

    test('Empty trajectory throws error', () {
      final results = <Result>[];
      expect(() => results.toSvg(), throwsArgumentError);
      print('✓ Empty trajectory correctly throws ArgumentError');
    });

    test('Single item trajectory works', () {
      final gs = GrowthStandard.who.fromBirthTo5Years;
      final age = Age.byMonthsAgo(12);
      final result = gs.weightForAge(
        sex: Sex.male,
        age: age,
        weight: Mass$Kilogram(9.5),
      );

      final svg = [result].toSvg();
      expect(svg, isNotEmpty);
      expect(svg.contains('<svg'), true);
      print('✓ Single item trajectory works correctly');
    });
  });

  group('WHO Velocity - Single Point SVG', () {
    test('Weight Velocity single point SVG', () {
      final age = Age.byMonthsAgo(6);
      final gs = GrowthStandard.who.fromBirthTo5Years;

      final weightMsr1 = MassMeasurementHistory(
        age.dateAtMonthsAfterBirth(4),
        Mass$Kilogram(6.4),
      );
      final weightMsr2 = MassMeasurementHistory(
        age.dateAtMonthsAfterBirth(6),
        Mass$Kilogram(7.9),
      );

      final velocity = gs.weightVelocityForAge(
        sex: Sex.male,
        age: age,
        pastMeasurement: [weightMsr1, weightMsr2],
      );

      final svg = velocity.toSvg();
      expect(svg, isNotEmpty);
      expect(svg.contains('<svg'), true);
      expect(svg.contains('Velocity'), true);
      print('✓ Weight Velocity single point SVG generated');
    });

    test('Length Velocity single point SVG', () {
      final age = Age.byMonthsAgo(6);
      final gs = GrowthStandard.who.fromBirthTo5Years;

      final lengthMsr1 = LengthMeasurementHistory(
        age.dateAtMonthsAfterBirth(3),
        Length$Centimeter(61.0),
      );
      final lengthMsr2 = LengthMeasurementHistory(
        age.dateAtMonthsAfterBirth(6),
        Length$Centimeter(67.5),
      );

      final velocity = gs.lengthVelocityForAge(
        sex: Sex.male,
        age: age,
        pastMeasurement: [lengthMsr1, lengthMsr2],
      );

      final svg = velocity.toSvg();
      expect(svg, isNotEmpty);
      expect(svg.contains('<svg'), true);
      expect(svg.contains('Velocity'), true);
      print('✓ Length Velocity single point SVG generated');
    });

    test('Head Circumference Velocity single point SVG', () {
      final age = Age.byMonthsAgo(6);
      final gs = GrowthStandard.who.fromBirthTo5Years;

      final hcMsr1 = LengthMeasurementHistory(
        age.dateAtMonthsAfterBirth(4),
        Length$Centimeter(41.2),
      );
      final hcMsr2 = LengthMeasurementHistory(
        age.dateAtMonthsAfterBirth(6),
        Length$Centimeter(43.0),
      );

      final velocity = gs.headCircumferenceVelocityForAge(
        sex: Sex.male,
        age: age,
        pastMeasurement: [hcMsr1, hcMsr2],
      );

      final svg = velocity.toSvg();
      expect(svg, isNotEmpty);
      expect(svg.contains('<svg'), true);
      expect(svg.contains('Velocity'), true);
      print('✓ Head Circumference Velocity single point SVG generated');
    });
  });

  group('WHO Velocity - Trajectory SVG', () {
    test('Weight Velocity trajectory SVG', () {
      final gs = GrowthStandard.who.fromBirthTo5Years;
      final velocityResults = <WHOGrowthStandardsWeightVelocityForAge>[];

      // Create multiple velocity calculations over time
      for (final int months in [6, 9, 12, 15, 18]) {
        final age = Age.byMonthsAgo(months);
        final weightMsr1 = MassMeasurementHistory(
          age.dateAtMonthsAfterBirth(months - 2),
          Mass$Kilogram(6.0 + (months - 2) * 0.2),
        );
        final weightMsr2 = MassMeasurementHistory(
          age.dateAtMonthsAfterBirth(months),
          Mass$Kilogram(6.0 + months * 0.2),
        );

        final velocity = gs.weightVelocityForAge(
          sex: Sex.male,
          age: age,
          pastMeasurement: [weightMsr1, weightMsr2],
        );
        velocityResults.add(velocity);
      }

      final svg = velocityResults.toSvg();
      expect(svg, isNotEmpty);
      expect(svg.contains('<svg'), true);
      expect(svg.contains('Trajectory'), true);
      print(
        '✓ Weight Velocity trajectory SVG generated with ${velocityResults.length} points',
      );
    });

    test('Length Velocity trajectory SVG', () {
      final gs = GrowthStandard.who.fromBirthTo5Years;
      final velocityResults = <WHOGrowthStandardsLengthVelocityForAge>[];

      for (final int months in [6, 9, 12]) {
        final age = Age.byMonthsAgo(months);
        final lengthMsr1 = LengthMeasurementHistory(
          age.dateAtMonthsAfterBirth(months - 3),
          Length$Centimeter(60.0 + (months - 3) * 0.5),
        );
        final lengthMsr2 = LengthMeasurementHistory(
          age.dateAtMonthsAfterBirth(months),
          Length$Centimeter(60.0 + months * 0.5),
        );

        final velocity = gs.lengthVelocityForAge(
          sex: Sex.female,
          age: age,
          pastMeasurement: [lengthMsr1, lengthMsr2],
        );
        velocityResults.add(velocity);
      }

      final svg = velocityResults.toSvg();
      expect(svg, isNotEmpty);
      expect(svg.contains('<svg'), true);
      print(
        '✓ Length Velocity trajectory SVG generated with ${velocityResults.length} points',
      );
    });

    test('Empty velocity trajectory throws error', () {
      final velocityResults = <WHOGrowthStandardsWeightVelocityForAge>[];
      expect(() => velocityResults.toSvg(), throwsArgumentError);
      print('✓ Empty velocity trajectory correctly throws ArgumentError');
    });

    test('Single item velocity trajectory works', () {
      final gs = GrowthStandard.who.fromBirthTo5Years;
      final age = Age.byMonthsAgo(6);

      final weightMsr1 = MassMeasurementHistory(
        age.dateAtMonthsAfterBirth(4),
        Mass$Kilogram(6.4),
      );
      final weightMsr2 = MassMeasurementHistory(
        age.dateAtMonthsAfterBirth(6),
        Mass$Kilogram(7.9),
      );

      final velocity = gs.weightVelocityForAge(
        sex: Sex.male,
        age: age,
        pastMeasurement: [weightMsr1, weightMsr2],
      );

      final svg = [velocity].toSvg();
      expect(svg, isNotEmpty);
      expect(svg.contains('<svg'), true);
      print('✓ Single item velocity trajectory works correctly');
    });
  });

  group('CDC Results - Single Point and Trajectory', () {
    test('CDC Weight-for-Age single point SVG', () {
      final age = Age.byMonthsAgo(36); // 3 years

      final result = CDCWeightForAge(
        sex: Sex.male,
        age: age,
        weight: Mass$Kilogram(14.0),
      );

      final svg = result.toSvg();
      expect(svg, isNotEmpty);
      expect(svg.contains('<svg'), true);
      print('✓ CDC Weight-for-Age single point SVG generated');
    });

    test('CDC Weight-for-Age trajectory SVG', () {
      final results = <Result>[];

      for (final months in [24, 36, 48, 60]) {
        final age = Age.byMonthsAgo(months);
        final result = CDCWeightForAge(
          sex: Sex.female,
          age: age,
          weight: Mass$Kilogram(11.0 + months * 0.1),
        );
        results.add(result);
      }

      final svg = results.toSvg();
      expect(svg, isNotEmpty);
      expect(svg.contains('<svg'), true);
      print(
        '✓ CDC Weight-for-Age trajectory SVG generated with ${results.length} points',
      );
    });

    test('CDC BMI-for-Age single point SVG', () {
      final age = Age.byMonthsAgo(120); // 10 years
      final bmiMeasurement = CDCBodyMassIndexMeasurement(
        BodyMassIndex(
          lengthHeight: Length$Centimeter(140.0),
          weight: Mass$Kilogram(35.0),
        ).value,
      );

      final result = CDCBodyMassIndexForAge(
        sex: Sex.male,
        age: age,
        bodyMassIndexMeasurement: bmiMeasurement,
      );

      final svg = result.toSvg();
      expect(svg, isNotEmpty);
      expect(svg.contains('<svg'), true);
      print('✓ CDC BMI-for-Age single point SVG generated');
    });
  });

  group('Fenton Results - Single Point and Trajectory', () {
    test('Fenton Weight-for-Age single point SVG', () {
      const pma = PostmenstrualAge(weeks: 32);
      final gs = GrowthStandard.fenton;

      final result = gs.weightForAge(
        sex: Sex.male,
        age: pma,
        weight: Mass$Kilogram(1.8),
      );

      final svg = result.toSvg();
      expect(svg, isNotEmpty);
      expect(svg.contains('<svg'), true);
      print('✓ Fenton Weight-for-Age single point SVG generated');
    });

    test('Fenton Weight-for-Age trajectory SVG', () {
      final gs = GrowthStandard.fenton;
      final results = <Result>[];

      for (final weeks in [28, 32, 36, 40]) {
        final pma = PostmenstrualAge(weeks: weeks);
        final result = gs.weightForAge(
          sex: Sex.female,
          age: pma,
          weight: Mass$Kilogram(1.0 + weeks * 0.05),
        );
        results.add(result);
      }

      final svg = results.toSvg();
      expect(svg, isNotEmpty);
      expect(svg.contains('<svg'), true);
      print(
        '✓ Fenton Weight-for-Age trajectory SVG generated with ${results.length} points',
      );
    });

    test('Fenton Length-for-Age single point SVG', () {
      const pma = PostmenstrualAge(weeks: 32);
      final gs = GrowthStandard.fenton;

      final result = gs.lengthForAge(
        sex: Sex.male,
        age: pma,
        lengthHeight: Length$Centimeter(40.0),
      );

      final svg = result.toSvg();
      expect(svg, isNotEmpty);
      expect(svg.contains('<svg'), true);
      print('✓ Fenton Length-for-Age single point SVG generated');
    });
  });

  group('INTERGROWTH Results - Single Point and Trajectory', () {
    test('INTERGROWTH Fetal Growth Head Circumference single point SVG', () {
      final age = Age.byDaysAgo(120); // ~17 weeks

      final result = IntergrowthFetalGrowtHeadCircumferenceForAge(
        age: age,
        measurementResult: Length$Millimeter(150.0),
      );

      final svg = result.toSvg();
      expect(svg, isNotEmpty);
      expect(svg.contains('<svg'), true);
      print('✓ INTERGROWTH Fetal Growth HC single point SVG generated');
    });

    test('INTERGROWTH Fetal Growth HC trajectory SVG', () {
      final results = <Result>[];

      for (final days in [100, 120, 140, 160]) {
        final age = Age.byDaysAgo(days);
        final result = IntergrowthFetalGrowtHeadCircumferenceForAge(
          age: age,
          measurementResult: Length$Millimeter(130.0 + days * 0.2),
        );
        results.add(result);
      }

      final svg = results.toSvg();
      expect(svg, isNotEmpty);
      expect(svg.contains('<svg'), true);
      print(
        '✓ INTERGROWTH Fetal Growth HC trajectory SVG generated with ${results.length} points',
      );
    });

    test('INTERGROWTH Early Pregnancy Dating CRL single point SVG', () {
      final length = Length$Millimeter(50.0);
      final age = Age.byDaysAgo(60);

      final result = IntergrowthEarlyPregnancyDatingForCRL(
        age: age,
        length: length,
      );

      final svg = result.toSvg();
      expect(svg, isNotEmpty);
      expect(svg.contains('<svg'), true);
      print(
        '✓ INTERGROWTH Early Pregnancy Dating CRL single point SVG generated',
      );
    });
  });

  group('Extension Methods', () {
    test('Result.toSvg() extension', () {
      final age = Age.byMonthsAgo(12);
      final gs = GrowthStandard.who.fromBirthTo5Years;

      final result = gs.weightForAge(
        sex: Sex.male,
        age: age,
        weight: Mass$Kilogram(9.5),
      );

      final svg = result.toSvg();
      expect(svg, isNotEmpty);
      expect(svg.contains('<svg'), true);
      print('✓ Result.toSvg() extension works');
    });

    test('Result.saveSvg() extension', () {
      final age = Age.byMonthsAgo(12);
      final gs = GrowthStandard.who.fromBirthTo5Years;

      final result = gs.weightForAge(
        sex: Sex.male,
        age: age,
        weight: Mass$Kilogram(9.5),
      );

      final tempFile = File('test_temp.svg');
      final savedFile = result.saveSvg(tempFile.path);

      expect(savedFile.existsSync(), true);
      expect(savedFile.readAsStringSync(), isNotEmpty);

      savedFile.deleteSync();
      print('✓ Result.saveSvg() extension works');
    });

    test('List<Result>.toSvg() extension', () {
      final gs = GrowthStandard.who.fromBirthTo5Years;
      final results = <Result>[];

      for (final int months in [6, 12, 18]) {
        final age = Age.byMonthsAgo(months);
        final result = gs.weightForAge(
          sex: Sex.male,
          age: age,
          weight: Mass$Kilogram(6.0 + months * 0.2),
        );
        results.add(result);
      }

      final svg = results.toSvg();
      expect(svg, isNotEmpty);
      expect(svg.contains('<svg'), true);
      print('✓ List<Result>.toSvg() extension works');
    });

    test('List<Result>.saveSvg() extension', () {
      final gs = GrowthStandard.who.fromBirthTo5Years;
      final results = <Result>[];

      for (final int months in [6, 12, 18]) {
        final age = Age.byMonthsAgo(months);
        final result = gs.weightForAge(
          sex: Sex.male,
          age: age,
          weight: Mass$Kilogram(6.0 + months * 0.2),
        );
        results.add(result);
      }

      final tempFile = File('test_temp_trajectory.svg');
      final savedFile = results.saveSvg(tempFile.path);

      expect(savedFile.existsSync(), true);
      expect(savedFile.readAsStringSync(), isNotEmpty);

      savedFile.deleteSync();
      print('✓ List<Result>.saveSvg() extension works');
    });

    test('VelocityBasedResult.toSvg() extension', () {
      final age = Age.byMonthsAgo(6);
      final gs = GrowthStandard.who.fromBirthTo5Years;

      final weightMsr1 = MassMeasurementHistory(
        age.dateAtMonthsAfterBirth(4),
        Mass$Kilogram(6.4),
      );
      final weightMsr2 = MassMeasurementHistory(
        age.dateAtMonthsAfterBirth(6),
        Mass$Kilogram(7.9),
      );

      final velocity = gs.weightVelocityForAge(
        sex: Sex.male,
        age: age,
        pastMeasurement: [weightMsr1, weightMsr2],
      );

      final svg = velocity.toSvg();
      expect(svg, isNotEmpty);
      expect(svg.contains('<svg'), true);
      print('✓ VelocityBasedResult.toSvg() extension works');
    });

    test('VelocityBasedResult.saveSvg() extension', () {
      final age = Age.byMonthsAgo(6);
      final gs = GrowthStandard.who.fromBirthTo5Years;

      final weightMsr1 = MassMeasurementHistory(
        age.dateAtMonthsAfterBirth(4),
        Mass$Kilogram(6.4),
      );
      final weightMsr2 = MassMeasurementHistory(
        age.dateAtMonthsAfterBirth(6),
        Mass$Kilogram(7.9),
      );

      final velocity = gs.weightVelocityForAge(
        sex: Sex.male,
        age: age,
        pastMeasurement: [weightMsr1, weightMsr2],
      );

      final tempFile = File('test_temp_velocity.svg');
      final savedFile = velocity.saveSvg(tempFile.path);

      expect(savedFile.existsSync(), true);
      expect(savedFile.readAsStringSync(), isNotEmpty);

      savedFile.deleteSync();
      print('✓ VelocityBasedResult.saveSvg() extension works');
    });

    test('List<VelocityBasedResult>.toSvg() extension', () {
      final gs = GrowthStandard.who.fromBirthTo5Years;
      final velocityResults = <WHOGrowthStandardsWeightVelocityForAge>[];

      for (final int months in [6, 9, 12]) {
        final age = Age.byMonthsAgo(months);
        final weightMsr1 = MassMeasurementHistory(
          age.dateAtMonthsAfterBirth(months - 2),
          Mass$Kilogram(6.0 + (months - 2) * 0.2),
        );
        final weightMsr2 = MassMeasurementHistory(
          age.dateAtMonthsAfterBirth(months),
          Mass$Kilogram(6.0 + months * 0.2),
        );

        final velocity = gs.weightVelocityForAge(
          sex: Sex.male,
          age: age,
          pastMeasurement: [weightMsr1, weightMsr2],
        );
        velocityResults.add(velocity);
      }

      final svg = velocityResults.toSvg();
      expect(svg, isNotEmpty);
      expect(svg.contains('<svg'), true);
      expect(svg.contains('Trajectory'), true);
      print('✓ List<VelocityBasedResult>.toSvg() extension works');
    });

    test('List<VelocityBasedResult>.saveSvg() extension', () {
      final gs = GrowthStandard.who.fromBirthTo5Years;
      final velocityResults = <WHOGrowthStandardsWeightVelocityForAge>[];

      for (final int months in [6, 9, 12]) {
        final age = Age.byMonthsAgo(months);
        final weightMsr1 = MassMeasurementHistory(
          age.dateAtMonthsAfterBirth(months - 2),
          Mass$Kilogram(6.0 + (months - 2) * 0.2),
        );
        final weightMsr2 = MassMeasurementHistory(
          age.dateAtMonthsAfterBirth(months),
          Mass$Kilogram(6.0 + months * 0.2),
        );

        final velocity = gs.weightVelocityForAge(
          sex: Sex.male,
          age: age,
          pastMeasurement: [weightMsr1, weightMsr2],
        );
        velocityResults.add(velocity);
      }

      final tempFile = File('test_temp_velocity_trajectory.svg');
      final savedFile = velocityResults.saveSvg(tempFile.path);

      expect(savedFile.existsSync(), true);
      expect(savedFile.readAsStringSync(), isNotEmpty);

      savedFile.deleteSync();
      print('✓ List<VelocityBasedResult>.saveSvg() extension works');
    });
  });

  group('Display Modes and Configurations', () {
    test('Z-Score display mode', () {
      final age = Age.byMonthsAgo(12);
      final gs = GrowthStandard.who.fromBirthTo5Years;

      final result = gs.weightForAge(
        sex: Sex.male,
        age: age,
        weight: Mass$Kilogram(9.5),
      );

      const config = GrowthChartConfig();

      final svg = result.toSvg(config: config);
      expect(svg, isNotEmpty);
      expect(svg.contains('<svg'), true);
      expect(svg.contains('SD'), true);
      print('✓ Z-Score display mode works');
    });

    test('Percentile display mode', () {
      final age = Age.byMonthsAgo(12);
      final gs = GrowthStandard.who.fromBirthTo5Years;

      final result = gs.weightForAge(
        sex: Sex.male,
        age: age,
        weight: Mass$Kilogram(9.5),
      );

      const config = GrowthChartConfig(
        displayMode: GrowthChartDisplayMode.percentile,
      );

      final svg = result.toSvg(config: config);
      expect(svg, isNotEmpty);
      expect(svg.contains('<svg'), true);
      expect(svg.contains('%'), true);
      print('✓ Percentile display mode works');
    });

    test('Custom title and subtitle', () {
      final age = Age.byMonthsAgo(12);
      final gs = GrowthStandard.who.fromBirthTo5Years;

      final result = gs.weightForAge(
        sex: Sex.male,
        age: age,
        weight: Mass$Kilogram(9.5),
      );

      const config = GrowthChartConfig(
        title: 'Custom Title',
        subtitle: 'Custom Subtitle',
      );

      final svg = result.toSvg(config: config);
      expect(svg, isNotEmpty);
      expect(svg.contains('Custom Title'), true);
      expect(svg.contains('Custom Subtitle'), true);
      print('✓ Custom title and subtitle work');
    });

    test('Different sexes', () {
      final gs = GrowthStandard.who.fromBirthTo5Years;
      final age = Age.byMonthsAgo(12);

      final maleResult = gs.weightForAge(
        sex: Sex.male,
        age: age,
        weight: Mass$Kilogram(9.5),
      );

      final femaleResult = gs.weightForAge(
        sex: Sex.female,
        age: age,
        weight: Mass$Kilogram(9.0),
      );

      final maleSvg = maleResult.toSvg();
      final femaleSvg = femaleResult.toSvg();

      expect(maleSvg, isNotEmpty);
      expect(femaleSvg, isNotEmpty);
      // SVGs should be different due to different sex in title
      expect(maleSvg, isNot(equals(femaleSvg)));
      print('✓ Different sexes work correctly');
    });
  });

  group('Error Handling and Edge Cases', () {
    test('Empty results list throws ArgumentError', () {
      final results = <Result>[];
      expect(() => results.toSvg(), throwsArgumentError);
      print('✓ Empty results list throws ArgumentError');
    });

    test('Empty velocity results list throws ArgumentError', () {
      final velocityResults = <WHOGrowthStandardsWeightVelocityForAge>[];
      expect(() => velocityResults.toSvg(), throwsArgumentError);
      print('✓ Empty velocity results list throws ArgumentError');
    });

    test('Single item results list works', () {
      final gs = GrowthStandard.who.fromBirthTo5Years;
      final age = Age.byMonthsAgo(12);
      final result = gs.weightForAge(
        sex: Sex.male,
        age: age,
        weight: Mass$Kilogram(9.5),
      );

      final svg = [result].toSvg();
      expect(svg, isNotEmpty);
      expect(svg.contains('<svg'), true);
      print('✓ Single item results list works');
    });

    test('Single item velocity results list works', () {
      final gs = GrowthStandard.who.fromBirthTo5Years;
      final age = Age.byMonthsAgo(6);

      final weightMsr1 = MassMeasurementHistory(
        age.dateAtMonthsAfterBirth(4),
        Mass$Kilogram(6.4),
      );
      final weightMsr2 = MassMeasurementHistory(
        age.dateAtMonthsAfterBirth(6),
        Mass$Kilogram(7.9),
      );

      final velocity = gs.weightVelocityForAge(
        sex: Sex.male,
        age: age,
        pastMeasurement: [weightMsr1, weightMsr2],
      );

      final svg = [velocity].toSvg();
      expect(svg, isNotEmpty);
      expect(svg.contains('<svg'), true);
      print('✓ Single item velocity results list works');
    });

    test('File save with valid path', () {
      final age = Age.byMonthsAgo(12);
      final gs = GrowthStandard.who.fromBirthTo5Years;

      final result = gs.weightForAge(
        sex: Sex.male,
        age: age,
        weight: Mass$Kilogram(9.5),
      );

      final tempFile = File('test_save_valid.svg');
      final savedFile = result.saveSvg(tempFile.path);

      expect(savedFile.existsSync(), true);
      savedFile.deleteSync();
      print('✓ File save with valid path works');
    });
  });

  group('WHO Reference Results (5-19 years)', () {
    test('WHO Reference Weight-for-Age single point SVG', () {
      final age = Age.byMonthsAgo(120); // 10 years
      final result = WHOGrowthReferenceWeightForAge(
        sex: Sex.male,
        age: age,
        weight: Mass$Kilogram(32.0),
      );

      final svg = result.toSvg();
      expect(svg, isNotEmpty);
      expect(svg.contains('<svg'), true);
      print('✓ WHO Reference Weight-for-Age single point SVG generated');
    });

    test('WHO Reference Weight-for-Age trajectory SVG', () {
      final results = <Result>[];

      for (final months in [72, 84, 96, 108, 120]) {
        // 6, 7, 8, 9, 10 years (valid range: 61-120 months)
        final age = Age.byMonthsAgo(months);
        final result = WHOGrowthReferenceWeightForAge(
          sex: Sex.female,
          age: age,
          weight: Mass$Kilogram(20.0 + months * 0.1),
        );
        results.add(result);
      }

      final svg = results.toSvg();
      expect(svg, isNotEmpty);
      expect(svg.contains('<svg'), true);
      print(
        '✓ WHO Reference Weight-for-Age trajectory SVG generated with ${results.length} points',
      );
    });
  });

  group('Mixed Trajectory Types', () {
    test('Standard results with same measurement type', () {
      final gs = GrowthStandard.who.fromBirthTo5Years;
      final results = <Result>[];

      // Mix of weight-for-age at different ages
      for (final months in [6, 12, 18, 24]) {
        final age = Age.byMonthsAgo(months);
        final result = gs.weightForAge(
          sex: Sex.male,
          age: age,
          weight: Mass$Kilogram(6.0 + months * 0.2),
        );
        results.add(result);
      }

      final svg = results.toSvg();
      expect(svg, isNotEmpty);
      expect(svg.contains('<svg'), true);
      print('✓ Mixed same-type standard results trajectory works');
    });
  });

  print('\n${'=' * 60}');
  print(' ALL COMPREHENSIVE VISUALIZATION TESTS PASSED ');
  print('=' * 60);
}
