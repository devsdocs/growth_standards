// ignore_for_file: avoid_print

import 'dart:convert';

import 'package:growth_standards/growth_standards.dart';
import 'package:reusable_tools/reusable_tools.dart';

final birthDay = Date(year: 2022, month: Months.june, date: 30);
const weight = 11.5;
const length = 80;

const centimeters = Centimeters(length);
const kilograms = Kilograms(weight);
final age = Age.byDate(birthDay);

final gs = GrowthStandard.whoGrowthStandard;
final gsFromJson = GrowthStandard.whoGrowthStandard.fromJson;
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
  print(calcLengthForAgeStanding.zScore);
  print(calcLengthForAgeStanding.percentile);
  final encode = json.encode(calcLengthForAgeStanding.toJson());
  print(encode);
  print(gsFromJson.lengthForAge(encode.toJsonObjectAsMap));

  final calcLengthForAgeRecumbent = calcLengthForAgeStanding.copyWith(
    measure: LengthHeigthMeasurementPosition.recumbent,
  );
  print(calcLengthForAgeRecumbent.zScore);
  print(calcLengthForAgeRecumbent.percentile);
  print(json.encode(calcLengthForAgeRecumbent.toJson()));

  final calcWeigthForAge = gs.weightForAge(
    age: age,
    weight: kilograms,
    sex: sex,
  );
  print(calcWeigthForAge.zScore);
  print(calcWeigthForAge.percentile);
  print(json.encode(calcWeigthForAge.toJson()));

  final calcWeigthForLength = gs.weightForLength(
    lengthMeasurementResult: centimeters,
    massMeasurementResult: kilograms,
    sex: sex,
    age: age,
    measure: LengthHeigthMeasurementPosition.recumbent,
  );
  print(calcWeigthForLength.zScore);
  print(calcWeigthForLength.percentile);
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

  print(calcBMIForAge.zScore);
  print(calcBMIForAge.percentile);
  print(json.encode(calcBMIForAge.toJson()));
}
