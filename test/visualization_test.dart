import 'dart:io';
import 'package:growth_standards/growth_standards.dart';
import 'package:test/test.dart';

void main() {
  group('Growth Chart Visualization Tests', () {
    final birthDay = Date(year: 2022, month: Months.june, date: 30);
    final age = Age(birthDay);
    const centimeters = Length$Centimeter(82.8);
    const kilograms = Mass$Kilogram(11.75);
    final gs = GrowthStandard.who.fromBirthTo5Years;

    test('WHO Weight-for-Age SVG Export', () {
      final calcWeightForAge = gs.weightForAge(
        age: age,
        weight: kilograms,
        sex: Sex.male,
      );

      final svgStr = calcWeightForAge.toSvg();
      expect(svgStr, contains('<svg'));
      expect(svgStr, contains('</svg>'));
      expect(svgStr, contains('WHO Weight-for-Age'));
      expect(svgStr, contains('BOY'));
      expect(svgStr, contains('0 (Median)'));
      expect(svgStr, contains('+3 SD'));
      expect(svgStr, contains('-3 SD'));
      expect(svgStr, contains('Result:'));
    });

    test('WHO Length-for-Age PNG Export', () {
      final calcLengthForAge = gs.lengthForAge(
        age: age,
        lengthHeight: centimeters,
        sex: Sex.female,
        measure: LengthHeightMeasurementPosition.standing,
      );

      final pngBytes = calcLengthForAge.toPng();
      expect(pngBytes, isNotEmpty);
      expect(pngBytes[0], equals(137));
      expect(pngBytes[1], equals(80));
      expect(pngBytes[2], equals(78));
      expect(pngBytes[3], equals(71));
    });

    test('Percentile Display Mode SVG & PNG Export', () {
      final calcBMI = gs.bodyMassIndexForAge(
        bodyMassIndexMeasurement:
            WHOGrowthStandardsBodyMassIndexMeasurement.fromMeasurement(
              measure: LengthHeightMeasurementPosition.recumbent,
              lengthHeight: centimeters,
              weight: kilograms,
              age: age,
            ),
        sex: Sex.male,
      );

      const config = GrowthChartConfig(
        displayMode: GrowthChartDisplayMode.percentile,
        title: 'Custom BMI Chart',
      );

      final svgStr = calcBMI.toSvg(config: config);
      expect(svgStr, contains('Custom BMI Chart'));
      expect(svgStr, contains('50th'));
      expect(svgStr, contains('97th'));

      final pngBytes = calcBMI.toPng(config: config);
      expect(pngBytes, isNotEmpty);
    });

    test('Multi-Point Trajectory using GrowthTrajectory helper', () {
      final tracker = GrowthTrajectory.whoWeightForAge(
        sex: Sex.female,
        dateOfBirth: Date(year: 2023, month: Months.january, date: 1),
      );

      tracker.add(
        Date(year: 2023, month: Months.january, date: 1),
        const Mass$Kilogram(3.2),
      );
      tracker.add(
        Date(year: 2023, month: Months.july, date: 1),
        const Mass$Kilogram(7.5),
      );
      tracker.add(
        Date(year: 2024, month: Months.january, date: 1),
        const Mass$Kilogram(9.5),
      );

      expect(tracker.results.length, equals(3));
      expect(tracker.toSvg(), contains('WHO Weight-for-Age'));
      expect(tracker.toPng(), isNotEmpty);
    });

    test('Multi-Point Trajectory (Longitudinal Tracking)', () {
      final dob = Date(year: 2022, month: Months.june, date: 30);
      final pt1 = gs.weightForAge(
        age: Age(dob, observedDate: dob),
        weight: const Mass$Kilogram(3.4),
        sex: Sex.male,
      );
      final pt2 = gs.weightForAge(
        age: Age(
          dob,
          observedDate: Date(year: 2022, month: Months.december, date: 30),
        ),
        weight: const Mass$Kilogram(7.9),
        sex: Sex.male,
      );
      final pt3 = gs.weightForAge(
        age: Age(
          dob,
          observedDate: Date(year: 2023, month: Months.june, date: 30),
        ),
        weight: const Mass$Kilogram(9.6),
        sex: Sex.male,
      );

      final trajectory = [pt1, pt2, pt3];
      final svgStr = trajectory.toSvg();

      expect(svgStr, contains('Observation Trajectory'));
      expect(svgStr, contains('<circle'));

      final pngBytes = trajectory.toPng();
      expect(pngBytes.length, greaterThan(1000));
    });

    test('File System SVG & PNG File Export', () {
      final infantAge = Age(Date(year: 2026, month: Months.january, date: 1));
      final calcWFL = gs.weightForLength(
        lengthMeasurementResult: const Length$Centimeter(65.0),
        massMeasurementResult: const Mass$Kilogram(7.2),
        sex: Sex.female,
        age: infantAge,
        measure: LengthHeightMeasurementPosition.recumbent,
      );

      final tmpDir = Directory.systemTemp.createTempSync('growth_chart_test_');
      final svgPath = '${tmpDir.path}/chart.svg';
      final pngPath = '${tmpDir.path}/chart.png';

      final svgFile = calcWFL.saveSvg(svgPath);
      expect(svgFile.existsSync(), isTrue);
      expect(svgFile.readAsStringSync(), contains('<svg'));

      final pngFile = calcWFL.savePng(pngPath);
      expect(pngFile.existsSync(), isTrue);
      expect(pngFile.readAsBytesSync().length, greaterThan(500));

      tmpDir.deleteSync(recursive: true);
    });

    test('CDC Standard Visualization', () {
      final cdcGs = GrowthStandard.cdc.from2YearsAndAbove;
      final cdcWfa = cdcGs.weightForAge(
        sex: Sex.male,
        age: Age(Date(year: 2018, month: Months.june, date: 1)),
        weight: const Mass$Kilogram(18.5),
      );

      final svgStr = cdcWfa.toSvg();
      expect(svgStr, contains('CDC'));
      expect(svgStr, contains('Weight'));
    });

    test('Fenton Standard Visualization', () {
      final fentonGs = GrowthStandard.fenton;
      final fentonWfa = fentonGs.weightForAge(
        sex: Sex.female,
        age: const PostmenstrualAge(weeks: 34),
        weight: const Mass$Kilogram(2.1),
      );

      final svgStr = fentonWfa.toSvg();
      expect(svgStr, contains('Fenton'));
      expect(svgStr, contains('Postmenstrual Age'));
    });

    test('WHO Growth Velocity Visualization', () {
      final age = Age.byMonthsAgo(6);
      final msr1 = MassMeasurementHistory(
        age.dateAtMonthsAfterBirth(4),
        const Mass$Kilogram(6.4),
      );
      final msr2 = MassMeasurementHistory(
        age.dateAtMonthsAfterBirth(6),
        const Mass$Kilogram(7.9),
      );

      final velocityResult = gs.weightVelocityForAge(
        age: age,
        sex: Sex.male,
        pastMeasurement: [msr1, msr2],
      );

      final svgStr = velocityResult.toSvg();
      expect(svgStr, contains('Velocity'));
      expect(svgStr, contains('WHO'));

      final pngBytes = velocityResult.toPng();
      expect(pngBytes, isNotEmpty);
    });
  });
}
