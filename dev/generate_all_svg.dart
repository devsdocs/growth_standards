// ignore_for_file: avoid_print

import 'dart:io';
import 'package:growth_standards/growth_standards.dart';

void main() {
  final outputDir = Directory('doc/all_samples');
  if (outputDir.existsSync()) {
    outputDir.deleteSync(recursive: true);
  }
  outputDir.createSync(recursive: true);

  void saveChart(Result r, String relativePath) {
    final basePath = '${outputDir.path}/$relativePath';
    final fileZ = File('${basePath}_zscore.svg');
    if (!fileZ.parent.existsSync()) fileZ.parent.createSync(recursive: true);
    r.saveSvg(fileZ.path, config: const GrowthChartConfig());

    final fileP = File('${basePath}_percentile.svg');
    r.saveSvg(fileP.path,
        config: const GrowthChartConfig(
            displayMode: GrowthChartDisplayMode.percentile));
  }

  print('Generating WHO 0-5 Years...');
  final who0to5 = GrowthStandard.who.fromBirthTo5Years;
  final age2Y = Age.byDaysAgo(730);
  final age3Y = Age.byDaysAgo(1095);
  final age6M = Age.byDaysAgo(180);
  final age1Y = Age.byDaysAgo(365);

  for (final sex in [Sex.male, Sex.female]) {
    final sStr = sex.name;
    saveChart(
        who0to5.weightForAge(sex: sex, age: age2Y, weight: Mass$Kilogram(12.5)),
        'who/0_to_5_years/wfa_$sStr');
    saveChart(
        who0to5.lengthForAge(
            sex: sex,
            age: age2Y,
            lengthHeight: Length$Centimeter(85.0),
            measure: LengthHeightMeasurementPosition.standing),
        'who/0_to_5_years/lfa_$sStr');
    saveChart(
        who0to5.bodyMassIndexForAge(
            sex: sex,
            bodyMassIndexMeasurement:
                WHOGrowthStandardsBodyMassIndexMeasurement(16.5, age: age2Y)),
        'who/0_to_5_years/bmifa_$sStr');
    saveChart(
        who0to5.headCircumferenceForAge(
            sex: sex, age: age6M, measurementResult: Length$Centimeter(43.0)),
        'who/0_to_5_years/hcfa_$sStr');
    saveChart(
        who0to5.armCircumferenceForAge(
            sex: sex, age: age2Y, measurementResult: Length$Centimeter(15.0)),
        'who/0_to_5_years/acfa_$sStr');
    saveChart(
        who0to5.subscapularSkinfoldForAge(
            sex: sex, age: age2Y, measurementResult: Length$Millimeter(6.5)),
        'who/0_to_5_years/ssfa_$sStr');
    saveChart(
        who0to5.tricepsSkinfoldForAge(
            sex: sex, age: age2Y, measurementResult: Length$Millimeter(9.0)),
        'who/0_to_5_years/tsfa_$sStr');
    saveChart(
        who0to5.weightForLength(
            sex: sex,
            age: age1Y,
            lengthMeasurementResult: Length$Centimeter(75.0),
            massMeasurementResult: Mass$Kilogram(9.5),
            measure: LengthHeightMeasurementPosition.recumbent),
        'who/0_to_5_years/wfl_$sStr');
    saveChart(
        who0to5.weightForHeight(
            sex: sex,
            age: age3Y,
            height: Length$Centimeter(95.0),
            mass: Mass$Kilogram(14.0),
            measure: LengthHeightMeasurementPosition.standing),
        'who/0_to_5_years/wfh_$sStr');
  }

  print('Generating WHO 5-19 Years...');
  final who5to19 = GrowthStandard.who.from5YearsAndAbove;
  final age10Y = Age.byDaysAgo(3650);

  for (final sex in [Sex.male, Sex.female]) {
    final sStr = sex.name;
    saveChart(
        who5to19.weightForAge(
            sex: sex, age: age10Y, weight: Mass$Kilogram(32.0)),
        'who/5_to_19_years/wfa_$sStr');
    saveChart(
        who5to19.heightForAge(
            sex: sex,
            age: age10Y,
            lengthHeight: Length$Centimeter(138.0),
            measure: LengthHeightMeasurementPosition.standing),
        'who/5_to_19_years/hfa_$sStr');
    saveChart(
        who5to19.bodyMassIndexForAge(
            sex: sex,
            age: age10Y,
            bodyMassIndexMeasurement:
                WHOGrowthReferenceBodyMassIndexMeasurement(17.5)),
        'who/5_to_19_years/bmifa_$sStr');
  }

  print('Generating CDC...');
  final cdc = GrowthStandard.cdc;
  final cdcInfant = cdc.fromBirthTo36Months;
  final cdcOlder = cdc.from2YearsAndAbove;
  final age1YCDC = Age.byDaysAgo(365);
  final age8Y = Age.byDaysAgo(365 * 8);

  for (final sex in [Sex.male, Sex.female]) {
    final sStr = sex.name;
    saveChart(
        cdcInfant.weightForAge(
            sex: sex, age: age1YCDC, weight: Mass$Kilogram(9.0)),
        'cdc/infant/wfa_$sStr');
    saveChart(
        cdcInfant.lengthForAge(
            sex: sex,
            age: age1YCDC,
            lengthHeight: Length$Centimeter(75.0),
            measure: LengthHeightMeasurementPosition.recumbent),
        'cdc/infant/lfa_$sStr');
    saveChart(
        cdcInfant.headCircumferenceForAge(
            sex: sex,
            age: age1YCDC,
            measurementResult: Length$Centimeter(46.0)),
        'cdc/infant/hcfa_$sStr');
    saveChart(
        cdcInfant.weightForLength(
            sex: sex,
            age: age1YCDC,
            length: Length$Centimeter(75.0),
            weight: Mass$Kilogram(9.0),
            measure: LengthHeightMeasurementPosition.recumbent),
        'cdc/infant/wfl_$sStr');

    saveChart(
        cdcOlder.weightForAge(
            sex: sex, age: age8Y, weight: Mass$Kilogram(26.0)),
        'cdc/older/wfa_$sStr');
    saveChart(
        cdcOlder.statureForAge(
            sex: sex,
            age: age8Y,
            lengthHeight: Length$Centimeter(128.0),
            measure: LengthHeightMeasurementPosition.standing),
        'cdc/older/sfa_$sStr');
    saveChart(
        cdcOlder.bodyMassIndexForAge(
            sex: sex,
            age: age8Y,
            bodyMassIndexMeasurement: CDCBodyMassIndexMeasurement(16.0)),
        'cdc/older/bmifa_$sStr');
    saveChart(
        cdcOlder.weightForStature(
            sex: sex,
            age: age8Y,
            height: Length$Centimeter(115.0),
            weight: Mass$Kilogram(20.0),
            measure: LengthHeightMeasurementPosition.standing),
        'cdc/older/wfs_$sStr');
  }

  print('Generating Fenton...');
  final fenton = GrowthStandard.fenton;
  const pma = PostmenstrualAge(weeks: 34);

  for (final sex in [Sex.male, Sex.female]) {
    final sStr = sex.name;
    saveChart(
        fenton.weightForAge(sex: sex, age: pma, weight: Mass$Kilogram(2.1)),
        'fenton/wfa_$sStr');
    saveChart(
        fenton.lengthForAge(
            sex: sex, age: pma, lengthHeight: Length$Centimeter(44.0)),
        'fenton/lfa_$sStr');
    saveChart(
        fenton.headCircumferenceForAge(
            sex: sex, age: pma, measurementResult: Length$Centimeter(31.0)),
        'fenton/hcfa_$sStr');
  }

  print('Generating INTERGROWTH-21st...');
  final ig = GrowthStandard.intergrowth;
  final gaEarly = Age.byDaysAgo(80);
  final gaLate = Age.byDaysAgo(200);
  final pma2 = Age.byDaysAgo(45 * 7);

  saveChart(
      ig.duringPregnancy.earlyPregnancyCRL(
          gestationalAge: gaEarly, measurementResult: Length$Millimeter(50.0)),
      'intergrowth/early_pregnancy_dating/crl');
  saveChart(
      ig.duringPregnancy.fetalSizeInEarlyPregnancy(
          gestationalAge: gaEarly, measurementResult: Length$Millimeter(50.0)),
      'intergrowth/fetal_size_early_pregnancy/crl');
  saveChart(
      ig.duringPregnancy.gestationalWeightGain(
          gestationalAge: gaLate, weight: Mass$Kilogram(10.0)),
      'intergrowth/gestational_weight_gain/gwg');

  saveChart(
      ig.duringPregnancy.fetalAbdominalCircumference(
          gestationalAge: gaLate, measurementResult: Length$Centimeter(24.0)),
      'intergrowth/fetal_growth/ac');
  saveChart(
      ig.duringPregnancy.fetalBiparietalDiameter(
          gestationalAge: gaLate, measurementResult: Length$Centimeter(7.0)),
      'intergrowth/fetal_growth/bpd');
  saveChart(
      ig.duringPregnancy.fetalFemurLength(
          gestationalAge: gaLate, measurementResult: Length$Centimeter(5.5)),
      'intergrowth/fetal_growth/fl');
  saveChart(
      ig.duringPregnancy.fetalHeadCircumference(
          gestationalAge: gaLate, measurementResult: Length$Centimeter(27.0)),
      'intergrowth/fetal_growth/hc');
  saveChart(
      ig.duringPregnancy.fetalOccipitofrontalDiameter(
          gestationalAge: gaLate, measurementResult: Length$Centimeter(9.0)),
      'intergrowth/fetal_growth/ofd');

  saveChart(
      ig.duringPregnancy.symphysisfundalHeight(
          gestationalAge: gaLate, measurementResult: Length$Centimeter(26.0)),
      'intergrowth/symphysis_fundal_height/sfh');

  for (final sex in [Sex.male, Sex.female]) {
    final sStr = sex.name;
    const gaFull = GestationalAge(weeks: 40);
    saveChart(
        ig.atBirth.newbornSizeWeight(
            sex: sex, gestationalAge: gaFull, weight: Mass$Kilogram(3.5)),
        'intergrowth/newborn_size/w_$sStr');
    saveChart(
        ig.atBirth.newbornSizeLength(
            sex: sex,
            gestationalAge: gaFull,
            measurementResult: Length$Centimeter(50.0)),
        'intergrowth/newborn_size/l_$sStr');
    saveChart(
        ig.atBirth.newbornSizeHeadCircumference(
            sex: sex,
            gestationalAge: gaFull,
            measurementResult: Length$Centimeter(35.0)),
        'intergrowth/newborn_size/hc_$sStr');
    saveChart(
        ig.atBirth.newbornSizeWeightLengthRatio(
            sex: sex,
            gestationalAge: gaFull,
            weight: Mass$Kilogram(3.5),
            length: Length$Centimeter(50.0)),
        'intergrowth/newborn_size/wlr_$sStr');
  }

  for (final sex in [Sex.male, Sex.female]) {
    final sStr = sex.name;
    const gaPreterm = GestationalAge(weeks: 28);
    saveChart(
        ig.atBirth.veryPretermNewbornSizeWeight(
            sex: sex, gestationalAge: gaPreterm, weight: Mass$Kilogram(1.2)),
        'intergrowth/very_preterm_newborn_size/w_$sStr');
    saveChart(
        ig.atBirth.veryPretermNewbornSizeLength(
            sex: sex,
            gestationalAge: gaPreterm,
            measurementResult: Length$Centimeter(37.0)),
        'intergrowth/very_preterm_newborn_size/l_$sStr');
    saveChart(
        ig.atBirth.veryPretermNewbornSizeHeadCircumference(
            sex: sex,
            gestationalAge: gaPreterm,
            measurementResult: Length$Centimeter(26.0)),
        'intergrowth/very_preterm_newborn_size/hc_$sStr');
    saveChart(
        ig.atBirth.veryPretermNewbornSizeWeightLengthRatio(
            sex: sex,
            gestationalAge: gaPreterm,
            weight: Mass$Kilogram(1.2),
            length: Length$Centimeter(37.0)),
        'intergrowth/very_preterm_newborn_size/wlr_$sStr');
  }

  for (final sex in [Sex.male, Sex.female]) {
    final sStr = sex.name;
    saveChart(
        ig.postnatal.postnatalGrowthPretermInfantsWeight(
            sex: sex, age: pma2, weight: Mass$Kilogram(4.5)),
        'intergrowth/postnatal_preterm/w_$sStr');
    saveChart(
        ig.postnatal.postnatalGrowthPretermInfantsLength(
            sex: sex, age: pma2, measurementResult: Length$Centimeter(55.0)),
        'intergrowth/postnatal_preterm/l_$sStr');
    saveChart(
        ig.postnatal.postnatalGrowthPretermInfantsHeadCircumference(
            sex: sex, age: pma2, measurementResult: Length$Centimeter(38.0)),
        'intergrowth/postnatal_preterm/hc_$sStr');
  }

  print('Done generating SVGs in doc/all_samples!');
}
