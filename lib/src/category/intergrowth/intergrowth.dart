import 'dart:math' as math;

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:growth_standards/growth_standards.dart';
import 'package:growth_standards/src/common/extension.dart';
import 'package:growth_standards/src/common/model/age.dart';
import 'package:growth_standards/src/common/model/gestational_age.dart';
import 'package:growth_standards/src/common/tools.dart';
import 'package:super_measurement/super_measurement.dart';

part 'data/at_birth/newborn_size/grow_newborn_boys_bw.dart';
part 'data/at_birth/newborn_size/grow_newborn_boys_hc.dart';
part 'data/at_birth/newborn_size/grow_newborn_boys_lt.dart';
part 'data/at_birth/newborn_size/grow_newborn_girls_bw.dart';
part 'data/at_birth/newborn_size/grow_newborn_girls_hc.dart';
part 'data/at_birth/newborn_size/grow_newborn_girls_lt.dart';
part 'data/at_birth/newborn_size/grow_newborn_wlr_boys.dart';
part 'data/at_birth/newborn_size/grow_newborn_wlr_girls.dart';
part 'data/at_birth/newborn_size_for_very_preterm_infants/grow_verypreterm_boys_bw.dart';
part 'data/at_birth/newborn_size_for_very_preterm_infants/grow_verypreterm_boys_hc.dart';
part 'data/at_birth/newborn_size_for_very_preterm_infants/grow_verypreterm_boys_lt.dart';
part 'data/at_birth/newborn_size_for_very_preterm_infants/grow_verypreterm_girls_bw.dart';
part 'data/at_birth/newborn_size_for_very_preterm_infants/grow_verypreterm_girls_hc.dart';
part 'data/at_birth/newborn_size_for_very_preterm_infants/grow_verypreterm_girls_lt.dart';
part 'data/at_birth/newborn_size_for_very_preterm_infants/grow_verypreterm_wlr_boys.dart';
part 'data/at_birth/newborn_size_for_very_preterm_infants/grow_verypreterm_wlr_girls.dart';
part 'data/during_pregnancy/early_pregnancy_dating/grow_early_preg_charts_crl_dating.dart';
part 'data/during_pregnancy/fetal_growth/grow_fetal_ac.dart';
part 'data/during_pregnancy/fetal_growth/grow_fetal_bpd.dart';
part 'data/during_pregnancy/fetal_growth/grow_fetal_fl.dart';
part 'data/during_pregnancy/fetal_growth/grow_fetal_hc.dart';
part 'data/during_pregnancy/fetal_growth/grow_fetal_ofd.dart';
part 'data/during_pregnancy/fetal_size_in_early_pregnancy/grow_early_preg_charts_size.dart';
part 'data/during_pregnancy/gestational_weight_gain/grow_gwg_nw.dart';
part 'data/during_pregnancy/symphysisfundal_height/sfhcore_16to41.dart';
part 'data/postnatal/postnatal_growth_of_preterm_infants/grow_preterm_boys_bw.dart';
part 'data/postnatal/postnatal_growth_of_preterm_infants/grow_preterm_boys_hc.dart';
part 'data/postnatal/postnatal_growth_of_preterm_infants/grow_preterm_boys_lt.dart';
part 'data/postnatal/postnatal_growth_of_preterm_infants/grow_preterm_girls_bw.dart';
part 'data/postnatal/postnatal_growth_of_preterm_infants/grow_preterm_girls_hc.dart';
part 'data/postnatal/postnatal_growth_of_preterm_infants/grow_preterm_girls_lt.dart';
part 'intergrowth.freezed.dart';
part 'intergrowth.g.dart';
part 'model/at_birth/newborn_size/head_circumference.dart';
part 'model/at_birth/newborn_size/length.dart';
part 'model/at_birth/newborn_size/weight.dart';
part 'model/at_birth/newborn_size/weight_length_ratio.dart';
part 'model/at_birth/newborn_size_for_very_preterm_infants/head_circumference.dart';
part 'model/at_birth/newborn_size_for_very_preterm_infants/length.dart';
part 'model/at_birth/newborn_size_for_very_preterm_infants/weight.dart';
part 'model/at_birth/newborn_size_for_very_preterm_infants/weight_length_ratio.dart';
part 'model/during_pregnancy/early_pregnancy_dating/crl.dart';
part 'model/during_pregnancy/fetal_growth/abdominal_circumference.dart';
part 'model/during_pregnancy/fetal_growth/biparietal_diameter.dart';
part 'model/during_pregnancy/fetal_growth/estimated_fetal_weight.dart';
part 'model/during_pregnancy/fetal_growth/femur_length.dart';
part 'model/during_pregnancy/fetal_growth/head_circumference.dart';
part 'model/during_pregnancy/fetal_growth/occipitofrontal_diameter.dart';
part 'model/during_pregnancy/fetal_size_in_early_pregnancy/fetal_size_in_early_pregnancy.dart';
part 'model/during_pregnancy/gestational_weight_gain/gestational_weight_gain.dart';
part 'model/during_pregnancy/pregnancy_dating/pregnancy_dating.dart';
part 'model/during_pregnancy/symphysisfundal_height/symphysisfundal_height.dart';
part 'model/postnatal/postnatal_growth_of_preterm_infants/head_circumference.dart';
part 'model/postnatal/postnatal_growth_of_preterm_infants/length.dart';
part 'model/postnatal/postnatal_growth_of_preterm_infants/weight.dart';

