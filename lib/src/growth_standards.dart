import 'package:growth_standards/src/cdc/cdc.dart';
import 'package:growth_standards/src/fenton/fenton.dart';
import 'package:growth_standards/src/who/who.dart';

export 'cdc/cdc.dart'
    show
        CDCBodyMassIndexForAge,
        CDCBodyMassIndexForAgeData,
        CDCBodyMassIndexMeasurement,
        CDCInfantHeadCircumferenceForAge,
        CDCInfantHeadCircumferenceForAgeData,
        CDCInfantLengthForAge,
        CDCInfantLengthForAgeData,
        CDCInfantWeightForAge,
        CDCInfantWeightForAgeData,
        CDCInfantWeigthForLength,
        CDCInfantWeigthForLengthData,
        CDCStatureForAge,
        CDCStatureForAgeData,
        CDCWeightForAge,
        CDCWeightForAgeData,
        CDCWeigthForStature,
        CDCWeigthForStatureData;
export 'common/model/age.dart' show Age, Date;
export 'common/model/bmi.dart' show BodyMassIndex;
export 'common/types.dart'
    show
        LengthHeigthMeasurementPosition,
        Months,
        PercentileValue,
        Sex,
        ZScoreValue;
export 'fenton/fenton.dart'
    show
        FentonHeadCircumferenceForAge,
        FentonHeadCircumferenceForAgeData,
        FentonLengthForAge,
        FentonLengthForAgeData,
        FentonWeightForAge,
        FentonWeightForAgeData;
export 'who/reference/reference.dart'
    show
        WHOGrowthReferenceBodyMassIndexForAge,
        WHOGrowthReferenceBodyMassIndexForAgeData,
        WHOGrowthReferenceBodyMassIndexMeasurement,
        WHOGrowthReferenceHeightForAge,
        WHOGrowthReferenceHeightForAgeData,
        WHOGrowthReferenceWeightForAge,
        WHOGrowthReferenceWeightForAgeData;
export 'who/standard/standard.dart'
    show
        WHOGrowthStandardsArmCircumferenceForAge,
        WHOGrowthStandardsArmCircumferenceForAgeData,
        WHOGrowthStandardsBodyMassIndexForAge,
        WHOGrowthStandardsBodyMassIndexForAgeData,
        WHOGrowthStandardsBodyMassIndexMeasurement,
        WHOGrowthStandardsHeadCircumferenceForAge,
        WHOGrowthStandardsHeadCircumferenceForAgeData,
        WHOGrowthStandardsLengthForAge,
        WHOGrowthStandardsLengthForAgeData,
        WHOGrowthStandardsSubscapularSkinfoldForAge,
        WHOGrowthStandardsSubscapularSkinfoldForAgeData,
        WHOGrowthStandardsTricepsSkinfoldForAge,
        WHOGrowthStandardsTricepsSkinfoldForAgeData,
        WHOGrowthStandardsWeightForAge,
        WHOGrowthStandardsWeightForAgeData,
        WHOGrowthStandardsWeightForHeight,
        WHOGrowthStandardsWeightForHeightData,
        WHOGrowthStandardsWeigthForLength,
        WHOGrowthStandardsWeigthForLengthData;

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
