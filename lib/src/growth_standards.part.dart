part of 'growth_standards.dart';

/// Global entry for another way of accessing various growth standard
class GrowthStandard {
  /// Accessing WHO Growth Standard
  ///
  /// From birth to 18 years old
  static _WHO get who => _WHO();

  /// Accessing CDC growth Standard
  ///
  /// From birth to 20 years old
  static _CDC get cdc => _CDC();

  /// Accessing Fenton growth standard
  ///
  /// For preterm infant
  static Fenton get fenton => Fenton();

  /// For survey
  ///
  // static Survey get survey => Survey();
}

class _WHO {
  /// For age 0 to 5 years old (<= 1856 days)
  WHOGrowthStandard get fromBirthTo5Years => WHOGrowthStandard();

  /// For age 5 to 18 years old (> 1856 days)
  WHOGrowthReference get from5YearsAndAbove => WHOGrowthReference();
}

class _CDC {
  /// For age 2 years and above
  CDCGrowthStandardFromTwoYearsOldAndAbove get from2YearsAndAbove =>
      CDCGrowthStandardFromTwoYearsOldAndAbove();

  /// From birth to 36 months
  CDCGrowthStandardFromBirthTo36Months get fromBirthTo36Months =>
      CDCGrowthStandardFromBirthTo36Months();
}