class IntergrowthAtBirthData {
  IntergrowthNewbornBirthHeadCircumferenceForAgeData
  get newbornSizeHeadCircumferenceData =>
      IntergrowthNewbornBirthHeadCircumferenceForAgeData();

  IntergrowthNewbornBirthLengthForAgeData get newbornSizeLengthData =>
      IntergrowthNewbornBirthLengthForAgeData();

  IntergrowthNewbornBirthWeightForAgeData get newbornSizeWeightData =>
      IntergrowthNewbornBirthWeightForAgeData();

  IntergrowthNewbornBirthWeightForLengthRatioForAgeData
  get newbornSizeWeightLengthRatioData =>
      IntergrowthNewbornBirthWeightForLengthRatioForAgeData();

  IntergrowthVeryPretermNewbornBirthHeadCircumferenceForAgeData
  get veryPretermNewbornSizeHeadCircumferenceData =>
      IntergrowthVeryPretermNewbornBirthHeadCircumferenceForAgeData();

  IntergrowthVeryPretermNewbornBirthLengthForAgeData
  get veryPretermNewbornSizeLengthData =>
      IntergrowthVeryPretermNewbornBirthLengthForAgeData();

  IntergrowthVeryPretermNewbornBirthWeightForAgeData
  get veryPretermNewbornSizeWeightData =>
      IntergrowthVeryPretermNewbornBirthWeightForAgeData();

  IntergrowthVeryPretermNewbornBirthWeightForLengthRatioForAgeData
  get veryPretermNewbornSizeWeightLengthRatioData =>
      IntergrowthVeryPretermNewbornBirthWeightForLengthRatioForAgeData();
}

class IntergrowthAtBirthFromJson {
  IntergrowthNewbornBirthHeadCircumferenceForAge newbornSizeHeadCircumference(
    Map<String, dynamic> json,
  ) => IntergrowthNewbornBirthHeadCircumferenceForAge.fromJson(json);

  IntergrowthNewbornBirthLengthForAge newbornSizeLength(
    Map<String, dynamic> json,
  ) => IntergrowthNewbornBirthLengthForAge.fromJson(json);

  IntergrowthNewbornBirthWeightForAge newbornSizeWeight(
    Map<String, dynamic> json,
  ) => IntergrowthNewbornBirthWeightForAge.fromJson(json);

  IntergrowthNewbornBirthWeightForLengthRatioForAge
  newbornSizeWeightLengthRatio(Map<String, dynamic> json) =>
      IntergrowthNewbornBirthWeightForLengthRatioForAge.fromJson(json);

  IntergrowthVeryPretermNewbornBirthHeadCircumferenceForAge
  veryPretermNewbornSizeHeadCircumference(Map<String, dynamic> json) =>
      IntergrowthVeryPretermNewbornBirthHeadCircumferenceForAge.fromJson(json);

