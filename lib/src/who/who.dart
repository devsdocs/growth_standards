import 'package:growth_standards/src/common/age.dart';
import 'package:growth_standards/src/common/types.dart';
import 'package:growth_standards/src/who/reference/reference.dart';
import 'package:growth_standards/src/who/standard/standard.dart';
import 'package:super_measurement/super_measurement.dart';

part 'reference.dart';
part 'standard.dart';

final class WHOGrowthStandard {
  _WHOGrowthStandardArmCircumference get armCircumferenceForAge =>
      _WHOGrowthStandardArmCircumference();
  _WHOGrowthStandardBodyMassIndex get bodyMassIndexForAge =>
      _WHOGrowthStandardBodyMassIndex();
  _WHOGrowthStandardHeadCircumference get headCircumferenceForAge =>
      _WHOGrowthStandardHeadCircumference();
  _WHOGrowthStandardLengthForAge get lengthForAge =>
      _WHOGrowthStandardLengthForAge();
  _WHOGrowthStandardSubscapularSkinfoldForAge get subscapularSkinfoldForAge =>
      _WHOGrowthStandardSubscapularSkinfoldForAge();
  _WHOGrowthStandardTricepsSkinfoldForAge get tricepsSkinfoldForAge =>
      _WHOGrowthStandardTricepsSkinfoldForAge();
  _WHOGrowthStandardWeightForAge get weightForAge =>
      _WHOGrowthStandardWeightForAge();
  _WHOGrowthStandardWeightForHeight get weightForHeight =>
      _WHOGrowthStandardWeightForHeight();
  _WHOGrowthStandardWeightForLength get weightForLength =>
      _WHOGrowthStandardWeightForLength();
}

final class WHOGrowthReference {
  _WHOGrowthReferenceBodyMassIndex get bodyMassIndexForAge =>
      _WHOGrowthReferenceBodyMassIndex();
  _WHOGrowthReferenceHeightForAge get lengthForAge =>
      _WHOGrowthReferenceHeightForAge();
  _WHOGrowthReferenceWeightForAge get weightForAge =>
      _WHOGrowthReferenceWeightForAge();
}
