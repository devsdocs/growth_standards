import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:growth_standards/src/common/extension.dart';
import 'package:growth_standards/src/common/math.dart';
import 'package:growth_standards/src/common/model/age.dart';
import 'package:growth_standards/src/common/model/bmi.dart';
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

part 'cdc.freezed.dart';
part 'cdc.g.dart';

class CDCGrowthStandardData {
  CDCBodyMassIndexForAgeData get cdcBodyMassIndexForAgeData =>
      CDCBodyMassIndexForAgeData();
}

class CDCGrowthStandardFromJson {}

class CDCGrowthStandard {
  CDCGrowthStandardData get data => CDCGrowthStandardData();
  CDCBodyMassIndexForAge cdcBodyMassIndexForAge({
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
}