  IntergrowthVeryPretermNewbornBirthLengthForAge veryPretermNewbornSizeLength(
    Map<String, dynamic> json,
  ) => IntergrowthVeryPretermNewbornBirthLengthForAge.fromJson(json);

  IntergrowthVeryPretermNewbornBirthWeightForAge veryPretermNewbornSizeWeight(
    Map<String, dynamic> json,
  ) => IntergrowthVeryPretermNewbornBirthWeightForAge.fromJson(json);

  IntergrowthVeryPretermNewbornBirthWeightForLengthRatioForAge
  veryPretermNewbornSizeWeightLengthRatio(Map<String, dynamic> json) =>
      IntergrowthVeryPretermNewbornBirthWeightForLengthRatioForAge.fromJson(
        json,
      );
}

class IntergrowthAtBirth {
  /// Access all statistical data
  IntergrowthAtBirthData get data => IntergrowthAtBirthData();

  /// Access JSON deserialization
  IntergrowthAtBirthFromJson get fromJson => IntergrowthAtBirthFromJson();

  IntergrowthNewbornBirthHeadCircumferenceForAge newbornSizeHeadCircumference({
    required Sex sex,
    required GestationalAge gestationalAge,
    required Length measurementResult,
  }) => IntergrowthNewbornBirthHeadCircumferenceForAge(
    sex: sex,
    age: gestationalAge,
    measurementResult: measurementResult,
  );

  IntergrowthNewbornBirthLengthForAge newbornSizeLength({
    required Sex sex,
    required GestationalAge gestationalAge,
    required Length measurementResult,
  }) => IntergrowthNewbornBirthLengthForAge(
    sex: sex,
    age: gestationalAge,
    measurementResult: measurementResult,
  );

  IntergrowthNewbornBirthWeightForAge newbornSizeWeight({
    required Sex sex,
    required GestationalAge gestationalAge,
    required Mass weight,
  }) => IntergrowthNewbornBirthWeightForAge(
    sex: sex,
    age: gestationalAge,
    measurementResult: weight,
  );

  IntergrowthNewbornBirthWeightForLengthRatioForAge
  newbornSizeWeightLengthRatio({
    required Sex sex,
    required GestationalAge gestationalAge,
    required Mass weight,
    required Length length,
  }) => IntergrowthNewbornBirthWeightForLengthRatioForAge(
    sex: sex,
    age: gestationalAge,
    measurementResult: NewbornWeightLengthRatioMeasurement.fromMeasurement(
      weight: weight,
      length: length,
    ),
  );

  IntergrowthVeryPretermNewbornBirthHeadCircumferenceForAge
  veryPretermNewbornSizeHeadCircumference({
    required Sex sex,
    required GestationalAge gestationalAge,
    required Length measurementResult,
  }) => IntergrowthVeryPretermNewbornBirthHeadCircumferenceForAge(
    sex: sex,
    age: gestationalAge,
    measurementResult: measurementResult,
  );

  IntergrowthVeryPretermNewbornBirthLengthForAge veryPretermNewbornSizeLength({
    required Sex sex,
    required GestationalAge gestationalAge,
    required Length measurementResult,
  }) => IntergrowthVeryPretermNewbornBirthLengthForAge(
    sex: sex,
    age: gestationalAge,
    measurementResult: measurementResult,
  );

  IntergrowthVeryPretermNewbornBirthWeightForAge veryPretermNewbornSizeWeight({
    required Sex sex,
    required GestationalAge gestationalAge,
    required Mass weight,
  }) => IntergrowthVeryPretermNewbornBirthWeightForAge(
    sex: sex,
    age: gestationalAge,
    measurementResult: weight,
  );

  IntergrowthVeryPretermNewbornBirthWeightForLengthRatioForAge
  veryPretermNewbornSizeWeightLengthRatio({
    required Sex sex,
    required GestationalAge gestationalAge,
    required Mass weight,
    required Length length,
  }) => IntergrowthVeryPretermNewbornBirthWeightForLengthRatioForAge(
    sex: sex,
    age: gestationalAge,
    measurementResult: NewbornWeightLengthRatioMeasurement.fromMeasurement(
      weight: weight,
      length: length,
    ),
  );
}

