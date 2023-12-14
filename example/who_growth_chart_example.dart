// ignore_for_file: avoid_print

import 'package:who_growth_standards/who_growth_standards.dart';

final birthDay = DateTime(2022, 6, 30);
const weight = 11.5;
const length = 80;

const centimeters = Centimeters(length);
const kilograms = Kilograms(weight);
final age = Age.byBirthDay(birthDay);

final heightData = LengthForAgeData();
final weightData = WeightForAgeData();
final weigthForLengthData = WeigthForLengthData();
final bodyMassIndexData = BodyMassIndexForAgeData();

void main() {
  // Demonstrating adjusted zscore calculation
  final calcLengthForAgeStanding = LengthForAge.maleStandingPosition(
    age: age,
    height: centimeters,
    lengthForAgeData: heightData,
  );
  print(calcLengthForAgeStanding.zScore);
  print(calcLengthForAgeStanding.percentile);

  final calcLengthForAgeRecumbent = LengthForAge.maleRecumbentPosition(
    age: age,
    length: centimeters,
    lengthForAgeData: heightData,
  );
  print(calcLengthForAgeRecumbent.zScore);
  print(calcLengthForAgeRecumbent.percentile);

  final calcWeigthForAge = WeightForAge.male(
    age: age,
    weight: kilograms,
    weightForAgeData: weightData,
  );
  print(calcWeigthForAge.zScore);
  print(calcWeigthForAge.percentile);

  final calcWeigthForLength = WeigthForLength.maleRecumbentPosition(
    length: centimeters,
    weight: kilograms,
    weigthForLengthData: weigthForLengthData,
    age: age,
  );
  print(calcWeigthForLength.zScore);
  print(calcWeigthForLength.percentile);

  final calcBMIForAge = BodyMassIndexForAge.male(
    bodyMassIndexMeasurement: BodyMassIndexMeasurement.recumbentPosition(
      length: centimeters,
      weight: kilograms,
      age: age,
    ),
    bodyMassIndexData: bodyMassIndexData,
  );

  print(calcBMIForAge.zScore);
  print(calcBMIForAge.percentile);
}
