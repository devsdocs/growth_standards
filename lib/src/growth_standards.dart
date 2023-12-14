import 'package:growth_standards/src/who/who.dart';

export 'common/age.dart';
export 'common/types.dart' show LengthHeigthMeasurementPosition, Months, Sex;

final class GrowthStandard {
  /// For age 0 to 5 years old (max at 60 months)
  static WHOGrowthStandard get whoGrowthStandard => WHOGrowthStandard();

  /// For age 5 to 18 years old (start with 61 months)
  static WHOGrowthReference get whoGrowthReference => WHOGrowthReference();
}