class IntergrowthDuringPregnancyData {
  IntergrowthEarlyPregnancyDatingForCRLData get earlyPregnancyCRLData =>
      IntergrowthEarlyPregnancyDatingForCRLData();

  IntergrowthFetalGrowtAbdominalCircumferenceForAgeData
  get fetalAbdominalCircumferenceData =>
      IntergrowthFetalGrowtAbdominalCircumferenceForAgeData();

  IntergrowthFetalGrowtBiparietalDiameterForAgeData
  get fetalBiparietalDiameterData =>
      IntergrowthFetalGrowtBiparietalDiameterForAgeData();

  IntergrowthFetalGrowtFemurLengthForAgeData get fetalFemurLengthData =>
      IntergrowthFetalGrowtFemurLengthForAgeData();

  IntergrowthFetalGrowtHeadCircumferenceForAgeData
  get fetalHeadCircumferenceData =>
      IntergrowthFetalGrowtHeadCircumferenceForAgeData();

  IntergrowthFetalGrowtOccipitoFrontalDiameterForAgeData
  get fetalOccipitofrontalDiameterData =>
      IntergrowthFetalGrowtOccipitoFrontalDiameterForAgeData();

  IntergrowthFetalCrownRumpLengthForAgeData get fetalSizeInEarlyPregnancyData =>
      IntergrowthFetalCrownRumpLengthForAgeData();

  IntergrowthGestationalWeightGainForAgeData get gestationalWeightGainData =>
      IntergrowthGestationalWeightGainForAgeData();

  IntergrowthSymphysisFundalHeightForAgeData get symphysisfundalHeightData =>
      IntergrowthSymphysisFundalHeightForAgeData();

  IntergrowthHadlockEstimatedFetalWeightForAgeData
  get estimatedFetalWeightHadlockData =>
      IntergrowthHadlockEstimatedFetalWeightForAgeData();

  IntergrowthEstimatedFetalWeightForAgeData get estimatedFetalWeightData =>
      IntergrowthEstimatedFetalWeightForAgeData();
}

class IntergrowthDuringPregnancyFromJson {
  IntergrowthEarlyPregnancyDatingForCRL earlyPregnancyCRL(
    Map<String, dynamic> json,
  ) => IntergrowthEarlyPregnancyDatingForCRL.fromJson(json);

  IntergrowthHadlockEstimatedFetalWeightForAge estimatedFetalWeightHadlock(
    Map<String, dynamic> json,
  ) => IntergrowthHadlockEstimatedFetalWeightForAge.fromJson(json);

  IntergrowthEstimatedFetalWeightForAge estimatedFetalWeight(
    Map<String, dynamic> json,
  ) => IntergrowthEstimatedFetalWeightForAge.fromJson(json);

  IntergrowthPregnancyDatingEstimate pregnancyDatingEstimate(
    Map<String, dynamic> json,
  ) => IntergrowthPregnancyDatingEstimate.fromJson(json);

  IntergrowthFetalGrowtAbdominalCircumferenceForAge fetalAbdominalCircumference(
    Map<String, dynamic> json,
  ) => IntergrowthFetalGrowtAbdominalCircumferenceForAge.fromJson(json);

  IntergrowthFetalGrowtBiparietalDiameterForAge fetalBiparietalDiameter(
    Map<String, dynamic> json,
  ) => IntergrowthFetalGrowtBiparietalDiameterForAge.fromJson(json);

  IntergrowthFetalGrowtFemurLengthForAge fetalFemurLength(
    Map<String, dynamic> json,
  ) => IntergrowthFetalGrowtFemurLengthForAge.fromJson(json);

  IntergrowthFetalGrowtHeadCircumferenceForAge fetalHeadCircumference(
    Map<String, dynamic> json,
  ) => IntergrowthFetalGrowtHeadCircumferenceForAge.fromJson(json);

  IntergrowthFetalGrowtOccipitoFrontalDiameterForAge
  fetalOccipitofrontalDiameter(Map<String, dynamic> json) =>
      IntergrowthFetalGrowtOccipitoFrontalDiameterForAge.fromJson(json);

