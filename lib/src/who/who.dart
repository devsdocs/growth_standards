import 'package:super_measurement/super_measurement.dart';
import 'package:who_growth_standards/src/age.dart';
import 'package:who_growth_standards/src/model/arm_circumference_for_age.dart';
import 'package:who_growth_standards/src/model/body_mass_index_for_age.dart';
import 'package:who_growth_standards/src/model/head_circumference_for_age.dart';
import 'package:who_growth_standards/src/model/length_for_age.dart';
import 'package:who_growth_standards/src/model/subscapular_skinfold_for_age.dart';
import 'package:who_growth_standards/src/model/triceps_skinfold_for_age.dart';
import 'package:who_growth_standards/src/model/weight_for_age.dart';
import 'package:who_growth_standards/src/model/weight_for_height.dart';
import 'package:who_growth_standards/src/model/weight_for_length.dart';
import 'package:who_growth_standards/src/types.dart';

part 'standard.dart';
part 'reference.dart';

final class WHO {
  /// For age 0 to 5 years old (max at 60 months)
  static _WHOGrowthStandard get growthStandard => _WHOGrowthStandard();

  /// For age 5 to 18 years old (start with 61 months)
  static _WHOGrowthReference get growthReference => _WHOGrowthReference();
}

final class _WHOGrowthStandard {
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

final class _WHOGrowthReference {}
