import 'package:growth_standards/growth_standards.dart';
import 'package:test/test.dart';

void main() {
  group('GrowthTrajectory Comprehensive Tests', () {
    final dob = Date(year: 2023, month: Months.january, date: 15);
    const sex = Sex.male;

    test('WHO Weight-for-Length Trajectory', () {
      final trajectory = GrowthTrajectory.whoWeightForLength(
        sex: sex,
        dateOfBirth: dob,
        visits: [
          VisitObservation(
            Date(year: 2023, month: Months.july, date: 15),
            const LengthMassObservation(
              length: Length$Centimeter(67.5),
              weight: Mass$Kilogram(7.8),
            ),
          ),
        ],
      );

      expect(trajectory.length, equals(1));
      expect(trajectory.latestResult?.zScore(), isNotNull);
    });

    test('WHO Weight-for-Height Trajectory', () {
      final trajectory = GrowthTrajectory.whoWeightForHeight(
        sex: sex,
        dateOfBirth: dob,
        visits: [
          VisitObservation(
            Date(year: 2025, month: Months.january, date: 15),
            const LengthMassObservation(
              length: Length$Centimeter(88.0),
              weight: Mass$Kilogram(12.5),
            ),
          ),
        ],
      );

      expect(trajectory.length, equals(1));
      expect(trajectory.latestResult?.zScore(), isNotNull);
    });

    test('WHO BMI-for-Age Trajectory', () {
      final trajectory = GrowthTrajectory.whoBmiForAge(
        sex: sex,
        dateOfBirth: dob,
        visits: [
          VisitObservation(
            Date(year: 2024, month: Months.january, date: 15),
            const LengthMassObservation(
              length: Length$Centimeter(75.5),
              weight: Mass$Kilogram(9.8),
            ),
          ),
        ],
      );

      expect(trajectory.length, equals(1));
      expect(trajectory.latestResult?.zScore(), isNotNull);
    });

    test('WHO Skinfold & MUAC Trajectories', () {
      final muacTrajectory = GrowthTrajectory.whoArmCircumferenceForAge(
        sex: sex,
        dateOfBirth: dob,
        visits: [
          VisitObservation(
            Date(year: 2024, month: Months.january, date: 15),
            const Length$Centimeter(15.0),
          ),
        ],
      );
      expect(muacTrajectory.length, equals(1));

      final subscapularTrajectory =
          GrowthTrajectory.whoSubscapularSkinfoldForAge(
            sex: sex,
            dateOfBirth: dob,
            visits: [
              VisitObservation(
                Date(year: 2024, month: Months.january, date: 15),
                const Length$Millimeter(7.5),
              ),
            ],
          );
      expect(subscapularTrajectory.length, equals(1));

      final tricepsTrajectory = GrowthTrajectory.whoTricepsSkinfoldForAge(
        sex: sex,
        dateOfBirth: dob,
        visits: [
          VisitObservation(
            Date(year: 2024, month: Months.january, date: 15),
            const Length$Millimeter(8.0),
          ),
        ],
      );
      expect(tricepsTrajectory.length, equals(1));
    });

    test('WHO 5-18 Years Trajectories', () {
      final olderDob = Date(year: 2016, month: Months.june, date: 1);
      final heightTrajectory = GrowthTrajectory.who5To18HeightForAge(
        sex: sex,
        dateOfBirth: olderDob,
        visits: [
          VisitObservation(
            Date(year: 2024, month: Months.june, date: 1),
            const Length$Centimeter(128.0),
          ),
        ],
      );
      expect(heightTrajectory.length, equals(1));

      final bmiTrajectory = GrowthTrajectory.who5To18BmiForAge(
        sex: sex,
        dateOfBirth: olderDob,
        visits: [
          VisitObservation(Date(year: 2024, month: Months.june, date: 1), 16.2),
        ],
      );
      expect(bmiTrajectory.length, equals(1));
    });

    test('CDC Trajectories', () {
      final olderDob = Date(year: 2016, month: Months.june, date: 1);
      final cdcBmiTrajectory = GrowthTrajectory.cdcBmiForAge(
        sex: sex,
        dateOfBirth: olderDob,
        visits: [
          VisitObservation(Date(year: 2024, month: Months.june, date: 1), 16.2),
        ],
      );
      expect(cdcBmiTrajectory.length, equals(1));

      final cdcInfantWeight = GrowthTrajectory.cdcInfantWeightForAge(
        sex: sex,
        dateOfBirth: dob,
        visits: [
          VisitObservation(
            Date(year: 2024, month: Months.january, date: 15),
            const Mass$Kilogram(9.8),
          ),
        ],
      );
      expect(cdcInfantWeight.length, equals(1));
    });

    test('Fenton Preterm Trajectory', () {
      const birthPma = PostmenstrualAge.completedWeeks(28);
      final fentonWeight = GrowthTrajectory.fentonWeightForAge(
        sex: sex,
        dateOfBirth: dob,
        birthPma: birthPma,
        visits: [
          VisitObservation(
            Date(year: 2023, month: Months.january, date: 15),
            const Mass$Kilogram(1.1),
          ),
        ],
      );
      expect(fentonWeight.length, equals(1));
      expect(fentonWeight.zScores.length, equals(1));
      expect(fentonWeight.percentiles.length, equals(1));
    });

    test('INTERGROWTH Preterm & Fetal Trajectory', () {
      final intergrowthPreterm =
          GrowthTrajectory.intergrowthPretermPostnatalWeight(
            sex: sex,
            dateOfBirth: dob,
            visits: [
              VisitObservation(
                Date(year: 2023, month: Months.january, date: 20),
                const Mass$Kilogram(1.4),
              ),
            ],
          );
      expect(intergrowthPreterm.length, equals(1));
    });
  });
}