  IntergrowthFetalCrownRumpLengthForAge fetalSizeInEarlyPregnancy(
    Map<String, dynamic> json,
  ) => IntergrowthFetalCrownRumpLengthForAge.fromJson(json);

  IntergrowthGestationalWeightGainForAge gestationalWeightGain(
    Map<String, dynamic> json,
  ) => IntergrowthGestationalWeightGainForAge.fromJson(json);

  IntergrowthSymphysisFundalHeightForAge symphysisfundalHeight(
    Map<String, dynamic> json,
  ) => IntergrowthSymphysisFundalHeightForAge.fromJson(json);
}

class IntergrowthDuringPregnancy {
  /// Access all statistical data
  IntergrowthDuringPregnancyData get data => IntergrowthDuringPregnancyData();

  /// Access JSON deserialization
  IntergrowthDuringPregnancyFromJson get fromJson =>
      IntergrowthDuringPregnancyFromJson();

  IntergrowthEarlyPregnancyDatingForCRL earlyPregnancyCRL({
    required Age gestationalAge,
    required Length measurementResult,
  }) => IntergrowthEarlyPregnancyDatingForCRL(
    age: gestationalAge,
    length: measurementResult,
  );

  IntergrowthFetalGrowtAbdominalCircumferenceForAge
  fetalAbdominalCircumference({
    required Age gestationalAge,
    required Length measurementResult,
  }) => IntergrowthFetalGrowtAbdominalCircumferenceForAge(
    age: gestationalAge,
    measurementResult: measurementResult,
  );

  IntergrowthFetalGrowtBiparietalDiameterForAge fetalBiparietalDiameter({
    required Age gestationalAge,
    required Length measurementResult,
  }) => IntergrowthFetalGrowtBiparietalDiameterForAge(
    age: gestationalAge,
    measurementResult: measurementResult,
  );

  IntergrowthFetalGrowtFemurLengthForAge fetalFemurLength({
    required Age gestationalAge,
    required Length measurementResult,
  }) => IntergrowthFetalGrowtFemurLengthForAge(
    age: gestationalAge,
    measurementResult: measurementResult,
  );

  IntergrowthFetalGrowtHeadCircumferenceForAge fetalHeadCircumference({
    required Age gestationalAge,
    required Length measurementResult,
  }) => IntergrowthFetalGrowtHeadCircumferenceForAge(
    age: gestationalAge,
    measurementResult: measurementResult,
  );

  IntergrowthFetalGrowtOccipitoFrontalDiameterForAge
  fetalOccipitofrontalDiameter({
    required Age gestationalAge,
    required Length measurementResult,
  }) => IntergrowthFetalGrowtOccipitoFrontalDiameterForAge(
    age: gestationalAge,
    measurementResult: measurementResult,
  );

  IntergrowthFetalCrownRumpLengthForAge fetalSizeInEarlyPregnancy({
    required Age gestationalAge,
    required Length measurementResult,
  }) => IntergrowthFetalCrownRumpLengthForAge(
    age: gestationalAge,
    length: measurementResult,
  );

  IntergrowthGestationalWeightGainForAge gestationalWeightGain({
    required Age gestationalAge,
    required Mass weight,
  }) => IntergrowthGestationalWeightGainForAge(
    age: gestationalAge,
    measurementResult: weight,
  );

  IntergrowthSymphysisFundalHeightForAge symphysisfundalHeight({
    required Age gestationalAge,
    required Length measurementResult,
  }) => IntergrowthSymphysisFundalHeightForAge(
    age: gestationalAge,
    length: measurementResult,
  );

  /// INTERGROWTH-21st standards for Hadlock's Estimated Fetal Weight (18+0 to 41+0 weeks GA).
  IntergrowthHadlockEstimatedFetalWeightForAge estimatedFetalWeightHadlock({
    required GestationalAge gestationalAge,
    required Mass estimatedWeight,
  }) => IntergrowthHadlockEstimatedFetalWeightForAge(
    age: gestationalAge,
    measurementResult: estimatedWeight,
  );

