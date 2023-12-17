// // ignore_for_file: avoid_print

// import 'package:growth_standards/growth_standards.dart';

// final birthDay = Date(year: 2022, month: Months.june, date: 30);
// const weight = 11.5;
// const length = 80;

// const centimeters = Centimeters(length);
// const kilograms = Kilograms(weight);
// final age = Age.byDate(birthDay);

// final gs = GrowthStandard.whoGrowthStandard;

// final heightData = gs.lengthForAge.data;
// final weightData = gs.weightForAge.data;
// final weigthForLengthData = gs.weightForLength.data;
// final bodyMassIndexData = gs.bodyMassIndexForAge;

// void main() {
//   print(
//     'Age: ${age.yearsMonthsDaysOfAge.years} Years, ${age.yearsMonthsDaysOfAge.months} Months, ${age.yearsMonthsDaysOfAge.days} Days, with total ${age.ageInTotalMonthsByNow} in Months or ${age.ageInTotalDaysByNow} in Days',
//   );
//   // Demonstrating adjusted zscore calculation
//   final calcLengthForAgeStanding = gs.lengthForAge(
//     age: age,
//     height: centimeters,
//     lengthForAgeData: heightData,
//   );
//   print(calcLengthForAgeStanding.zScore);
//   print(calcLengthForAgeStanding.percentile);

//   final calcLengthForAgeRecumbent = gs.lengthForAge(
//     age: age,
//     length: centimeters,
//     lengthForAgeData: heightData,
//   );
//   print(calcLengthForAgeRecumbent.zScore);
//   print(calcLengthForAgeRecumbent.percentile);

//   final calcWeigthForAge = gs.weightForAge(
//     age: age,
//     weight: kilograms,
//     weightForAgeData: weightData,
//   );
//   print(calcWeigthForAge.zScore);
//   print(calcWeigthForAge.percentile);

//   final calcWeigthForLength = gs.weightForLength(
//     length: centimeters,
//     weight: kilograms,
//     weigthForLengthData: weigthForLengthData,
//     age: age,
//   );
//   print(calcWeigthForLength.zScore);
//   print(calcWeigthForLength.percentile);

//   final calcBMIForAge = gs.bodyMassIndexForAge(
//     bodyMassIndexMeasurement:
//         gs.bodyMassIndexForAge.withRecumbentPosition(
//       length: centimeters,
//       weight: kilograms,
//       age: age,
//     ),
//     bodyMassIndexData: bodyMassIndexData,
//   );

//   print(calcBMIForAge.zScore);
//   print(calcBMIForAge.percentile);
// }
