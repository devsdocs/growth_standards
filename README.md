
# Various Growth Standards implementation in Dart

## Example below

``` dart
import 'dart:convert';

import 'package:growth_standards/growth_standards.dart';

final birthDay = Date(year: 2022, month: Months.june, date: 30);
const weight = 12.1;
const length = 82;

const centimeters = Centimeters(length);
const kilograms = Kilograms(weight);
final age = Age.byDate(birthDay);

final gs = GrowthStandard.whoGrowthStandard;
final gsFromJson = gs.fromJson;
const sex = Sex.male;

void main() {
  print(
    'Age: ${age.yearsMonthsDaysOfAge.years} Years, ${age.yearsMonthsDaysOfAge.months} Months, ${age.yearsMonthsDaysOfAge.days} Days, with total ${age.ageInTotalMonthsByNow} in Months or ${age.ageInTotalDaysByNow} in Days',
  );
  // Demonstrating adjusted zscore calculation
  final calcLengthForAgeStanding = gs.lengthForAge(
    age: age,
    lengthHeight: centimeters,
    sex: sex,
    measure: LengthHeigthMeasurementPosition.standing,
  );
  print(calcLengthForAgeStanding.zScore(Precision.two));
  print(calcLengthForAgeStanding.percentile(Precision.two));
  final encode = json.encode(calcLengthForAgeStanding.toJson());
  print(encode);
  print(gsFromJson.lengthForAge(json.encode(encode) as Map<String, dynamic>));

  final calcLengthForAgeRecumbent = calcLengthForAgeStanding.copyWith(
    measure: LengthHeigthMeasurementPosition.recumbent,
  );
  print(calcLengthForAgeRecumbent.zScore(Precision.two));
  print(calcLengthForAgeRecumbent.percentile(Precision.two));
  print(json.encode(calcLengthForAgeRecumbent.toJson()));

  final calcWeigthForAge = gs.weightForAge(
    age: age,
    weight: kilograms,
    sex: sex,
  );
  print(calcWeigthForAge.zScore(Precision.two));
  print(calcWeigthForAge.percentile(Precision.two));
  print(json.encode(calcWeigthForAge.toJson()));

  final calcWeigthForLength = gs.weightForLength(
    lengthMeasurementResult: centimeters,
    massMeasurementResult: kilograms,
    sex: sex,
    age: age,
    measure: LengthHeigthMeasurementPosition.recumbent,
  );
  print(calcWeigthForLength.zScore(Precision.two));
  print(calcWeigthForLength.percentile(Precision.two));
  print(json.encode(calcWeigthForLength.toJson()));

  final calcBMIForAge = gs.bodyMassIndexForAge(
    bodyMassIndexMeasurement: BodyMassIndexMeasurement.fromMeasurement(
      measure: LengthHeigthMeasurementPosition.recumbent,
      lengthHeight: centimeters,
      weight: kilograms,
      age: age,
    ),
    sex: sex,
  );

  print(calcBMIForAge.zScore(Precision.two));
  print(calcBMIForAge.percentile(Precision.two));
  print(json.encode(calcBMIForAge.toJson()));
}
```


"Hello amazing community! 🌟 I'm passionate about creating innovative solutions with Dart programming, and I've poured my heart into this project. Your support can help take this project to new heights. By contributing, you're not just donating; you're investing in the future of this valuable tool.

Every dollar makes a difference and allows me to dedicate more time and resources to improving and maintaining the project. Your generosity enables the continued growth and success of this open-source endeavor.

Please consider making a donation today. Together, we can make a positive impact on the developer community and beyond. Thank you for being a crucial part of this journey! 🚀

[GitHub Sponsor](https://github.com/sponsors/devsdocs) or [Ko-Fi](https://ko-fi.com/devsdocs)