  /// Computes Hadlock EFW from fetal HC, AC, and FL, then evaluates INTERGROWTH-21st Hadlock EFW standards (18+0 to 41+0 weeks GA).
  IntergrowthHadlockEstimatedFetalWeightForAge
  estimatedFetalWeightHadlockFromBiometry({
    required GestationalAge gestationalAge,
    required Length headCircumference,
    required Length abdominalCircumference,
    required Length femurLength,
  }) => IntergrowthHadlockEstimatedFetalWeightForAge(
    age: gestationalAge,
    measurementResult:
        IntergrowthHadlockEstimatedFetalWeightForAge.estimateWeight(
          headCircumference: headCircumference,
          abdominalCircumference: abdominalCircumference,
          femurLength: femurLength,
        ),
  );

  /// INTERGROWTH-21st original Estimated Fetal Weight standards (22+0 to 40+0 weeks GA).
  IntergrowthEstimatedFetalWeightForAge estimatedFetalWeight({
    required GestationalAge gestationalAge,
    required Mass estimatedWeight,
  }) => IntergrowthEstimatedFetalWeightForAge(
    age: gestationalAge,
    measurementResult: estimatedWeight,
  );

  /// Computes INTERGROWTH-21st EFW from fetal HC and AC, then evaluates INTERGROWTH-21st EFW standards (22+0 to 40+0 weeks GA).
  IntergrowthEstimatedFetalWeightForAge estimatedFetalWeightFromBiometry({
    required GestationalAge gestationalAge,
    required Length headCircumference,
    required Length abdominalCircumference,
  }) => IntergrowthEstimatedFetalWeightForAge(
    age: gestationalAge,
    measurementResult: IntergrowthEstimatedFetalWeightForAge.estimateWeight(
      headCircumference: headCircumference,
      abdominalCircumference: abdominalCircumference,
    ),
  );

  /// Estimates gestational age and optional EDD from first-trimester Crown-Rump Length (15–100 mm).
  ///
  /// Reference: Papageorghiou AT et al. Ultrasound Obstet Gynecol. 2014;44:641-648.
  IntergrowthPregnancyDatingEstimate estimateGestationalAgeByCRL({
    required Length crl,
    Date? examinationDate,
  }) {
    final crlMm = crl.toMillimeter.value.toDouble();
    if (crlMm < 15 || crlMm > 100) {
      throw ArgumentError(
        'CRL for early pregnancy dating must be between 15 and 100 mm, got $crlMm mm',
      );
    }
    final exactDays = 40.9041 + 3.21585 * math.sqrt(crlMm) + 0.348956 * crlMm;
    final sdDays = 2.39102 + 0.0193474 * crlMm;
    return IntergrowthPregnancyDatingEstimate(
      method: IntergrowthDatingMethod.crl,
      exactDays: exactDays,
      sdDays: sdDays,
      examinationDate: examinationDate,
    );
  }

  /// Estimates gestational age and optional EDD in late pregnancy from fetal HC and FL.
  ///
  /// Reference: Papageorghiou AT et al. Ultrasound Obstet Gynecol. 2016;48:719-726.
  IntergrowthPregnancyDatingEstimate estimateGestationalAgeByHCAndFL({
    required Length headCircumference,
    required Length femurLength,
    Date? examinationDate,
  }) {
    final hcMm = headCircumference.toMillimeter.value.toDouble();
    final flMm = femurLength.toMillimeter.value.toDouble();
    if (hcMm < 60 || hcMm > 330) {
      throw ArgumentError(
        'Head circumference for late pregnancy dating must be between 60 and 330 mm, got $hcMm mm',
      );
    }
    if (flMm < 5 || flMm > 90) {
      throw ArgumentError(
        'Femur length for late pregnancy dating must be between 5 and 90 mm, got $flMm mm',
      );
    }
    final lnHc = math.log(hcMm);
    final exactDays = math.exp(
      0.03243 * lnHc * lnHc + 0.001644 * flMm * lnHc + 3.813,
    );
    final sdDays = 0.04009 * exactDays - 1.149;
    return IntergrowthPregnancyDatingEstimate(
      method: IntergrowthDatingMethod.hcAndFl,
      exactDays: exactDays,
      sdDays: sdDays,
      examinationDate: examinationDate,
    );
  }

