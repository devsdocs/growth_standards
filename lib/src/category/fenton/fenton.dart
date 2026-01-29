import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:growth_standards/src/common/base.dart';
import 'package:growth_standards/src/common/extension.dart';
import 'package:growth_standards/src/common/math.dart';
import 'package:growth_standards/src/common/model/age.dart';
import 'package:growth_standards/src/common/model/lms.dart';
import 'package:growth_standards/src/common/tools.dart';
import 'package:growth_standards/src/common/types.dart';
import 'package:super_measurement/super_measurement.dart';

part 'data/hcfa.dart';
part 'data/lfa.dart';
part 'data/wfa.dart';

part 'model/hcfa.dart';
part 'model/lfa.dart';
part 'model/wfa.dart';

part 'fenton.freezed.dart';
part 'fenton.g.dart';

class FentonData {
  FentonHeadCircumferenceForAgeData get headCircumferenceForAgeData =>
      FentonHeadCircumferenceForAgeData();

  FentonWeightForAgeData get weightForAgeData => FentonWeightForAgeData();

  FentonLengthForAgeData get lengthForAgeData => FentonLengthForAgeData();
}

class FentonFromJson {
  FentonHeadCircumferenceForAge headCircumferenceForAge(
    Map<String, dynamic> json,
  ) => FentonHeadCircumferenceForAge.fromJson(json);

  FentonWeightForAge weightForAge(Map<String, dynamic> json) =>
      FentonWeightForAge.fromJson(json);

  FentonLengthForAge lengthForAge(Map<String, dynamic> json) =>
      FentonLengthForAge.fromJson(json);
}

class Fenton {
  /// Access all statistical data
  FentonData get data => FentonData();

  /// Because why not?
  FentonFromJson get fromJson => FentonFromJson();

  FentonHeadCircumferenceForAge headCircumferenceForAge({
    required Age age,
    required Length measurementResult,
  }) => FentonHeadCircumferenceForAge(
    age: age,
    measurementResult: measurementResult,
  );

  FentonWeightForAge weightForAge({required Age age, required Mass weight}) =>
      FentonWeightForAge(age: age, weight: weight);

  FentonLengthForAge lengthForAge({
    required Sex sex,
    required Age age,
    required Length lengthHeight,
    required LengthHeightMeasurementPosition measure,
  }) => FentonLengthForAge(
    age: age,
    lengthHeight: lengthHeight,
    measure: measure,
  );
}
