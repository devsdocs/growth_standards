import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:growth_standards/src/common/extension.dart';
import 'package:growth_standards/src/common/math.dart';
import 'package:growth_standards/src/common/model/age.dart';
import 'package:growth_standards/src/common/model/bmi.dart';
import 'package:growth_standards/src/common/model/lms.dart';
import 'package:growth_standards/src/common/tools.dart';
import 'package:growth_standards/src/common/typedef.dart';
import 'package:growth_standards/src/common/types.dart';
import 'package:reusable_tools/reusable_tools.dart';
import 'package:super_measurement/super_measurement.dart';

part 'data/bmiage2022.dart';
part 'data/hcageinf.dart';
part 'data/lenageinf.dart';
part 'data/statage.dart';
part 'data/wtage.dart';
part 'data/wtageinf.dart';
part 'data/wtleninf.dart';
part 'data/wtstat.dart';
part 'model/bmiforage.dart';
part 'model/hcageinf.dart';
part 'model/lenageinf.dart';
part 'model/statage.dart';
part 'model/wtage.dart';
part 'model/wtageinf.dart';
part 'model/wtleninf.dart';
part 'model/wtstat.dart';

part 'cdc.freezed.dart';
part 'cdc.g.dart';

class CDCGrowthStandardFromTwoYearsOldAndAboveData {
  CDCBodyMassIndexForAgeData get bodyMassIndexForAgeData =>
      CDCBodyMassIndexForAgeData();

  CDCWeightForAgeData get weightForAgeData => CDCWeightForAgeData();

  CDCStatureForAgeData get statureForAgeData => CDCStatureForAgeData();

  CDCWeigthForStatureData get weigthForStatureData => CDCWeigthForStatureData();
}

class CDCGrowthStandardFromTwoYearsOldAndAboveFromJson {
  CDCBodyMassIndexForAge bodyMassIndexForAge(
    Map<String, dynamic> json,
  ) =>
      CDCBodyMassIndexForAge.fromJson(json);

  CDCWeightForAge weightForAge(
    Map<String, dynamic> json,
  ) =>
      CDCWeightForAge.fromJson(json);

  CDCStatureForAge statureForAge(
    Map<String, dynamic> json,
  ) =>
      CDCStatureForAge.fromJson(json);

  CDCWeigthForStature weigthForStature(
    Map<String, dynamic> json,
  ) =>
      CDCWeigthForStature.fromJson(json);
}

class CDCGrowthStandardFromTwoYearsOldAndAbove {
  /// Access all statistical data
  CDCGrowthStandardFromTwoYearsOldAndAboveData get data =>
      CDCGrowthStandardFromTwoYearsOldAndAboveData();

  /// Because why not?
  CDCGrowthStandardFromTwoYearsOldAndAboveFromJson get fromJson =>
      CDCGrowthStandardFromTwoYearsOldAndAboveFromJson();

  CDCBodyMassIndexForAge bodyMassIndexForAge({
    Date? observationDate,
    required Sex sex,
    required CDCBodyMassIndexMeasurement bodyMassIndexMeasurement,
    required Age age,
  }) =>
      CDCBodyMassIndexForAge(
        observationDate: observationDate,
        age: age,
        sex: sex,
        bodyMassIndexMeasurement: bodyMassIndexMeasurement,
      );

  CDCWeightForAge weightForAge({
    Date? observationDate,
    required Sex sex,
    required Age age,
    required Mass weight,
  }) =>
      CDCWeightForAge(
        observationDate: observationDate,
        sex: sex,
        age: age,
        weight: weight,
      );

  CDCStatureForAge statureForAge({
    Date? observationDate,
    required Sex sex,
    required Age age,
    required Length lengthHeight,
    required LengthHeigthMeasurementPosition measure,
  }) =>
      CDCStatureForAge(
        observationDate: observationDate,
        sex: sex,
        age: age,
        lengthHeight: lengthHeight,
        measure: measure,
      );

  CDCWeigthForStature weigthForStature({
    Date? observationDate,
    required Sex sex,
    required Age age,
    required Length length,
    required Mass weight,
    required LengthHeigthMeasurementPosition measure,
  }) =>
      CDCWeigthForStature(
        observationDate: observationDate,
        sex: sex,
        age: age,
        length: length,
        weight: weight,
        measure: measure,
      );
}

class CDCGrowthStandardFromBirthTo36MonthsData {
  CDCInfantHeadCircumferenceForAgeData get infantHeadCircumferenceForAgeData =>
      CDCInfantHeadCircumferenceForAgeData();

  CDCInfantLengthForAgeData get infantLengthForAgeData =>
      CDCInfantLengthForAgeData();

  CDCInfantWeightForAgeData get infantWeightForAgeData =>
      CDCInfantWeightForAgeData();

  CDCInfantWeigthForLengthData get infantWeigthForLengthData =>
      CDCInfantWeigthForLengthData();
}

class CDCGrowthStandardFromBirthTo36MonthsFomJson {
  CDCInfantHeadCircumferenceForAge infantHeadCircumferenceForAge(
    Map<String, dynamic> json,
  ) =>
      CDCInfantHeadCircumferenceForAge.fromJson(json);

  CDCInfantLengthForAge infantLengthForAge(
    Map<String, dynamic> json,
  ) =>
      CDCInfantLengthForAge.fromJson(json);

  CDCInfantWeightForAge infantWeightForAge(
    Map<String, dynamic> json,
  ) =>
      CDCInfantWeightForAge.fromJson(json);

  CDCInfantWeigthForLength infantWeigthForLength(
    Map<String, dynamic> json,
  ) =>
      CDCInfantWeigthForLength.fromJson(json);
}

class CDCGrowthStandardFromBirthTo36Months {
  CDCGrowthStandardFromBirthTo36MonthsData get data =>
      CDCGrowthStandardFromBirthTo36MonthsData();

  CDCGrowthStandardFromBirthTo36MonthsFomJson get fromJson =>
      CDCGrowthStandardFromBirthTo36MonthsFomJson();

  CDCInfantHeadCircumferenceForAge headCircumferenceForAge({
    Date? observationDate,
    required Sex sex,
    required Age age,
    required Length measurementResult,
  }) =>
      CDCInfantHeadCircumferenceForAge(
        observationDate: observationDate,
        sex: sex,
        age: age,
        measurementResult: measurementResult,
      );

  CDCInfantLengthForAge lengthForAge({
    Date? observationDate,
    required Sex sex,
    required Age age,
    required Length lengthHeight,
    required LengthHeigthMeasurementPosition measure,
  }) =>
      CDCInfantLengthForAge(
        observationDate: observationDate,
        sex: sex,
        age: age,
        lengthHeight: lengthHeight,
        measure: measure,
      );

  CDCInfantWeightForAge weightForAge({
    Date? observationDate,
    required Sex sex,
    required Age age,
    required Mass weight,
  }) =>
      CDCInfantWeightForAge(
        observationDate: observationDate,
        sex: sex,
        age: age,
        weight: weight,
      );

  CDCInfantWeigthForLength weigthForLength({
    Date? observationDate,
    required Sex sex,
    required Age age,
    required Length length,
    required Mass weight,
    required LengthHeigthMeasurementPosition measure,
  }) =>
      CDCInfantWeigthForLength(
        observationDate: observationDate,
        sex: sex,
        age: age,
        length: length,
        weight: weight,
        measure: measure,
      );
}
