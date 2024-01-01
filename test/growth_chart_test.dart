import 'package:growth_standards/growth_standards.dart';

import 'package:test/test.dart';

const dateBase = [28, 29, 30, 31];

final whoGS = GrowthStandard.whoGrowthStandard;

void main() {
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
      expect(Age.byMonthsAgo(400).ageInTotalMonthsByNow, 400);

      expect(Age.byYearsAgo(1).ageInTotalMonthsByNow, 12);
      expect(Age.byYearsAgo(2).ageInTotalMonthsByNow, 24);
      expect(Age.byYearsAgo(20).ageInTotalMonthsByNow, 240);
    });
    test('WHO Arm Circ', () {
      final age = Age.byMonthsAgo(24);
      final observationDate = Date.monthsAgoByNow(18);
      final male = whoGS.armCircumferenceForAge(
        sex: Sex.male,
        age: age,
        measurementResult: const Centimeters(20.3),
        observationDate: observationDate,
      );

      //! Test observation date

      expect(
        male.zScore(Precision.two),
        equals(
          male
              .copyWith(age: Age.byDate(observationDate), observationDate: null)
              .zScore(Precision.two),
        ),
      );
      expect(
        whoGS
            .armCircumferenceForAge(
              age: Age.byMonthsAgo(44),
              measurementResult: const Centimeters(11.5),
              sex: Sex.male,
            )
            .zScore(Precision.two),
        -4.11,
      );
      expect(
        whoGS
            .armCircumferenceForAge(
              age: Age.byMonthsAgo(28),
              measurementResult: const Centimeters(17.4),
              sex: Sex.male,
            )
            .zScore(Precision.two),
        1.57,
      );
    });
    test('WHO BMI', () {
      final observationDate = Date.monthsAgoByNow(40);
      final age = Age.byMonthsAgo(44);
      final bmi = BodyMassIndexMeasurement(
        20.5,
        age: age,
      );
      final male = whoGS.bodyMassIndexForAge(
        bodyMassIndexMeasurement: bmi,
        sex: Sex.male,
        observationDate: observationDate,
      );
      expect(
        male.zScore(Precision.two),
        3.39,
      );
      expect(
        male
            .copyWith(
              observationDate: null,
              bodyMassIndexMeasurement: BodyMassIndexMeasurement(
                20.5,
                age: Age.byDate(observationDate),
              ),
            )
            .zScore(Precision.two),
        3.39,
      );
      expect(
        whoGS
            .bodyMassIndexForAge(
              sex: Sex.male,
              bodyMassIndexMeasurement: BodyMassIndexMeasurement(
                12,
                age: Age.byMonthsAgo(28),
              ),
            )
            .zScore(Precision.two),
        -3.75,
      );
      expect(
        whoGS
            .bodyMassIndexForAge(
              sex: Sex.male,
              bodyMassIndexMeasurement: BodyMassIndexMeasurement(
                18.8,
                age: Age.byMonthsAgo(52),
              ),
            )
            .zScore(Precision.two),
        anyOf(2.36, 2.37),
      );
    });
  });

  group('CDC', () {
    test('CDC BMI 1', () {
      final age = Age.byMonthsAgo(50);
      const sex = Sex.male;
      final bodyMassIndexMeasurement = CDCBodyMassIndexMeasurement(22.6);
      final calc = CDCBodyMassIndexForAge(
        sex: sex,
        age: age,
        bodyMassIndexMeasurement: bodyMassIndexMeasurement,
      );

      print(calc.age.cdcAge);

      expect(calc.zScore(Precision.two), 2.83);
      expect(calc.percentile(Precision.four), 99.7683);
    });
    test('CDC BMI 2', () {
      final age = Age.byMonthsAgo(115);
      const sex = Sex.female;
      final bodyMassIndexMeasurement = CDCBodyMassIndexMeasurement(21.2);

      final calc = CDCBodyMassIndexForAge(
        sex: sex,
        age: age,
        bodyMassIndexMeasurement: bodyMassIndexMeasurement,
      );

      print(calc.age.cdcAge);

      expect(calc.zScore(Precision.four), 1.4215);
      expect(calc.percentile(Precision.one), 92.2);
    });
  });
}
