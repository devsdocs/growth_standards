import 'package:growth_standards/growth_standards.dart';
import 'package:growth_standards/src/category/who/tools.dart';
import 'package:growth_standards/src/common/math.dart';
import 'package:growth_standards/src/common/types.dart' show AdjustedLengthType;
import 'package:test/test.dart';

/// Edge cases from docs/CODE_REVIEW_AND_STANDARDS_COMPARISON.md (A1, A3, A5, …).
/// These tests are expected to fail before the corresponding fixes land.
void main() {
  group('A1 — WHO velocity day-based increment matching', () {
    test('~28-day visit gap maps to 1-month weight velocity increment', () {
      final before = Date.fromDateTime(DateTime(2024));
      final after = Date.fromDateTime(DateTime(2024, 1, 29)); // 28 days
      final data = VelocityPastMeasurement([
        MassMeasurementHistory(before, Mass$Kilogram(5)),
        MassMeasurementHistory(after, Mass$Kilogram(5.8)),
      ], Mass$Gram()).incrementalData;

      expect(data.containsKey(VelocityIncrement.$1), isTrue);
      final delta =
          data[VelocityIncrement.$1]![(dateBefore: before, dateAfter: after)];
      expect(delta, closeTo(800, 0.01));
    });

    test('same-calendar-month ~30-day gap maps to 1-month increment', () {
      // Calendar months == 0 today; day-based ≈ 1 month.
      final before = Date.fromDateTime(DateTime(2024, 5));
      final after = Date.fromDateTime(DateTime(2024, 5, 31)); // 30 days
      final data = VelocityPastMeasurement([
        MassMeasurementHistory(before, Mass$Kilogram(6)),
        MassMeasurementHistory(after, Mass$Kilogram(6.5)),
      ], Mass$Gram()).incrementalData;

      expect(data.containsKey(VelocityIncrement.$1), isTrue);
    });

    test(
      '~58-day gap maps to 2-month increment when calendar months is only 1',
      () {
        // Jan 5 → Mar 3: calendar months == 1, days == 58 ≈ 2 WHO months.
        final before = Date.fromDateTime(DateTime(2024, 1, 5));
        final after = Date.fromDateTime(DateTime(2024, 3, 3));
        final data = VelocityPastMeasurement([
          MassMeasurementHistory(before, Mass$Kilogram(5)),
          MassMeasurementHistory(after, Mass$Kilogram(6.2)),
        ], Mass$Gram()).incrementalData;

        expect(data.containsKey(VelocityIncrement.$2), isTrue);
      },
    );

    test('exact calendar-month gaps still classify correctly', () {
      final before = Date.fromDateTime(DateTime(2024, 1, 15));
      final after = Date.fromDateTime(DateTime(2024, 2, 15));
      final data = VelocityPastMeasurement([
        MassMeasurementHistory(before, Mass$Kilogram(5)),
        MassMeasurementHistory(after, Mass$Kilogram(5.6)),
      ], Mass$Gram()).incrementalData;

      expect(data.containsKey(VelocityIncrement.$1), isTrue);
    });

    test('weight velocity z-score is produced for ~28-day clinical visits', () {
      final age = Age.byMonthsAgo(6);
      // Visits at ~4 mo and ~5 mo calendar-ish but 28 days apart mid-month.
      final msr1 = MassMeasurementHistory(
        age.dateAtMonthsAfterBirth(4).addDays(14),
        Mass$Kilogram(6.5),
      );
      final msr2 = MassMeasurementHistory(
        age.dateAtMonthsAfterBirth(4).addDays(42), // +28 days from msr1
        Mass$Kilogram(7.1),
      );

      final result = GrowthStandard.who.fromBirthTo5Years
          .weightVelocityForAge(
            age: age,
            sex: Sex.male,
            pastMeasurement: [msr1, msr2],
          )
          .zScorePercentileMap();

      expect(result.containsKey(VelocityIncrement.$1), isTrue);
      expect(result[VelocityIncrement.$1], isNotEmpty);
      final z = result[VelocityIncrement.$1]!.values.first.zScore;
      expect(z.isNaN, isFalse);
    });

    test(
      '~87-day gap maps to 3-month increment when calendar months is only 2',
      () {
        // Jan 1 → Mar 28: calendar months == 2, days == 87 ≈ 3 WHO months.
        final before = Date.fromDateTime(DateTime(2024));
        final after = Date.fromDateTime(DateTime(2024, 3, 28));
        final data = VelocityPastMeasurement([
          LengthMeasurementHistory(before, Length$Centimeter(55)),
          LengthMeasurementHistory(after, Length$Centimeter(62)),
        ], Length$Centimeter()).incrementalData;

        expect(data.containsKey(VelocityIncrement.$3), isTrue);
      },
    );
  });

  group('A3 — CDC Agemos uses n+0.5 including endpoint months', () {
    test('BMI at 24 completed months uses Agemos 24.5, not 24', () {
      // Male LMS @24:   L=-2.01118107, M=16.57502768, S=0.080592465
      // Male LMS @24.5: L=-1.982373595, M=16.54777487, S=0.080127429
      // BMI 16.5 → distinct z at those two rows; correct key is 24.5.
      const bmi = 16.5;
      final calc = CDCBodyMassIndexForAge(
        sex: Sex.male,
        age: Age.byMonthsAgo(24),
        bodyMassIndexMeasurement: CDCBodyMassIndexMeasurement(bmi),
      );

      // z from 24.5 LMS (rounded to Precision.two, package default)
      // ((16.5/16.54777487)^(-1.982373595) - 1) / (-1.982373595 * 0.080127429)
      expect(calc.zScore(), closeTo(-0.04, 0.02));
      // Wrong key 24 yields ~ -0.06; assert we are not that far from 24.5.
      expect(calc.zScore(), isNot(closeTo(-0.06, 0.005)));
    });

    test('BMI at 240 completed months uses Agemos 240.5, not 240', () {
      // Male LMS @240:   L=-1.84233016, M=23.02029424, S=0.134539365
      // Male LMS @240.5: L=-1.843580575, M=23.04137734, S=0.134675001
      const bmi = 23.0;
      final calc = CDCBodyMassIndexForAge(
        sex: Sex.male,
        age: Age.byMonthsAgo(240),
        bodyMassIndexMeasurement: CDCBodyMassIndexMeasurement(bmi),
      );

      // z @240.5 ≈ -0.01; z @240 ≈ -0.01 but distinguishable at Precision.four
      expect(calc.zScore(Precision.four), closeTo(-0.0133, 0.001));
    });

    test('weight-for-age at 24 months uses mid-month Agemos 24.5', () {
      final at24 = CDCWeightForAge(
        sex: Sex.male,
        age: Age.byMonthsAgo(24),
        weight: Mass$Kilogram(12.7),
      );
      final at25 = CDCWeightForAge(
        sex: Sex.male,
        age: Age.byMonthsAgo(25),
        weight: Mass$Kilogram(12.7),
      );

      // After fix: 24→24.5 and 25→25.5 — adjacent midpoints, close but not equal.
      expect(at24.zScore().isFinite, isTrue);
      expect(at25.zScore().isFinite, isTrue);
      expect(at24.zScore(), isNot(equals(at25.zScore())));
    });
  });

  group('A5 — ageAtPastDate at date of birth', () {
    test('returns zero age when date equals DOB', () {
      final age = Age.byMonthsAgo(18);
      final atBirth = age.ageAtPastDate(age.dateOfBirth);

      expect(atBirth.dateOfBirth, age.dateOfBirth);
      expect(atBirth.ageInTotalDaysByNow, 0);
      expect(atBirth.ageInTotalMonthsByNow, 0);
      expect(atBirth.ageInTotalWeeksByNow, 0);
    });

    test('does not reuse current age for birth-dated length adjustment', () {
      // Child currently older than 730 days; birth length is recumbent.
      // Using current age would wrongly apply WHO −0.7 cm.
      final age = Age.byDaysAgo(800);
      final atBirth = age.ageAtPastDate(age.dateOfBirth);

      final adjustedAtBirth = adjustedLengthHeight(
        age: atBirth,
        measure: LengthHeightMeasurementPosition.recumbent,
        lengthHeight: Length$Centimeter(50),
        type: AdjustedLengthType.who,
      );
      final adjustedIfCurrentAge = adjustedLengthHeight(
        age: age,
        measure: LengthHeightMeasurementPosition.recumbent,
        lengthHeight: Length$Centimeter(50),
        type: AdjustedLengthType.who,
      );

      expect(adjustedAtBirth.value.toDouble(), 50);
      expect(adjustedIfCurrentAge.value.toDouble(), 49.3);
    });

    test('still returns current age when date is after observation', () {
      final age = Age.byMonthsAgo(12);
      final future = age.getObservedDate().addDays(7);
      expect(
        age.ageAtPastDate(future).ageInTotalDaysByNow,
        age.ageInTotalDaysByNow,
      );
    });
  });

  group('Related — length/height adjustment boundaries', () {
    test('WHO ±0.7 cm flips between day 730 and 731', () {
      final standing730 = adjustedLengthHeight(
        age: Age.byDaysAgo(730),
        measure: LengthHeightMeasurementPosition.standing,
        lengthHeight: Length$Centimeter(85),
        type: AdjustedLengthType.who,
      );
      final standing731 = adjustedLengthHeight(
        age: Age.byDaysAgo(731),
        measure: LengthHeightMeasurementPosition.standing,
        lengthHeight: Length$Centimeter(85),
        type: AdjustedLengthType.who,
      );
      final recumbent731 = adjustedLengthHeight(
        age: Age.byDaysAgo(731),
        measure: LengthHeightMeasurementPosition.recumbent,
        lengthHeight: Length$Centimeter(85),
        type: AdjustedLengthType.who,
      );

      expect(standing730.value.toDouble(), 85.7);
      expect(standing731.value.toDouble(), 85);
      expect(recumbent731.value.toDouble(), 84.3);
    });

    test('CDC ±0.8 cm flips between completed months 23 and 24', () {
      final standing23 = adjustedLengthHeight(
        age: Age.byMonthsAgo(23),
        measure: LengthHeightMeasurementPosition.standing,
        lengthHeight: Length$Centimeter(85),
        type: AdjustedLengthType.cdc,
      );
      final standing24 = adjustedLengthHeight(
        age: Age.byMonthsAgo(24),
        measure: LengthHeightMeasurementPosition.standing,
        lengthHeight: Length$Centimeter(85),
        type: AdjustedLengthType.cdc,
      );
      final recumbent24 = adjustedLengthHeight(
        age: Age.byMonthsAgo(24),
        measure: LengthHeightMeasurementPosition.recumbent,
        lengthHeight: Length$Centimeter(85),
        type: AdjustedLengthType.cdc,
      );

      expect(standing23.value.toDouble(), 85.8);
      expect(standing24.value.toDouble(), 85);
      expect(recumbent24.value.toDouble(), 84.2);
    });
  });

  group('Related — velocity oedema and same-day history', () {
    test('oedema on either weight of a pair yields NaN z-score', () {
      final age = Age.byMonthsAgo(6);
      final msr1 = MassMeasurementHistory(
        age.dateAtMonthsAfterBirth(4),
        Mass$Kilogram(6.5),
        isOedema: true,
      );
      final msr2 = MassMeasurementHistory(
        age.dateAtMonthsAfterBirth(6),
        Mass$Kilogram(7.8),
      );

      final result = GrowthStandard.who.fromBirthTo5Years
          .weightVelocityForAge(
            age: age,
            sex: Sex.male,
            pastMeasurement: [msr1, msr2],
          )
          .zScorePercentileMap();

      expect(result.containsKey(VelocityIncrement.$2), isTrue);
      expect(
        result[VelocityIncrement.$2]![(high: 6, low: 4)]!.zScore.isNaN,
        isTrue,
      );
    });
  });

  group('A2 — Fenton sex is required and used in LMS lookup', () {
    test('weight/length/HC APIs require sex and resolve sex-keyed data', () {
      final age = PostmenstrualAge.completedWeeks(40);
      final weight = Mass$Kilogram(3.581);
      final length = Length$Centimeter(51.114);
      final hc = Length$Centimeter(35);

      final maleW = GrowthStandard.fenton.weightForAge(
        sex: Sex.male,
        age: age,
        weight: weight,
      );
      final femaleW = GrowthStandard.fenton.weightForAge(
        sex: Sex.female,
        age: age,
        weight: weight,
      );
      final maleL = GrowthStandard.fenton.lengthForAge(
        sex: Sex.male,
        age: age,
        lengthHeight: length,
        measure: LengthHeightMeasurementPosition.recumbent,
      );
      final femaleL = GrowthStandard.fenton.lengthForAge(
        sex: Sex.female,
        age: age,
        lengthHeight: length,
        measure: LengthHeightMeasurementPosition.recumbent,
      );
      final maleHc = GrowthStandard.fenton.headCircumferenceForAge(
        sex: Sex.male,
        age: age,
        measurementResult: hc,
      );
      final femaleHc = GrowthStandard.fenton.headCircumferenceForAge(
        sex: Sex.female,
        age: age,
        measurementResult: hc,
      );

      expect(maleW.zScore().isFinite, isTrue);
      expect(femaleW.zScore().isFinite, isTrue);
      expect(maleL.zScore().isFinite, isTrue);
      expect(femaleL.zScore().isFinite, isTrue);
      expect(maleHc.zScore().isFinite, isTrue);
      expect(femaleHc.zScore().isFinite, isTrue);

      // With sex-specific Fenton 2013 LMS parameters, male and female z-scores are distinct.
      expect(maleW.zScore(), isNot(equals(femaleW.zScore())));
      expect(maleL.zScore(), isNot(equals(femaleL.zScore())));
      expect(maleHc.zScore(), isNot(equals(femaleHc.zScore())));
    });

    test('male and female LMS maps are independent instances', () {
      final data = FentonWeightForAgeData().data;
      expect(identical(data[Sex.male], data[Sex.female]), isFalse);
      expect(data.containsKey(Sex.male), isTrue);
      expect(data.containsKey(Sex.female), isTrue);
    });
  });

  group('A4 — Fenton uses PostmenstrualAge, not calendar Age', () {
    test('rejects PMA outside 22–50 weeks', () {
      final calc = GrowthStandard.fenton.weightForAge(
        sex: Sex.male,
        age: PostmenstrualAge.completedWeeks(20),
        weight: Mass$Kilogram(0.4),
      );
      expect(() => calc.zScore(), throwsArgumentError);
    });

    test('builds PMA from gestational age + days of life', () {
      final pma = PostmenstrualAge.fromGestationalAge(
        const GestationalAge(weeks: 28),
        daysOfLife: 14,
      );
      expect(pma.completedWeeks, 30);
      expect(pma.days, 0);

      final z = GrowthStandard.fenton
          .weightForAge(sex: Sex.female, age: pma, weight: Mass$Kilogram(1.446))
          .zScore();
      expect(z.isFinite, isTrue);
    });

    test(
      'uses distinct sex-specific Fenton 2013 LMS parameters for boys vs girls',
      () {
        final maleCalc = GrowthStandard.fenton.weightForAge(
          sex: Sex.male,
          age: PostmenstrualAge.completedWeeks(40),
          weight: Mass$Kilogram(3.5),
        );
        final femaleCalc = GrowthStandard.fenton.weightForAge(
          sex: Sex.female,
          age: PostmenstrualAge.completedWeeks(40),
          weight: Mass$Kilogram(3.5),
        );

        // Fenton 2013 male median M = 3.65 kg; female median M = 3.51 kg
        expect(maleCalc.lmsData.lms.m, closeTo(3.65, 0.01));
        expect(femaleCalc.lmsData.lms.m, closeTo(3.51, 0.01));
        expect(maleCalc.zScore(), isNot(equals(femaleCalc.zScore())));
      },
    );
  });

  group('A11 — WHO WFL vs WFH age gates', () {
    test('weight-for-length rejects age >730 days', () {
      final calc = GrowthStandard.who.fromBirthTo5Years.weightForLength(
        sex: Sex.male,
        age: Age.byDaysAgo(731),
        lengthMeasurementResult: Length$Centimeter(90),
        massMeasurementResult: Mass$Kilogram(12),
        measure: LengthHeightMeasurementPosition.recumbent,
      );
      expect(() => calc.zScore(), throwsArgumentError);
    });

    test('weight-for-height rejects age ≤730 days', () {
      final calc = GrowthStandard.who.fromBirthTo5Years.weightForHeight(
        sex: Sex.male,
        age: Age.byDaysAgo(730),
        height: Length$Centimeter(90),
        mass: Mass$Kilogram(12),
        measure: LengthHeightMeasurementPosition.standing,
      );
      expect(() => calc.zScore(), throwsArgumentError);
    });

    test('weight-for-length accepts age ≤730 days', () {
      final calc = GrowthStandard.who.fromBirthTo5Years.weightForLength(
        sex: Sex.male,
        age: Age.byDaysAgo(365),
        lengthMeasurementResult: Length$Centimeter(75),
        massMeasurementResult: Mass$Kilogram(9),
        measure: LengthHeightMeasurementPosition.recumbent,
      );
      expect(calc.zScore().isFinite, isTrue);
    });

    test('weight-for-height accepts age >730 days', () {
      final calc = GrowthStandard.who.fromBirthTo5Years.weightForHeight(
        sex: Sex.male,
        age: Age.byDaysAgo(900),
        height: Length$Centimeter(90),
        mass: Mass$Kilogram(12),
        measure: LengthHeightMeasurementPosition.standing,
      );
      expect(calc.zScore().isFinite, isTrue);
    });
  });

  group('A7 — Velocity runtime guards throw ArgumentError', () {
    test('throws ArgumentError when past measurement is empty', () {
      final calc = GrowthStandard.who.fromBirthTo5Years
          .headCircumferenceVelocityForAge(
            sex: Sex.male,
            age: Age.byMonthsAgo(6),
            pastMeasurement: [],
          );
      expect(() => calc.zScorePercentileMap(), throwsArgumentError);
    });

    test('throws ArgumentError when past measurement has future dates', () {
      final age = Age.byMonthsAgo(6);
      final futureDate = Date.today().addDays(10);
      final msr1 = LengthMeasurementHistory(
        age.dateAtMonthsAfterBirth(2),
        Length$Centimeter(38),
      );
      final msr2 = LengthMeasurementHistory(futureDate, Length$Centimeter(42));
      final calc = GrowthStandard.who.fromBirthTo5Years
          .headCircumferenceVelocityForAge(
            sex: Sex.male,
            age: age,
            pastMeasurement: [msr1, msr2],
          );
      expect(() => calc.zScorePercentileMap(), throwsArgumentError);
    });
  });

  group('A4 — Intergrowth newborn uses GestationalAge', () {
    test('intergrowth newborn birth weight accepts GestationalAge', () {
      final calc = IntergrowthNewbornBirthWeightForAge(
        sex: Sex.male,
        age: const GestationalAge(weeks: 38),
        measurementResult: Mass$Kilogram(3.2),
      );
      expect(calc.zScore().isFinite, isTrue);
    });
  });

  group('A8 — ExtendedDateUtils.calculateAgeAt', () {
    test('sets observedDate correctly for target date', () {
      final dob = Date(year: 2020, month: Months.january, date: 15);
      final target = Date(year: 2022, month: Months.january, date: 15);
      final ageAtTarget = ExtendedDateUtils.calculateAgeAt(dob, target);

      expect(ageAtTarget.dateOfBirth, dob);
      expect(ageAtTarget.getObservedDate(), target);
      expect(ageAtTarget.ageInTotalYearsByNow, 2);
    });
  });

  group('A9 — ExtendedDateUtils.tryParse', () {
    test('parses both dd/MM/yyyy and MM/dd/yyyy when valid', () {
      final d1 = ExtendedDateUtils.tryParse('15/01/2024'); // dd/MM/yyyy
      expect(d1, equals(Date(year: 2024, month: Months.january, date: 15)));

      final d2 = ExtendedDateUtils.tryParse(
        '01/15/2024',
      ); // MM/dd/yyyy fallback
      expect(d2, equals(Date(year: 2024, month: Months.january, date: 15)));
    });
  });

  group('A16 — Age.toHumanReadableString', () {
    test('formats weeks and days accurately without weeks % 4 loss', () {
      final dob = Date.today().subtractDays(50); // 7 weeks, 1 day
      final age = Age(dob);
      expect(age.toHumanReadableString(), contains('week'));
    });
  });

  group('A15 — LMS L->0 limit form', () {
    test('L=0 calculates log(y/M)/S without returning NaN', () {
      const lms = LMS(l: 0, m: 10, s: 0.1);
      final z = lms.zScore(10);
      expect(z.isNaN, isFalse);
      expect(z, closeTo(0.0, 0.0001));
    });
  });

  group(
    'A12 — Missing LMS key throws ArgumentError instead of null-bang crash',
    () {
      test('out-of-range WHO weight-for-age throws ArgumentError', () {
        final calc = GrowthStandard.who.fromBirthTo5Years.weightForAge(
          sex: Sex.male,
          age: Age.byDaysAgo(3000), // > 1856 days (out of WHO 0-5y table range)
          weight: Mass$Kilogram(15),
        );
        expect(() => calc.zScore(), throwsA(isA<ArgumentError>()));
      });
    },
  );

  group('A6 — Velocity history same-day duplicates', () {
    test(
      'preserves sorted date history when multiple measurements occur on distinct days',
      () {
        final d1 = Date.fromDateTime(DateTime(2024));
        final d2 = Date.fromDateTime(DateTime(2024, 2));
        final history = VelocityPastMeasurement([
          MassMeasurementHistory(d1, Mass$Kilogram(5)),
          MassMeasurementHistory(d2, Mass$Kilogram(6)),
        ], Mass$Gram());
        expect(history.sortedByDate.length, 2);
      },
    );
  });

  group('A10 — Leap day calendar age near first birthday', () {
    test('calculates correct completed age for leap day born children', () {
      final dob = Date(year: 2024, month: Months.february, date: 29);
      final dayBeforeFirstBirthday = Date(
        year: 2025,
        month: Months.february,
        date: 28,
      );
      final firstBirthday = Date(year: 2025, month: Months.march, date: 1);

      final ageBefore = Age(dob, observedDate: dayBeforeFirstBirthday);
      final ageAtBirthday = Age(dob, observedDate: firstBirthday);

      expect(ageBefore.ageInTotalYearsByNow, 0);
      expect(ageBefore.ageInTotalMonthsByNow, 11);

      expect(ageAtBirthday.ageInTotalYearsByNow, 1);
      expect(ageAtBirthday.ageInTotalMonthsByNow, 12);
    });
  });

  group('A14 — CDC length keying truncate()+0.5', () {
    test('completed 50 cm length maps to CDC mid-length row 50.5 LMS', () {
      final calc = CDCInfantWeightForLength(
        sex: Sex.male,
        age: Age.byMonthsAgo(2),
        length: Length$Centimeter(50),
        weight: Mass$Kilogram(3.5),
        measure: LengthHeightMeasurementPosition.recumbent,
      );

      // CDC male infant weight-for-length table uses 0.5 midpoints for length ranges (45, 45.5, 46.5, ... 50.5).
      // Completed length 50 cm maps to row 50.5 cm: M = 3.479567
      expect(calc.lmsData.lms.m, closeTo(3.4795, 0.01));
    });
  });

  group('A6 — Velocity duplicate dates', () {
    test('rejects past measurements containing duplicate dates', () {
      final age = Age.byMonthsAgo(6);
      final d1 = age.dateAtMonthsAfterBirth(2);
      final calc = GrowthStandard.who.fromBirthTo5Years.weightVelocityForAge(
        sex: Sex.male,
        age: age,
        pastMeasurement: [
          MassMeasurementHistory(d1, Mass$Kilogram(5)),
          MassMeasurementHistory(d1, Mass$Kilogram(5.2)),
        ],
      );
      expect(() => calc.zScorePercentileMap(), throwsArgumentError);
    });
  });

  group('A17 — Intergrowth doc comments and toString format', () {
    test(
      'very preterm head circumference data toString reflects correct model name',
      () {
        final dataStr =
            IntergrowthVeryPretermNewbornBirthHeadCircumferenceForAgeData()
                .toString();
        expect(
          dataStr,
          contains('Very Preterm Newborn Head Circumference For Age Data'),
        );
      },
    );
  });

  group('Math & Date formatting edge cases', () {
    test(
      'DateFormatExtension.format correctly formats MMM without corrupting tokens',
      () {
        final date = Date(year: 2022, month: Months.june, date: 30);
        expect(date.format('yyyy-MMM-dd'), '2022-June-30');
      },
    );

    test('zScoreCalculation rejects y <= 0 with ArgumentError', () {
      const lms = LMS(l: 1.0, m: 3.5, s: 0.12);
      expect(() => zScoreCalculation(0, lms: lms), throwsArgumentError);
      expect(() => zScoreCalculation(-1, lms: lms), throwsArgumentError);
    });

    test('qnorm handles probabilities and percentages cleanly', () {
      expect(qnorm(50), closeTo(0.0, 1e-5));
      expect(qnorm(0.5), closeTo(0.0, 1e-5));
      expect(qnorm(0.0), double.negativeInfinity);
      expect(qnorm(100.0), double.infinity);
    });
  });
}
