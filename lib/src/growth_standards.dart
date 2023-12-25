import 'package:growth_standards/src/who/who.dart';

export 'common/model/age.dart' show Age, Date;
export 'common/types.dart' show LengthHeigthMeasurementPosition, Months, Sex;
export 'who/reference/reference.dart'
    show
        GrowthReferenceBodyMassIndexForAge,
        GrowthReferenceBodyMassIndexForAgeData,
        GrowthReferenceBodyMassIndexMeasurement,
        GrowthReferenceHeightForAge,
        GrowthReferenceHeightForAgeData,
        GrowthReferenceWeightForAge,
        GrowthReferenceWeightForAgeData;

export 'who/standard/standard.dart'
    show
        ArmCircumferenceForAge,
        ArmCircumferenceForAgeData,
        BodyMassIndexForAge,
        BodyMassIndexForAgeData,
        BodyMassIndexMeasurement,
        HeadCircumferenceForAge,
        HeadCircumferenceForAgeData,
        LengthForAge,
        LengthForAgeData,
        SubscapularSkinfoldForAge,
        SubscapularSkinfoldForAgeData,
        TricepsSkinfoldForAge,
        TricepsSkinfoldForAgeData,
        WeightForAge,
        WeightForAgeData,
        WeightForHeight,
        WeightForHeightData,
        WeigthForLength,
        WeigthForLengthData;

final class GrowthStandard {
  /// For age 0 to 5 years old (<= 1856 days)
  static WHOGrowthStandard get whoGrowthStandard => WHOGrowthStandard();

  /// For age 5 to 18 years old (> 1856 days)
  static WHOGrowthReference get whoGrowthReference => WHOGrowthReference();
}
