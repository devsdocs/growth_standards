// ignore_for_file: avoid_print

import 'package:growth_standards/growth_standards.dart';

void main() {
  print('====================================================');
  print(' Longitudinal Child Trajectory Tracking (GrowthTrajectory)');
  print('====================================================\n');

  final dob = Date(year: 2023, month: Months.january, date: 15);
  const sex = Sex.female;

  // Initialize trajectory helper for WHO Weight-for-Age
  final trajectory = GrowthTrajectory.whoWeightForAge(
    sex: sex,
    dateOfBirth: dob,
    visits: [
      VisitObservation(
        Date(year: 2023, month: Months.january, date: 15),
        Mass$Kilogram(3.2),
      ),
      VisitObservation(
        Date(year: 2023, month: Months.april, date: 15),
        Mass$Kilogram(5.8),
      ),
      VisitObservation(
        Date(year: 2023, month: Months.july, date: 15),
        Mass$Kilogram(7.4),
      ),
      VisitObservation(
        Date(year: 2023, month: Months.october, date: 15),
        Mass$Kilogram(8.6),
      ),
      VisitObservation(
        Date(year: 2024, month: Months.january, date: 15),
        Mass$Kilogram(9.5),
      ),
    ],
  );

  // Dynamically add a 18-month visit observation:
  final latestVisitResult = trajectory.add(
    Date(year: 2024, month: Months.july, date: 15),
    Mass$Kilogram(10.8),
  );

  print('Patient: Female | DOB: 2023-01-15');
  print('Visits Recorded: ${trajectory.length}');
  print('18-Month Visit Z-Score: ${latestVisitResult.zScore()} SD');

  print('\nVisits Breakdown:');
  for (var i = 0; i < trajectory.results.length; i++) {
    final r = trajectory.results[i];
    print(
      '  Visit ${i + 1}: Z-Score = ${r.zScore()} SD | Percentile = ${r.percentile()}%',
    );
  }

  print('\nExporting Trajectory SVG graphic...');
  trajectory.saveSvg('doc/samples/patient_longitudinal_trajectory.svg');
  print('Saved trajectory chart to doc/samples/');
}
