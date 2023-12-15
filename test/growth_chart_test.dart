import 'package:growth_standards/growth_standards.dart';
import 'package:growth_standards/src/who/standard/standard.dart';
import 'package:test/test.dart';

const dateBase = [28, 29, 30, 31];

final gs = GrowthStandard.whoGrowthStandard;

void main() {
  final armCirData = gs.armCircumferenceForAge
      .data; // Initialize for the first and only time to avoid repeated parsing the same data

  final bodyMassIndexData = gs.bodyMassIndexForAge
      .data; // Initialize for the first and only time to avoid repeated parsing the same data

  final dateTime1 = DateTime(2023, 1, 31);
  final date1 = Date.fromDateTime(dateTime1);

  final dateTime2 = DateTime(2022, 2, 29);
  //! (NOTE) date2 Should throw if using other constructor as February 2022 max at day 28, because dateTime2 add exceeded day to the next months, this will produce 2022-03-01 instead of throwing
  final date2 = Date.fromDateTime(dateTime2);

  final dateTime3 = DateTime(2024, 1, 2);
  final date3 = Date.fromDateTime(dateTime3);

  final dateTime4 = DateTime(2021, 5, 2);
  final date4 = Date.fromDateTime(dateTime4);

  final dateTime5 = DateTime(2023, 1, 31);
  final date5 = Date.fromDateTime(dateTime5);

  final dateTime6 = DateTime(2021, 8, 2);
  final date6 = Date.fromDateTime(dateTime6);

  final list = [date1, date2, date3];
  final list2 = [date4, date5, date6];

  group('A group of tests', () {
    test('Date Compare', () {
      expect(list == list2, false);
      expect(list != list2, true);

      expect(date1 == date5, true);
      expect(dateTime1 == dateTime5, true);

      expect(date1 != date2, true);
      expect(dateTime1 != dateTime2, true);

      expect(date1 <= date2, false);
      expect(dateTime1.isBefore(dateTime2), false);

      expect(date1 >= date2, true);
      expect(dateTime1.isAfter(dateTime2), true);

      expect(date1 < date2, false);
      expect(dateTime1.isBefore(dateTime2), false);

      expect(date1 > date2, true);
      expect(dateTime1.isAfter(dateTime2), true);

      expect(list.first == date1, true);
      list.sort(); // Sort Test
      expect(list.first == date2, true);
    });
    test('Age', () {
      expect(Age.byMonthsAgo(1).ageInTotalDaysByNow, anyOf(dateBase));
      expect(
        Age.byMonthsAgo(2).ageInTotalDaysByNow,
        anyOf(
          dateBase.expand((element) => [element * 2, element * 2 + 1]).toList(),
        ),
      );
      expect(Age.byDaysAgo(30).ageInTotalDaysByNow, 30);
      expect(Age.byDaysAgo(1000).ageInTotalDaysByNow, 1000);
      expect(Age.byDaysAgo(10000).ageInTotalDaysByNow, 10000);
    });
    test('Arm Circ', () {
      final age = Age.byMonthsAgo(24);
      final observationDate = Date.monthsAgoByNow(18);
      final acForAge = gs.armCircumferenceForAge;
      //! Test observation date
      final male = acForAge.male(
        age: age,
        measurementResult: const Centimeters(20.3),
        armCircumferenceData: armCirData,
        observationDate: observationDate,
      );
      expect(
        male.zScore,
        equals(
          male.copyWithNull(observationDate: null)
              .copyWith(age: Age.byDate(observationDate))
              .zScore,
        ),
      );
      expect(
        acForAge
            .male(
              age: Age.byMonthsAgo(44),
              measurementResult: const Centimeters(11.5),
              armCircumferenceData: armCirData,
            )
            .zScore,
        -4.11,
      );
      expect(
        acForAge
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
                  gs.bodyMassIndexForAge.bodyMassIndexMeasurement.fromValue(
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
              bodyMassIndexMeasurement: gs
                  .bodyMassIndexForAge.bodyMassIndexMeasurement
                  .fromValue(12, age: Age.byMonthsAgo(28)),
              bodyMassIndexData: bodyMassIndexData,
            )
            .zScore,
        -3.75,
      );
      expect(
        gs.bodyMassIndexForAge
            .male(
              bodyMassIndexMeasurement:
                  gs.bodyMassIndexForAge.bodyMassIndexMeasurement.fromValue(
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
