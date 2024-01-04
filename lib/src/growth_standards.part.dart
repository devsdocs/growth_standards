part of 'growth_standards.dart';

class GrowthStandard {
  static _WHO get who => _WHO();
  static _CDC get cdc => _CDC();
  static Fenton get fenton => Fenton();
}

class _WHO {
  /// For age 0 to 5 years old (<= 1856 days)
  WHOGrowthStandard get fromBirthTo5Years => WHOGrowthStandard();

  /// For age 5 to 18 years old (> 1856 days)
  WHOGrowthReference get from5YearsAndAbove => WHOGrowthReference();
}

class _CDC {
  CDCGrowthStandardFromTwoYearsOldAndAbove get from2YearsAndAbove =>
      CDCGrowthStandardFromTwoYearsOldAndAbove();

  CDCGrowthStandardFromBirthTo36Months get fromBirthTo36Months =>
      CDCGrowthStandardFromBirthTo36Months();
}
