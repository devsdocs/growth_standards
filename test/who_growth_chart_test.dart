import 'package:test/test.dart';

import 'package:who_growth_standards/who_growth_standards.dart';

void main() {
  group('A group of tests', () {
    test('Arm Circ', () {
      final armCirData = ArmCircumferenceData();
      expect(
        ArmCircumference(
          sex: Sex.male,
          dateOfBirth: DateOfBirth.fromMonths(24),
          measurementResult: MeasurementResult(20.3),
          armCircumferenceData: armCirData,
        ).zScore,
        3.80,
      );
      expect(
        ArmCircumference(
          sex: Sex.male,
          dateOfBirth: DateOfBirth.fromMonths(44),
          measurementResult: MeasurementResult(11.5),
          armCircumferenceData: armCirData,
        ).zScore,
        -4.11,
      );
      expect(
        ArmCircumference(
          sex: Sex.male,
          dateOfBirth: DateOfBirth.fromMonths(28),
          measurementResult: MeasurementResult(17.4),
          armCircumferenceData: armCirData,
        ).zScore,
        1.57,
      );
    });
    test('BMI', () {
      final bodyMassIndexData = BodyMassIndexData();
      expect(
        BodyMassIndex(
          sex: Sex.male,
          dateOfBirth: DateOfBirth.fromMonths(44),
          measurementResult: MeasurementResult(20.5),
          bodyMassIndexData: bodyMassIndexData,
        ).zScore,
        3.40,
      );
      expect(
        BodyMassIndex(
          sex: Sex.male,
          dateOfBirth: DateOfBirth.fromMonths(28),
          measurementResult: MeasurementResult(12),
          bodyMassIndexData: bodyMassIndexData,
        ).zScore,
        anyOf(-3.76, -3.75),
      );
      expect(
        BodyMassIndex(
          sex: Sex.male,
          dateOfBirth: DateOfBirth.fromMonths(52),
          measurementResult: MeasurementResult(18.8),
          bodyMassIndexData: bodyMassIndexData,
        ).zScore,
        anyOf(2.36, 2.37),
      );
    });
  });
}
