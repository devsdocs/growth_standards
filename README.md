
# Various Growth Standards implementation in Dart

[![pub package](https://img.shields.io/pub/v/growth_standards)](https://pub.dev/packages/growth_standards)

## Example below

``` dart
import 'dart:convert';

import 'package:growth_standards/growth_standards.dart';

final birthDay = Date(year: 2022, month: Months.june, date: 30);
const weight = Mass$Kilogram(12.1);
const length = Length$Centimeter(82);

final age = Age.byDate(birthDay);
final gs = GrowthStandard.who.fromBirthTo5Years;
const sex = Sex.male;

void main() {
  print(
    'Age: ${age.yearsMonthsDaysOfAge.years} Years, ${age.yearsMonthsDaysOfAge.months} Months, ${age.yearsMonthsDaysOfAge.days} Days',
  );

  // WHO Length-for-Age
  final calcLengthForAgeStanding = gs.lengthForAge(
    age: age,
    lengthHeight: length,
    sex: sex,
    measure: LengthHeightMeasurementPosition.standing,
  );
  print('Length-for-age Z-Score: ${calcLengthForAgeStanding.zScore(Precision.two)}');
  print('Length-for-age Percentile: ${calcLengthForAgeStanding.percentile(Precision.two)}');

  // WHO Weight-for-Age
  final calcWeightForAge = gs.weightForAge(
    age: age,
    weight: weight,
    sex: sex,
  );
  print('Weight-for-age Z-Score: ${calcWeightForAge.zScore(Precision.two)}');

  // Fenton 2013 Preterm Growth Chart (sex-specific LMS)
  final fentonWeight = GrowthStandard.fenton.weightForAge(
    sex: Sex.male,
    age: const PostmenstrualAge.completedWeeks(32),
    weight: const Mass$Kilogram(1.88),
  );
  print('Fenton 32w Weight Z-Score: ${fentonWeight.zScore()}');
}
```
### For updated example and usage check the test files (`test/golden_vectors_test.dart`, `test/edge_cases_test.dart`)

### Hello amazing community! 🌟 I'm passionate about creating innovative solutions with Dart programming, and I've poured my heart into this project. Your support can help take this project to new heights. By contributing, you're not just donating; you're investing in the future of this valuable tool.

### Every dollar makes a difference and allows me to dedicate more time and resources to improving and maintaining the project. Your generosity enables the continued growth and success of this open-source endeavor.

### Please consider making a donation today. Together, we can make a positive impact on the developer community and beyond. Thank you for being a crucial part of this journey! 🚀

### [GitHub Sponsor](https://github.com/sponsors/devsdocs) or [Ko-Fi](https://ko-fi.com/devsdocs)