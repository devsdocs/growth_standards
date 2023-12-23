
# Growth Standards implementation in Dart

## WIP Project, see test and example for usage

### WHO, CDC, INTERGROWTH-21, Fenton

## Usage

### WHO

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