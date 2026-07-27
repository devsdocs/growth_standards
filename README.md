# Growth Standards for Dart & Flutter

[![pub package](https://img.shields.io/pub/v/growth_standards)](https://pub.dev/packages/growth_standards)
[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](https://opensource.org/licenses/MIT)

A comprehensive, clinically accurate growth standards library for **Dart** and **Flutter**. Calculates exact Z-scores, percentiles, longitudinal growth trajectories, and WHO growth velocities with built-in **SVG vector** and **PNG image** growth chart rendering.

> 💡 **Looking for code samples?** Check out the [`example/`](./example/) directory for dedicated runnable scripts covering every growth measurement type.

---

## Supported Standards & Measurement Types

| Standard Category | Age / Target Range | Measurement Types Supported |
| :--- | :--- | :--- |
| **WHO Child Growth Standards** | 0 to 5 Years (0–1856d) | Weight-for-Age, Length-for-Age, Weight-for-Length, Weight-for-Height, BMI-for-Age, Head Circumference, Arm Circumference (MUAC), Subscapular Skinfold, Triceps Skinfold |
| **WHO Growth Reference** | 5 to 18 Years | Height-for-Age (5-18y), Weight-for-Age (5-10y), BMI-for-Age (5-18y) |
| **WHO Growth Velocity** | 0 to 2 Years | Weight Velocity, Length Velocity, Head Circumference Velocity (1, 2, 3, 4 & 6-month increments) |
| **CDC Clinical Growth Charts** | 2 to 20 Years & Infant 0-36m | Weight-for-Age, Stature-for-Age, BMI-for-Age, Infant Weight, Infant Length, Infant Head Circumference, Weight-for-Stature |
| **Fenton Preterm Standards** | 22 to 50 Weeks PMA | Preterm Weight-for-Age, Preterm Length-for-Age, Preterm Head Circumference-for-Age |
| **INTERGROWTH-21st** | Perinatal & Fetal | Early Pregnancy CRL Dating, Fetal CRL, Fetal AC, Fetal BPD, Fetal FL, Fetal HC, Newborn Size at Birth, Postnatal Preterm Growth |

---

## Code Examples

### 1. Basic Z-Score & Percentile Calculation

```dart
import 'package:growth_standards/growth_standards.dart';

void main() {
  final dob = Date(year: 2023, month: Months.june, date: 15);
  final infantAge = Age(dob, observedDate: Date(year: 2024, month: Months.june, date: 15));

  // WHO Weight-for-Age (Boy, 1 Year Old)
  final result = GrowthStandard.who.fromBirthTo5Years.weightForAge(
    sex: Sex.male,
    age: infantAge,
    weight: const Mass$Kilogram(10.2),
  );

  print('Z-Score: ${result.zScore()} SD');      // e.g. +0.5 SD
  print('Percentile: ${result.percentile()}%');  // e.g. 69.3%

  // Render directly to SVG vector or PNG image file
  result.saveSvg('who_weight_for_age_boy.svg');
  result.savePng('who_weight_for_age_boy.png');
}
```

---

### 2. Longitudinal Trajectory Tracking (`GrowthTrajectory`)

Set patient demographics (**Sex** & **DOB**) **once**, then record clinical visit observations over time:

```dart
import 'package:growth_standards/growth_standards.dart';

void main() {
  // Initialize trajectory helper with child demographics ONCE
  final trajectory = GrowthTrajectory.whoWeightForAge(
    sex: Sex.female,
    dateOfBirth: Date(year: 2023, month: Months.january, date: 15),
  );

  // Append visit observations (visit date + measurement)
  trajectory.add(Date(year: 2023, month: Months.january, date: 15), const Mass$Kilogram(3.2));
  trajectory.add(Date(year: 2023, month: Months.april, date: 15), const Mass$Kilogram(5.8));
  trajectory.add(Date(year: 2023, month: Months.july, date: 15), const Mass$Kilogram(7.4));
  trajectory.add(Date(year: 2024, month: Months.january, date: 15), const Mass$Kilogram(9.5));

  // Access trajectory analytics
  print('Total Visits Tracked: ${trajectory.length}');
  print('Z-Scores Over Time: ${trajectory.zScores}');
  print('Percentiles Over Time: ${trajectory.percentiles}');
  print('Latest Result: ${trajectory.latestResult?.zScore()} SD');

  // Export full multi-point trajectory growth chart graphic
  trajectory.saveSvg('patient_trajectory.svg');
  trajectory.savePng('patient_trajectory.png');
}
```

#### Trajectory Constructors Available Across Standards

| Standard | Trajectory Constructors Available |
| :--- | :--- |
| **WHO 0–5y** | `GrowthTrajectory.whoWeightForAge`, `whoLengthForAge`, `whoWeightForLength`, `whoWeightForHeight`, `whoBmiForAge`, `whoHeadCircumferenceForAge`, `whoArmCircumferenceForAge`, `whoSubscapularSkinfoldForAge`, `whoTricepsSkinfoldForAge` |
| **WHO 5–18y** | `GrowthTrajectory.who5To18HeightForAge`, `who5To10WeightForAge`, `who5To18BmiForAge` |
| **CDC 2–20y** | `GrowthTrajectory.cdcWeightForAge`, `cdcStatureForAge`, `cdcBmiForAge` |
| **CDC 0–36m** | `GrowthTrajectory.cdcInfantWeightForAge`, `cdcInfantLengthForAge`, `cdcInfantHeadCircumferenceForAge` |
| **Fenton Preterm** | `GrowthTrajectory.fentonWeightForAge`, `fentonLengthForAge`, `fentonHeadCircumferenceForAge` |
| **INTERGROWTH** | `GrowthTrajectory.intergrowthPretermPostnatalWeight`, `intergrowthPretermPostnatalLength`, `intergrowthPretermPostnatalHeadCircumference`, `intergrowthFetalAbdominalCircumference`, `intergrowthFetalFemurLength`, `intergrowthFetalHeadCircumference`, `intergrowthFetalBiparietalDiameter` |

---

### 3. WHO Growth Velocity Calculation & Chart Export

```dart
import 'package:growth_standards/growth_standards.dart';

void main() {
  final age = Age.byMonthsAgo(6);
  final msr1 = MassMeasurementHistory(age.dateAtMonthsAfterBirth(4), const Mass$Kilogram(6.4));
  final msr2 = MassMeasurementHistory(age.dateAtMonthsAfterBirth(6), const Mass$Kilogram(7.9));

  final velocityResult = GrowthStandard.who.fromBirthTo5Years.weightVelocityForAge(
    sex: Sex.male,
    age: age,
    pastMeasurement: [msr1, msr2],
  );

  // Render velocity chart graphic
  velocityResult.saveSvg('who_weight_velocity.svg');
  velocityResult.savePng('who_weight_velocity.png');
}
```

---

### 4. Customizing Growth Chart Styling & Options

```dart
import 'package:growth_standards/growth_standards.dart';

void main() {
  final cdcWfa = GrowthStandard.cdc.from2YearsAndAbove.weightForAge(
    sex: Sex.female,
    age: Age(Date(year: 2016, month: Months.june, date: 1), observedDate: Date(year: 2024, month: Months.june, date: 1)),
    weight: const Mass$Kilogram(26.5),
  );

  // Customize chart display mode and theme
  final config = GrowthChartConfig(
    displayMode: GrowthChartDisplayMode.percentile, // Render Percentiles instead of Z-scores
    title: 'CDC Weight-for-Age Clinical Record (Girl, 8 Years)',
    showGridLines: true,
    showLegend: true,
    showResultCallout: true,
    theme: GrowthChartTheme.girl(),
  );

  cdcWfa.saveSvg('custom_cdc_chart.svg', config: config);
  cdcWfa.savePng('custom_cdc_chart.png', config: config);
}
```

---

## Runnable Example Scripts

Browse the [`example/`](./example/) folder for dedicated runnable examples for every growth standard:

- **[`example/who_standards_example.dart`](./example/who_standards_example.dart)**: All 12 WHO 0-5y & 5-18y growth standards.
- **[`example/who_velocity_example.dart`](./example/who_velocity_example.dart)**: WHO Weight, Length, and Head Circumference velocity gains.
- **[`example/cdc_standards_example.dart`](./example/cdc_standards_example.dart)**: CDC 2-20y & infant 0-36m growth charts.
- **[`example/fenton_preterm_example.dart`](./example/fenton_preterm_example.dart)**: Fenton 2013 Preterm growth charts (22-50w PMA).
- **[`example/intergrowth_fetal_example.dart`](./example/intergrowth_fetal_example.dart)**: INTERGROWTH-21st fetal ultrasound & dating standards.
- **[`example/growth_trajectory_example.dart`](./example/growth_trajectory_example.dart)**: Longitudinal child growth tracking with `GrowthTrajectory`.
- **[`example/example.dart`](./example/example.dart)**: High-level package summary example.

---

## Community & Support 🌟

I'm passionate about creating high-quality open-source medical tools for Dart and Flutter. Your support helps maintain and expand this package!

- [GitHub Sponsor](https://github.com/sponsors/devsdocs)
- [Ko-Fi](https://ko-fi.com/devsdocs)