  /// Estimates gestational age and optional EDD in late pregnancy from fetal HC alone
  /// (to be used only when femur length is unavailable).
  ///
  /// Reference: Papageorghiou AT et al. Ultrasound Obstet Gynecol. 2016;48:719-726.
  IntergrowthPregnancyDatingEstimate estimateGestationalAgeByHC({
    required Length headCircumference,
    Date? examinationDate,
  }) {
    final hcMm = headCircumference.toMillimeter.value.toDouble();
    if (hcMm < 60 || hcMm > 330) {
      throw ArgumentError(
        'Head circumference for late pregnancy dating must be between 60 and 330 mm, got $hcMm mm',
      );
    }
    final lnHc = math.log(hcMm);
    final exactDays = math.exp(
      0.0597 * lnHc * lnHc + 6.409e-9 * hcMm * hcMm * hcMm + 3.3258,
    );
    final sdDays = 0.6492 * math.pow(exactDays / 100.0, 3).toDouble() + 2.991;
    return IntergrowthPregnancyDatingEstimate(
      method: IntergrowthDatingMethod.hcOnly,
      exactDays: exactDays,
      sdDays: sdDays,
      examinationDate: examinationDate,
    );
  }
}

class IntergrowthPostnatalData {
  IntergrowthPretermInfantsPostnatalGrowthHeadCircumferenceForAgeData
  get postnatalGrowthPretermInfantsHeadCircumferenceData =>
      IntergrowthPretermInfantsPostnatalGrowthHeadCircumferenceForAgeData();

  IntergrowthPretermInfantsPostnatalGrowthLengthForAgeData
  get postnatalGrowthPretermInfantsLengthData =>
      IntergrowthPretermInfantsPostnatalGrowthLengthForAgeData();

  IntergrowthPretermInfantsPostnatalGrowthWeightForAgeData
  get postnatalGrowthPretermInfantsWeightData =>
      IntergrowthPretermInfantsPostnatalGrowthWeightForAgeData();
}

class IntergrowthPostnatalFromJson {
  IntergrowthPretermInfantsPostnatalGrowthHeadCircumferenceForAge
  postnatalGrowthPretermInfantsHeadCircumference(Map<String, dynamic> json) =>
      IntergrowthPretermInfantsPostnatalGrowthHeadCircumferenceForAge.fromJson(
        json,
      );

  IntergrowthPretermInfantsPostnatalGrowthLengthForAge
  postnatalGrowthPretermInfantsLength(Map<String, dynamic> json) =>
      IntergrowthPretermInfantsPostnatalGrowthLengthForAge.fromJson(json);

  IntergrowthPretermInfantsPostnatalGrowthWeightForAge
  postnatalGrowthPretermInfantsWeight(Map<String, dynamic> json) =>
      IntergrowthPretermInfantsPostnatalGrowthWeightForAge.fromJson(json);
}

class IntergrowthPostnatal {
  /// Access all statistical data
  IntergrowthPostnatalData get data => IntergrowthPostnatalData();

  /// Access JSON deserialization
  IntergrowthPostnatalFromJson get fromJson => IntergrowthPostnatalFromJson();

  IntergrowthPretermInfantsPostnatalGrowthHeadCircumferenceForAge
  postnatalGrowthPretermInfantsHeadCircumference({
    required Sex sex,
    required Age age,
    required Length measurementResult,
  }) => IntergrowthPretermInfantsPostnatalGrowthHeadCircumferenceForAge(
    sex: sex,
    age: age,
    measurementResult: measurementResult,
  );

  IntergrowthPretermInfantsPostnatalGrowthLengthForAge
  postnatalGrowthPretermInfantsLength({
    required Sex sex,
    required Age age,
    required Length measurementResult,
  }) => IntergrowthPretermInfantsPostnatalGrowthLengthForAge(
    sex: sex,
    age: age,
    measurementResult: measurementResult,
  );

  IntergrowthPretermInfantsPostnatalGrowthWeightForAge
  postnatalGrowthPretermInfantsWeight({
    required Sex sex,
    required Age age,
    required Mass weight,
  }) => IntergrowthPretermInfantsPostnatalGrowthWeightForAge(
    sex: sex,
    age: age,
    measurementResult: weight,
  );
}
