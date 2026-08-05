// ignore_for_file: avoid_print

import 'dart:io';
import 'package:growth_standards/growth_standards.dart';
import 'package:test/test.dart';

void main() {
  test('Generate Sample Growth Chart Files for Visual Inspection', () {
    final outputDir = Directory('doc/samples');
    if (!outputDir.existsSync()) {
      outputDir.createSync(recursive: true);
    }

    final gs = GrowthStandard.who.fromBirthTo5Years;

    // 1. WHO Weight-for-Age (Boy, 2 Years Old)
    final wfaBoy = gs.weightForAge(
      age: Age(Date(year: 2022, month: Months.june, date: 30)),
      weight: Mass$Kilogram(12.5),
      sex: Sex.male,
    );
    wfaBoy.saveSvg('${outputDir.path}/who_weight_for_age_boy.svg');

    // 2. WHO Length-for-Age (Girl, 1 Year Old)
    final lfaGirl = gs.lengthForAge(
      age: Age(Date(year: 2023, month: Months.june, date: 30)),
      lengthHeight: Length$Centimeter(75.5),
      sex: Sex.female,
      measure: LengthHeightMeasurementPosition.recumbent,
    );
    lfaGirl.saveSvg('${outputDir.path}/who_length_for_age_girl.svg');

    // 3. CDC Weight-for-Age (Boy, 8 Years Old) in Percentile Mode
    final cdcGs = GrowthStandard.cdc.from2YearsAndAbove;
    final cdcWfaBoy = cdcGs.weightForAge(
      sex: Sex.male,
      age: Age(Date(year: 2018, month: Months.june, date: 1)),
      weight: Mass$Kilogram(26.5),
    );
    const cdcConfig = GrowthChartConfig(
      displayMode: GrowthChartDisplayMode.percentile,
      title: 'CDC Weight-for-Age (Boy, 8 Years)',
    );
    cdcWfaBoy.saveSvg(
      '${outputDir.path}/cdc_weight_for_age_boy.svg',
      config: cdcConfig,
    );

    // 4. Fenton Preterm Weight-for-Age (Girl, 34 Weeks PMA)
    final fentonWfa = GrowthStandard.fenton.weightForAge(
      sex: Sex.female,
      age: const PostmenstrualAge(weeks: 34),
      weight: Mass$Kilogram(2.1),
    );
    fentonWfa.saveSvg('${outputDir.path}/fenton_weight_for_age_girl.svg');

    // 4b. Fenton Preterm Weight-for-Age (Boy, 40 Weeks PMA) in Percentile Mode
    final fentonWfaBoy = GrowthStandard.fenton.weightForAge(
      sex: Sex.male,
      age: const PostmenstrualAge(weeks: 40),
      weight: Mass$Kilogram(3.2),
    );
    const fentonConfig = GrowthChartConfig(
      displayMode: GrowthChartDisplayMode.percentile,
      title: 'Fenton Weight-for-Age (Boy, 40 Weeks)',
    );
    fentonWfaBoy.saveSvg(
      '${outputDir.path}/fenton_weight_for_age_boy_percentile.svg',
      config: fentonConfig,
    );

    // 5. Longitudinal Trajectory using GrowthTrajectory API (Boy, Birth to 24 Months)
    final trajectory = GrowthTrajectory.whoWeightForAge(
      sex: Sex.male,
      dateOfBirth: Date(year: 2022, month: Months.june, date: 30),
      visits: [
        VisitObservation(
          Date(year: 2022, month: Months.june, date: 30),
          Mass$Kilogram(3.4),
        ),
        VisitObservation(
          Date(year: 2022, month: Months.september, date: 30),
          Mass$Kilogram(6.4),
        ),
        VisitObservation(
          Date(year: 2022, month: Months.december, date: 30),
          Mass$Kilogram(7.9),
        ),
        VisitObservation(
          Date(year: 2023, month: Months.june, date: 30),
          Mass$Kilogram(9.6),
        ),
        VisitObservation(
          Date(year: 2024, month: Months.june, date: 30),
          Mass$Kilogram(12.2),
        ),
      ],
    );
    trajectory.saveSvg('${outputDir.path}/who_longitudinal_trajectory.svg');

    // 6. WHO Weight Velocity (Boy, 2-Month Increment, 4 to 6 Months)
    final velocityAge = Age.byMonthsAgo(6);
    final msr1 = MassMeasurementHistory(
      velocityAge.dateAtMonthsAfterBirth(4),
      Mass$Kilogram(6.4),
    );
    final msr2 = MassMeasurementHistory(
      velocityAge.dateAtMonthsAfterBirth(6),
      Mass$Kilogram(7.9),
    );

    final velocityResult = gs.weightVelocityForAge(
      age: velocityAge,
      sex: Sex.male,
      pastMeasurement: [msr1, msr2],
    );
    velocityResult.saveSvg('${outputDir.path}/who_weight_velocity_boy.svg');

    // Verify all 6 sample SVG files were created
    final files = outputDir.listSync();
    expect(files.length, greaterThanOrEqualTo(7));
    print(
      '\nSuccessfully generated ${files.length} sample chart files in ${outputDir.path}:',
    );
    for (final f in files) {
      print('  - ${f.path}');
    }
  });
}
