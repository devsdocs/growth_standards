import 'package:growth_standards/growth_standards.dart';
import 'package:test/test.dart';

void main() {
  final duringPregnancy = GrowthStandard.intergrowth.duringPregnancy;

  group('INTERGROWTH-21st Estimated Fetal Weight — Hadlock (UOG 2020)', () {
    test('matches official Oxford Excel calculator row 6 golden vector', () {
      // Official intergrowth_hadlock_efw_calculator_1.xlsx row 6:
      // GA = 24+3 (171 days), HC = 230 mm, AC = 210 mm, FL = 50 mm
      // Expected Hadlock EFW = 870.16177215199957 g
      // Expected Z = 2.5499428963771749, Centile = 99.461297176800756%
      final est = IntergrowthHadlockEstimatedFetalWeightForAge.estimateWeight(
        headCircumference: Length$Millimeter(230),
        abdominalCircumference: Length$Millimeter(210),
        femurLength: Length$Millimeter(50),
      );
      expect(est.value.toDouble(), closeTo(870.16177215, 1e-4));

      final res = duringPregnancy.estimatedFetalWeightHadlockFromBiometry(
        gestationalAge: const GestationalAge(weeks: 24, days: 3),
        headCircumference: Length$Millimeter(230),
        abdominalCircumference: Length$Millimeter(210),
        femurLength: Length$Millimeter(50),
      );
      expect(res.measurementResultInDefaultUnit, closeTo(870.16177215, 1e-4));
      expect(res.zScore(Precision.four), closeTo(2.5499, 0.001));
      expect(res.percentile(), closeTo(99.46, 0.05));
    });

    test('matches official R script example (2000 g at 32+3 weeks)', () {
      final res = duringPregnancy.estimatedFetalWeightHadlock(
        gestationalAge: const GestationalAge(weeks: 32, days: 3),
        estimatedWeight: Mass$Gram(2000),
      );
      expect(res.zScore().isFinite, isTrue);
      // Median quantile round-trip: valueAtZScore(0) should give Z = 0
      final medianGrams = res.lmsData.valueAtZScore(0).toDouble();
      final medianRes = duringPregnancy.estimatedFetalWeightHadlock(
        gestationalAge: const GestationalAge(weeks: 32, days: 3),
        estimatedWeight: Mass$Gram(medianGrams),
      );
      expect(medianRes.zScore(), closeTo(0.0, 0.01));
      expect(medianRes.percentile(), closeTo(50.0, 0.1));
    });

    test('supports full 18+0 to 41+0 range and rejects out-of-range GA', () {
      final lower = duringPregnancy.estimatedFetalWeightHadlock(
        gestationalAge: const GestationalAge(weeks: 18),
        estimatedWeight: Mass$Gram(230),
      );
      final upper = duringPregnancy.estimatedFetalWeightHadlock(
        gestationalAge: const GestationalAge(weeks: 41),
        estimatedWeight: Mass$Kilogram(3.6),
      );
      expect(lower.zScore().isFinite, isTrue);
      expect(upper.zScore().isFinite, isTrue);

      final tooEarly = duringPregnancy.estimatedFetalWeightHadlock(
        gestationalAge: const GestationalAge(weeks: 17, days: 6),
        estimatedWeight: Mass$Gram(200),
      );
      expect(() => tooEarly.zScore(), throwsArgumentError);

      final tooLate = duringPregnancy.estimatedFetalWeightHadlock(
        gestationalAge: const GestationalAge(weeks: 41, days: 1),
        estimatedWeight: Mass$Kilogram(3.8),
      );
      expect(() => tooLate.zScore(), throwsArgumentError);
    });

    test('rejects non-positive biometry and <= 1g EFW', () {
      expect(
        () => IntergrowthHadlockEstimatedFetalWeightForAge.estimateWeight(
          headCircumference: Length$Millimeter(0),
          abdominalCircumference: Length$Millimeter(210),
          femurLength: Length$Millimeter(50),
        ),
        throwsArgumentError,
      );
      final badMass = duringPregnancy.estimatedFetalWeightHadlock(
        gestationalAge: const GestationalAge(weeks: 28),
        estimatedWeight: Mass$Gram(0.5),
      );
      expect(() => badMass.zScore(), throwsArgumentError);
    });

    test('renders SVG growth chart in grams', () {
      final res = duringPregnancy.estimatedFetalWeightHadlock(
        gestationalAge: const GestationalAge(weeks: 32, days: 3),
        estimatedWeight: Mass$Gram(2000),
      );
      final svg = res.toSvg();
      expect(svg, contains('<svg'));
      expect(svg, contains('Estimated Fetal Weight (g)'));
      expect(svg, contains('2000 g'));
    });
  });

  group('INTERGROWTH-21st Original Estimated Fetal Weight (UOG 2017)', () {
    test('matches official Oxford Excel calculator golden vectors', () {
      // Official intergrowth_efw_calculator_-_new_1.xlsx:
      // AC = 26 cm, HC = 29 cm => EFW = 1498.6083989398489 g
      final est = IntergrowthEstimatedFetalWeightForAge.estimateWeight(
        headCircumference: Length$Centimeter(29),
        abdominalCircumference: Length$Centimeter(26),
      );
      expect(est.value.toDouble(), closeTo(1498.6084, 1e-3));

      // Sheet 4: GA = 30+0, EFW = 1499 g => Z = 0.55644928, centile = 71.1048%
      final res1 = duringPregnancy.estimatedFetalWeight(
        gestationalAge: const GestationalAge(weeks: 30),
        estimatedWeight: Mass$Gram(1499),
      );
      expect(res1.zScore(Precision.four), closeTo(0.5564, 0.001));
      expect(res1.percentile(), closeTo(71.10, 0.05));

      // Sheet 5: GA = 30+0, EFW = 1119 g => Z = -1.78391705, centile = 3.7219%
      final res2 = duringPregnancy.estimatedFetalWeight(
        gestationalAge: const GestationalAge(weeks: 30),
        estimatedWeight: Mass$Gram(1119),
      );
      expect(res2.zScore(Precision.four), closeTo(-1.7839, 0.001));
      expect(res2.percentile(), closeTo(3.72, 0.05));

      // Direct biometry convenience factory matches mass factory
      final fromBio = duringPregnancy.estimatedFetalWeightFromBiometry(
        gestationalAge: const GestationalAge(weeks: 30),
        headCircumference: Length$Centimeter(29),
        abdominalCircumference: Length$Centimeter(26),
      );
      expect(fromBio.zScore(), closeTo(0.55, 0.01));
    });

    test('renders SVG growth chart and supports JSON round-trip', () {
      final res = duringPregnancy.estimatedFetalWeight(
        gestationalAge: const GestationalAge(weeks: 30),
        estimatedWeight: Mass$Gram(1499),
      );
      expect(res.toSvg(), contains('<svg'));
      final roundTrip = duringPregnancy.fromJson.estimatedFetalWeight(
        res.toJson(),
      );
      expect(roundTrip.zScore(), equals(res.zScore()));
    });
  });

  group('INTERGROWTH-21st Ultrasound Pregnancy Dating Calculators', () {
    test('Early Pregnancy Dating by CRL matches official Excel (17 mm)', () {
      // intergrowth_ga_calculator_1.1.xlsx Based on CRL:
      // CRL = 17 mm, exam date = 2016-12-23 =>
      // GA = 8.58509160373465 weeks (8w + 4.0956 days = 60.0956 days), EDD = 2017-07-31
      final est = duringPregnancy.estimateGestationalAgeByCRL(
        crl: Length$Millimeter(17),
        examinationDate: Date(year: 2016, month: Months.december, date: 23),
      );
      expect(est.method, IntergrowthDatingMethod.crl);
      expect(est.exactWeeks, closeTo(8.5850916, 1e-5));
      expect(est.completedWeeks, 8);
      expect(est.remainingDays, closeTo(4.09564, 1e-4));
      expect(est.gestationalAge, const GestationalAge(weeks: 8, days: 4));
      expect(
        est.estimatedDueDate,
        Date(year: 2017, month: Months.july, date: 31),
      );
      expect(est.sdDays, closeTo(2.7199, 1e-3));
      expect(est.predictionInterval95.lowerDays, lessThan(est.exactDays));
      expect(est.predictionInterval95.upperDays, greaterThan(est.exactDays));
    });

    test('Early Pregnancy Dating accepts cm units and enforces 15–100 mm', () {
      final cmEst = duringPregnancy.estimateGestationalAgeByCRL(
        crl: Length$Centimeter(10.0),
      );
      expect(cmEst.exactDays, closeTo(107.9582, 1e-3));
      expect(cmEst.estimatedDueDate, isNull);

      expect(
        () => duringPregnancy.estimateGestationalAgeByCRL(
          crl: Length$Millimeter(14.9),
        ),
        throwsArgumentError,
      );
      expect(
        () => duringPregnancy.estimateGestationalAgeByCRL(
          crl: Length$Millimeter(100.1),
        ),
        throwsArgumentError,
      );
    });

    test('Late Pregnancy Dating by HC & FL matches official Excel (130, 20 mm)', () {
      // intergrowth_ga_calculator_1.1.xlsx Based on HC & FL:
      // HC = 130 mm, FL = 20 mm, exam date = 2016-12-23 =>
      // GA = 16.370727953 weeks (16w + 2.5951 days), EDD = 2017-06-06 (280 - 114.5951 = 165.4 -> +165 days)
      final est = duringPregnancy.estimateGestationalAgeByHCAndFL(
        headCircumference: Length$Millimeter(130),
        femurLength: Length$Millimeter(20),
        examinationDate: Date(year: 2016, month: Months.december, date: 23),
      );
      expect(est.method, IntergrowthDatingMethod.hcAndFl);
      expect(est.exactWeeks, closeTo(16.370728, 1e-5));
      expect(est.completedWeeks, 16);
      expect(est.remainingDays, closeTo(2.5951, 1e-3));
      expect(est.gestationalAge, const GestationalAge(weeks: 16, days: 3));
      expect(
        est.estimatedDueDate,
        Date(year: 2017, month: Months.june, date: 6),
      );
    });

    test('Late Pregnancy Dating by HC alone works and rejects HC > 330 mm', () {
      final est = duringPregnancy.estimateGestationalAgeByHC(
        headCircumference: Length$Centimeter(20.0),
      );
      expect(est.method, IntergrowthDatingMethod.hcOnly);
      // exp(0.0597 * ln(200)^2 + 6.409e-9 * 200^3 + 3.3258) / 7 = 22.3554517 weeks
      expect(est.exactWeeks, closeTo(22.35545, 1e-4));
      expect(est.sdDays, greaterThan(3.0));

      expect(
        () => duringPregnancy.estimateGestationalAgeByHC(
          headCircumference: Length$Millimeter(331),
        ),
        throwsArgumentError,
      );
    });
  });

  group('INTERGROWTH-21st Oct 2025 Week-41 Fetal Biometry Extension', () {
    test('all 5 fetal biometry standards accept gestational week 41', () {
      final ga41 = Age.byWeeksAgo(41);
      final hc = duringPregnancy.fetalHeadCircumference(
        gestationalAge: ga41,
        measurementResult: Length$Millimeter(335.8),
      );
      final ac = duringPregnancy.fetalAbdominalCircumference(
        gestationalAge: ga41,
        measurementResult: Length$Millimeter(358.7),
      );
      final fl = duringPregnancy.fetalFemurLength(
        gestationalAge: ga41,
        measurementResult: Length$Millimeter(73.4),
      );
      final bpd = duringPregnancy.fetalBiparietalDiameter(
        gestationalAge: ga41,
        measurementResult: Length$Millimeter(95.1),
      );
      final ofd = duringPregnancy.fetalOccipitofrontalDiameter(
        gestationalAge: ga41,
        measurementResult: Length$Millimeter(116.1),
      );

      for (final r in [hc, ac, fl, bpd, ofd]) {
        expect(r.zScore(), closeTo(0.0, 0.05));
        expect(r.percentile(), closeTo(50.0, 2.0));
      }
    });
  });

  group('INTERGROWTH-21st New GrowthTrajectory Factories', () {
    final lmp = Date(year: 2024, month: Months.january, date: 1);

    test('OFD, CRL, SFH, GWG, and EFW trajectories evaluate & render SVG', () {
      final ofd = GrowthTrajectory.intergrowthFetalOccipitofrontalDiameter(
        dateOfLmp: lmp,
        visits: [
          VisitObservation(lmp.addWeeks(20), Length$Millimeter(62)),
          VisitObservation(lmp.addWeeks(30), Length$Millimeter(98)),
        ],
      );
      expect(ofd.zScores.every((z) => z.isFinite), isTrue);
      expect(ofd.toSvg(), contains('<svg'));

      final crl = GrowthTrajectory.intergrowthFetalCrownRumpLength(
        dateOfLmp: lmp,
        visits: [
          VisitObservation(lmp.addDays(70), Length$Millimeter(32)),
          VisitObservation(lmp.addDays(84), Length$Millimeter(55)),
        ],
      );
      expect(crl.zScores.every((z) => z.isFinite), isTrue);
      expect(crl.toSvg(), contains('<svg'));

      final sfh = GrowthTrajectory.intergrowthSymphysisFundalHeight(
        dateOfLmp: lmp,
        visits: [
          VisitObservation(lmp.addWeeks(24), Length$Centimeter(24)),
          VisitObservation(lmp.addWeeks(32), Length$Centimeter(31)),
        ],
      );
      expect(sfh.zScores.every((z) => z.isFinite), isTrue);
      expect(sfh.toSvg(), contains('<svg'));

      final gwg = GrowthTrajectory.intergrowthGestationalWeightGain(
        dateOfLmp: lmp,
        visits: [
          VisitObservation(lmp.addWeeks(20), Mass$Kilogram(3.5)),
          VisitObservation(lmp.addWeeks(32), Mass$Kilogram(9.5)),
        ],
      );
      expect(gwg.zScores.every((z) => z.isFinite), isTrue);
      expect(gwg.toSvg(), contains('<svg'));

      final hadlockEfw =
          GrowthTrajectory.intergrowthEstimatedFetalWeightHadlock(
            dateOfLmp: lmp,
            visits: [
              VisitObservation(lmp.addDays(171), Mass$Gram(870)),
              VisitObservation(lmp.addDays(227), Mass$Gram(2000)),
            ],
          );
      expect(hadlockEfw.zScores.every((z) => z.isFinite), isTrue);
      expect(hadlockEfw.toSvg(), contains('<svg'));

      final igEfw = GrowthTrajectory.intergrowthEstimatedFetalWeight(
        dateOfLmp: lmp,
        visits: [
          VisitObservation(lmp.addWeeks(26), Mass$Gram(900)),
          VisitObservation(lmp.addWeeks(34), Mass$Gram(2200)),
        ],
      );
      expect(igEfw.zScores.every((z) => z.isFinite), isTrue);
      expect(igEfw.toSvg(), contains('<svg'));
    });
  });
}
