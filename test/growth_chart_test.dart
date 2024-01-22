import 'dart:collection';

import 'package:growth_standards/growth_standards.dart';

import 'package:test/test.dart';

final whoGS = GrowthStandard.who.fromBirthTo5Years;

void main() {
  group('Date and Age test', () {
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
    test('Date Sort', () {
      final dateMap = {
        date1: 'date1',
        date2: 'date2',
        date3: 'date3',
        date4: 'date4',
        date5: 'date5',
        date6: 'date6',
      };
      final newMap = {Date(year: 2021, month: Months.april, date: 2): 'date7'};

      final splayTreeMap = SplayTreeMap<Date, String>.of(dateMap);
      expect(splayTreeMap.entries.first.value, 'date4');
      splayTreeMap.addAll(newMap);
      expect(splayTreeMap.entries.first.value, 'date7');

      expect(list.first == date1, true);
      list.sort(); // Sort Test
      expect(list.first == date2, true);
    });
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
    });
    test('Age', () {
      const dateBase = [28, 29, 30, 31];

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
      expect(Age.byMonthsAgo(1).ageInTotalMonthsByNow, 1);
      expect(Age.byMonthsAgo(2).ageInTotalMonthsByNow, 2);
      expect(Age.byMonthsAgo(3).ageInTotalMonthsByNow, 3);
      expect(Age.byMonthsAgo(4).ageInTotalMonthsByNow, 4);
      expect(Age.byMonthsAgo(5).ageInTotalMonthsByNow, 5);
      expect(Age.byMonthsAgo(111).ageInTotalMonthsByNow, 111);
      expect(Age.byMonthsAgo(112).ageInTotalMonthsByNow, 112);
      expect(Age.byMonthsAgo(113).ageInTotalMonthsByNow, 113);
      expect(Age.byWeeksAgo(113).ageInTotalWeeksByNow, 113);

      expect(Age.byYearsAgo(1).ageInTotalMonthsByNow, 12);
      expect(Age.byYearsAgo(2).ageInTotalMonthsByNow, 24);
      expect(Age.byYearsAgo(20).ageInTotalMonthsByNow, 240);
    });
  });

  group('WHO Test', () {
    test('Arm Circ', () {
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
              .copyWith(age: Age(observationDate), observationDate: null)
              .zScore(Precision.two),
        ),
      );

      expect(
        whoGS.fromJson.armCircumferenceForAge(male.toJson()).measurementResult,
        equals(
          const Centimeters(20.3).toMeters,
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
    test('BMI', () {
      final observationDate = Date.monthsAgoByNow(40);
      final age = Age.byMonthsAgo(44);
      final bmi = WHOGrowthStandardsBodyMassIndexMeasurement(
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
              bodyMassIndexMeasurement:
                  WHOGrowthStandardsBodyMassIndexMeasurement(
                20.5,
                age: Age(observationDate),
              ),
            )
            .zScore(Precision.two),
        3.39,
      );
      expect(
        whoGS
            .bodyMassIndexForAge(
              sex: Sex.male,
              bodyMassIndexMeasurement:
                  WHOGrowthStandardsBodyMassIndexMeasurement(
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
              bodyMassIndexMeasurement:
                  WHOGrowthStandardsBodyMassIndexMeasurement(
                18.8,
                age: Age.byMonthsAgo(52),
              ),
            )
            .zScore(Precision.two),
        anyOf(2.36, 2.37),
      );
    });

    test('Length Velocity 1', () {
      final age = Age.byMonthsAgo(12);
      final msr1 = LengthMeasurementHistory(
        age.dateAtMonthsAfterBirth(9),
        const Centimeters(72.5),
      );

      final msr2 = LengthMeasurementHistory(
        age.dateAtMonthsAfterBirth(12),
        const Centimeters(80),
      );

      final msrmnt = whoGS.lengthVelocityForAge(
        age: age,
        sex: Sex.female,
        pastMeasurement: [msr1, msr2],
      );
      final result = msrmnt.zScorePercentileMap(Precision.two);
      expect(result.containsKey(VelocityIncrement.$3), true);
      expect(
        result[VelocityIncrement.$3]?.containsKey((high: 12, low: 9)),
        true,
      );
      expect(result[VelocityIncrement.$3]?[(high: 12, low: 9)]?.zScore, 3.80);
    });
    test('Length Velocity 2', () {
      final age = Age.byMonthsAgo(18);
      final msr1 = LengthMeasurementHistory(
        age.dateAtMonthsAfterBirth(15),
        const Centimeters(85),
      );

      final msr2 = LengthMeasurementHistory(
        age.dateAtMonthsAfterBirth(18),
        const Centimeters(85.5),
      );

      final msrmnt = whoGS.lengthVelocityForAge(
        age: age,
        sex: Sex.female,
        pastMeasurement: [msr1, msr2],
      );
      final result = msrmnt.zScorePercentileMap(Precision.two);
      expect(result.containsKey(VelocityIncrement.$3), true);
      expect(
        result[VelocityIncrement.$3]?.containsKey((high: 18, low: 15)),
        true,
      );
      expect(result[VelocityIncrement.$3]?[(high: 18, low: 15)]?.zScore, -3.26);
    });
    test('Length Velocity 3', () {
      final age = Age.byMonthsAgo(6);
      final msr1 = LengthMeasurementHistory(
        age.dateAtMonthsAfterBirth(3),
        const Centimeters(47),
      );

      final msr2 = LengthMeasurementHistory(
        age.dateAtMonthsAfterBirth(6),
        const Centimeters(55),
      );

      final msrmnt = whoGS.lengthVelocityForAge(
        age: age,
        sex: Sex.female,
        pastMeasurement: [msr1, msr2],
      );
      final result = msrmnt.zScorePercentileMap(Precision.two);
      expect(result.containsKey(VelocityIncrement.$3), true);
      expect(
        result[VelocityIncrement.$3]?.containsKey((high: 6, low: 3)),
        true,
      );
      expect(result[VelocityIncrement.$3]?[(high: 6, low: 3)]?.zScore, 1.90);
    });

    test('Weight Velocity 1', () {
      final age = Age.byMonthsAgo(6);
      final msr1 = MassMeasurementHistory(
        age.dateAtMonthsAfterBirth(4),
        const Kilograms(4),
      );

      final msr2 = MassMeasurementHistory(
        age.dateAtMonthsAfterBirth(6),
        const Kilograms(6.2),
      );

      final msrmnt = whoGS.weightVelocityForAge(
        age: age,
        sex: Sex.male,
        pastMeasurement: [msr1, msr2],
      );
      final result = msrmnt.zScorePercentileMap(Precision.two);
      expect(result.containsKey(VelocityIncrement.$2), true);
      expect(
        result[VelocityIncrement.$2]?.containsKey((high: 6, low: 4)),
        true,
      );
      expect(result[VelocityIncrement.$2]?[(high: 6, low: 4)]?.zScore, 3.58);
    });
    test('Weight Velocity 2', () {
      final age = Age.byMonthsAgo(18);
      final msr1 = MassMeasurementHistory(
        age.dateAtMonthsAfterBirth(16),
        const Kilograms(12),
      );

      final msr2 = MassMeasurementHistory(
        age.dateAtMonthsAfterBirth(18),
        const Kilograms(11.5),
      );

      final msrmnt = whoGS.weightVelocityForAge(
        age: age,
        sex: Sex.male,
        pastMeasurement: [msr1, msr2],
      );
      final result = msrmnt.zScorePercentileMap(Precision.two);
      expect(result.containsKey(VelocityIncrement.$2), true);
      expect(
        result[VelocityIncrement.$2]?.containsKey((high: 18, low: 16)),
        true,
      );
      expect(result[VelocityIncrement.$2]?[(high: 18, low: 16)]?.zScore, -3.27);
    });
    test('Weight Velocity 3', () {
      final age = Age.byMonthsAgo(13);
      final msr1 = MassMeasurementHistory(
        age.dateAtMonthsAfterBirth(11),
        const Kilograms(9),
      );

      final msr2 = MassMeasurementHistory(
        age.dateAtMonthsAfterBirth(13),
        const Kilograms(10.2),
      );

      final msrmnt = whoGS.weightVelocityForAge(
        age: age,
        sex: Sex.male,
        pastMeasurement: [msr1, msr2],
      );
      final result = msrmnt.zScorePercentileMap(Precision.two);
      expect(result.containsKey(VelocityIncrement.$2), true);
      expect(
        result[VelocityIncrement.$2]?.containsKey((high: 13, low: 11)),
        true,
      );
      expect(result[VelocityIncrement.$2]?[(high: 13, low: 11)]?.zScore, 2.27);
    });
  });

  group('CDC Test', () {
    test('BMI 1', () {
      final age = Age.byMonthsAgo(50);
      const sex = Sex.male;
      final bodyMassIndexMeasurement = CDCBodyMassIndexMeasurement(22.6);
      final calc = CDCBodyMassIndexForAge(
        sex: sex,
        age: age,
        bodyMassIndexMeasurement: bodyMassIndexMeasurement,
      );

      expect(calc.zScore(Precision.two), 2.83);
      expect(calc.percentile(Precision.four), 99.7683);
    });
    test('BMI 2', () {
      final age = Age.byMonthsAgo(114);
      const sex = Sex.female;
      final bodyMassIndexMeasurement = CDCBodyMassIndexMeasurement(21.2);

      final calc = CDCBodyMassIndexForAge(
        sex: sex,
        age: age,
        bodyMassIndexMeasurement: bodyMassIndexMeasurement,
      );

      expect(calc.zScore(Precision.four), 1.4215);
      expect(calc.percentile(Precision.one), 92.2);
    });
  });
}
