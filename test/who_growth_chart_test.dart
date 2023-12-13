import 'package:test/test.dart';

import 'package:who_growth_standards/who_growth_standards.dart';

void main() {
  group('A group of tests', () {
    // test('Age', () {
    //   expect(Age.fromDays(30).totalDays, 30);
    //   expect(Age.fromDays(1000).totalDays, 1000);
    // });
    test('Arm Circ', () {
      final armCirData =
          ArmCircumferenceData(); // Initialize for the first and only time to avoid repeated parsing the same data
      expect(
        ArmCircumferenceForAge.male(
          age: Age.byMonthsAgo(24),
          measurementResult: 20.3,
          armCircumferenceData: armCirData,
        ).zScore,
        anyOf(3.79, 3.80),
      );
      expect(
        ArmCircumferenceForAge.male(
          age: Age.byMonthsAgo(44),
          measurementResult: 11.5,
          armCircumferenceData: armCirData,
        ).zScore,
        -4.11,
      );
      expect(
        ArmCircumferenceForAge.male(
          age: Age.byMonthsAgo(28),
          measurementResult: 17.4,
          armCircumferenceData: armCirData,
        ).zScore,
        1.57,
      );
    });
    test('BMI', () {
      final bodyMassIndexData =
          BodyMassIndexData(); // Initialize for the first and only time to avoid repeated parsing the same data
      expect(
        BodyMassIndexForAge.male(
          age: Age.byMonthsAgo(44),
          measurementResult: 20.5,
          bodyMassIndexData: bodyMassIndexData,
        ).zScore,
        3.40,
      );
      expect(
        BodyMassIndexForAge.male(
          age: Age.byMonthsAgo(28),
          measurementResult: 12,
          bodyMassIndexData: bodyMassIndexData,
        ).zScore,
        anyOf(-3.76, -3.75),
      );
      expect(
        BodyMassIndexForAge.male(
          age: Age.byMonthsAgo(52),
          measurementResult: 18.8,
          bodyMassIndexData: bodyMassIndexData,
        ).zScore,
        anyOf(2.36, 2.37),
      );
    });
  });
}
