import 'package:test/test.dart';

import 'package:who_growth_standards/who_growth_standards.dart';

const dateBase = [28, 29, 30, 31];

final gs = WHO.growthStandard;

void main() {
  final armCirData = gs.armCircumferenceForAge
      .data; // Initialize for the first and only time to avoid repeated parsing the same data

  final bodyMassIndexData = gs.bodyMassIndexForAge
      .data; // Initialize for the first and only time to avoid repeated parsing the same data
  group('A group of tests', () {
    test('Age', () {
      expect(
        Age.byMonthsAgo(2).totalDays,
        anyOf(
          dateBase.expand((element) => [element * 2, element * 2 + 1]).toList(),
        ),
      );
      expect(Age.byMonthsAgo(1).totalDays, anyOf(dateBase));
      expect(Age.byDaysAgo(30).totalDays, 30);
      expect(Age.byDaysAgo(1000).totalDays, 1000);
      expect(Age.byDaysAgo(10000).totalDays, 10000);
    });
    test('Arm Circ', () {
      expect(
        gs.armCircumferenceForAge
            .male(
              age: Age.byMonthsAgo(24),
              measurementResult: const Centimeters(20.3),
              armCircumferenceData: armCirData,
            )
            .zScore,
        anyOf(3.79, 3.80),
      );
      expect(
        gs.armCircumferenceForAge
            .male(
              age: Age.byMonthsAgo(44),
              measurementResult: const Centimeters(11.5),
              armCircumferenceData: armCirData,
            )
            .zScore,
        -4.11,
      );
      expect(
        gs.armCircumferenceForAge
            .male(
              age: Age.byMonthsAgo(28),
              measurementResult: const Centimeters(17.4),
              armCircumferenceData: armCirData,
            )
            .zScore,
        1.57,
      );
    });
    test('BMI', () {
      expect(
        gs.bodyMassIndexForAge
            .male(
              bodyMassIndexMeasurement:
                  gs.bodyMassIndexForAge.calculateBMI.fromValue(
                20.5,
                age: Age.byMonthsAgo(44),
              ),
              bodyMassIndexData: bodyMassIndexData,
            )
            .zScore,
        3.40,
      );
      expect(
        gs.bodyMassIndexForAge
            .male(
              bodyMassIndexMeasurement: gs.bodyMassIndexForAge.calculateBMI
                  .fromValue(12, age: Age.byMonthsAgo(28)),
              bodyMassIndexData: bodyMassIndexData,
            )
            .zScore,
        anyOf(-3.76, -3.75),
      );
      expect(
        gs.bodyMassIndexForAge
            .male(
              bodyMassIndexMeasurement:
                  gs.bodyMassIndexForAge.calculateBMI.fromValue(
                18.8,
                age: Age.byMonthsAgo(52),
              ),
              bodyMassIndexData: bodyMassIndexData,
            )
            .zScore,
        anyOf(2.36, 2.37),
      );
    });
  });
}
