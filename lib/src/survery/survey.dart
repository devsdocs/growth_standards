import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:growth_standards/src/cdc/cdc.dart';
import 'package:growth_standards/src/common/math.dart';
import 'package:growth_standards/src/common/model/age.dart';
import 'package:growth_standards/src/common/model/bmi.dart';
import 'package:growth_standards/src/common/tools.dart';
import 'package:growth_standards/src/common/types.dart';
import 'package:growth_standards/src/who/reference/reference.dart';
import 'package:growth_standards/src/who/standard/standard.dart';
import 'package:growth_standards/src/who/tools.dart';
import 'package:super_measurement/super_measurement.dart';

part 'survey.freezed.dart';
part 'survey.g.dart';

@freezed
class PersonSurvery with _$PersonSurvery {
  factory PersonSurvery({
    required Person person,
    required MeasurementType measurementType,
    @Default(Precision.two) Precision? precision,
    @MassMeasurementHistoryConverter()
    required List<MassMeasurementHistory> massMeasurementHistory,
    @LengthMeasurementHistoryConverter()
    required List<LengthMeasurementHistory> lengthHeightMeasurementHistory,
    @LengthMeasurementHistoryConverter()
    List<LengthMeasurementHistory>? headCircumferenceMeasurementHistory,
    @LengthMeasurementHistoryConverter()
    List<LengthMeasurementHistory>? subscapularSkinfoldMeasurementHistory,
    @LengthMeasurementHistoryConverter()
    List<LengthMeasurementHistory>? tricepsSkinfoldMeasurementHistory,
    @LengthMeasurementHistoryConverter()
    List<LengthMeasurementHistory>? armCircumferenceMeasurementHistory,
  }) = _PersonSurvery;

  const PersonSurvery._();

  factory PersonSurvery.fromJson(Map<String, dynamic> json) =>
      _$PersonSurveryFromJson(json);

  factory PersonSurvery.sameDayMeasurement({
    required Person person,
    required MeasurementType measurementType,
    required List<SameDayMeasurement> sameDayMeasurement,
    Precision precision = Precision.two,
  }) =>
      PersonSurvery(
        person: person,
        measurementType: measurementType,
        precision: precision,
        massMeasurementHistory: sameDayMeasurement
            .map(
              (e) =>
                  MassMeasurementHistory(e.date, e.mass, isOedema: e.isOedema),
            )
            .toList(),
        lengthHeightMeasurementHistory: sameDayMeasurement
            .map(
              (e) => LengthMeasurementHistory(
                e.date,
                e.lengthHeight,
                measurementPosition: e.measurementPosition,
              ),
            )
            .toList(),
        armCircumferenceMeasurementHistory: (sameDayMeasurement
                .map(
                  (e) => e.armCircumferenceMeasurement == null
                      ? null
                      : LengthMeasurementHistory(
                          e.date,
                          e.armCircumferenceMeasurement!,
                        ),
                )
                .toList()
              ..removeWhere((e) => e == null))
            .map((e) => e!)
            .toList(),
        headCircumferenceMeasurementHistory: (sameDayMeasurement
                .map(
                  (e) => e.headCircumferenceMeasurement == null
                      ? null
                      : LengthMeasurementHistory(
                          e.date,
                          e.headCircumferenceMeasurement!,
                        ),
                )
                .toList()
              ..removeWhere((e) => e == null))
            .map((e) => e!)
            .toList(),
        subscapularSkinfoldMeasurementHistory: (sameDayMeasurement
                .map(
                  (e) => e.subscapularSkinfoldMeasurement == null
                      ? null
                      : LengthMeasurementHistory(
                          e.date,
                          e.subscapularSkinfoldMeasurement!,
                        ),
                )
                .toList()
              ..removeWhere((e) => e == null))
            .map((e) => e!)
            .toList(),
        tricepsSkinfoldMeasurementHistory: (sameDayMeasurement
                .map(
                  (e) => e.tricepsSkinfoldMeasurement == null
                      ? null
                      : LengthMeasurementHistory(
                          e.date,
                          e.tricepsSkinfoldMeasurement!,
                        ),
                )
                .toList()
              ..removeWhere((e) => e == null))
            .map((e) => e!)
            .toList(),
      );

  ///
  /// Will return null if none of [massMeasurementHistory]
  /// and [lengthHeightMeasurementHistory] that measured on same day or any is
  /// empty. Returning null as value if the requirement of calculations is not
  /// met
  ///
  Map<Date, ({num zscore, num percentile, num bmiValue})?>? get bodyMassIndex =>
      _isLengthAndMassMeasuredAtTheSameDay
          ? _lengthAndMassMap.map((_, v) {
              final bmiValue = _getBMIValue(v);

              return MapEntry(v.length.date, bmiValue);
            })
          : null;

  ({num zscore, num percentile, num bmiValue})? _getBMIValue(
    ({LengthMeasurementHistory length, MassMeasurementHistory mass}) v,
  ) {
    final ageInDays = person.age.ageInTotalDaysAtDate(v.length.date);
    final ageInMonths = person.age.ageInTotalMonthsAtDate(v.length.date);

    final cdcBodyMassIndexForAge = CDCBodyMassIndexForAge(
      observationDate: v.length.date,
      sex: person.sex,
      age: person.age,
      bodyMassIndexMeasurement: CDCBodyMassIndexMeasurement.fromMeasurement(
        BodyMassIndex(
          lengthHeight: v.length.unit,
          weight: v.mass.unit,
        ),
      ),
    );

    final whoGrowthStandardsBodyMassIndexForAge =
        WHOGrowthStandardsBodyMassIndexForAge(
      sex: person.sex,
      oedemExist: v.mass.isOedema!,
      observationDate: v.mass.date,
      bodyMassIndexMeasurement:
          WHOGrowthStandardsBodyMassIndexMeasurement.fromMeasurement(
        lengthHeight: v.length.unit,
        weight: v.mass.unit,
        measure: v.length.measurementPosition!,
        age: person.age,
      ),
    );

    final whoGrowthReferenceBodyMassIndexForAge =
        WHOGrowthReferenceBodyMassIndexForAge(
      age: person.age,
      sex: person.sex,
      observationDate: v.mass.date,
      bodyMassIndexMeasurement:
          WHOGrowthReferenceBodyMassIndexMeasurement.fromMeasurement(
        BodyMassIndex(
          lengthHeight: v.length.unit,
          weight: v.mass.unit,
        ),
      ),
    );

    final whoLessThan2YO = (
      zscore: whoGrowthStandardsBodyMassIndexForAge.zScore(precision!),
      percentile: whoGrowthStandardsBodyMassIndexForAge.percentile(precision!),
      bmiValue:
          whoGrowthStandardsBodyMassIndexForAge.bodyMassIndexMeasurement.value
    );

    final cdc = (
      zscore: cdcBodyMassIndexForAge.zScore(precision!),
      percentile: cdcBodyMassIndexForAge.percentile(precision!),
      bmiValue: cdcBodyMassIndexForAge.bodyMassIndexMeasurement.value
    );

    final whoMoreThan2YO = (
      zscore: whoGrowthReferenceBodyMassIndexForAge.zScore(precision!),
      percentile: whoGrowthReferenceBodyMassIndexForAge.percentile(precision!),
      bmiValue:
          whoGrowthReferenceBodyMassIndexForAge.bodyMassIndexMeasurement.value
    );

    return switch (measurementType) {
      MeasurementType.cdc => ageInMonths < 24 && ageInMonths > 240 ? null : cdc,
      MeasurementType.who => ageInDays <= 1856
          ? v.mass.isOedema!
              ? null
              : whoLessThan2YO
          : ageInMonths <= 228
              ? whoMoreThan2YO
              : null,
      _ => null,
    };
  }

  Map<Date, ({num zscore, num percentile})?>? get lengthHeightForAge {
    if (lengthHeightMeasurementHistory.isNotEmpty) {}
    return null;
  }

  Map<Date, ({num zscore, num percentile})?>? get weightForAge {
    if (massMeasurementHistory.isNotEmpty) {}
    return null;
  }

  Map<Date, ({num zscore, num percentile})?>? get weightForLengthHeight =>
      _isLengthAndMassMeasuredAtTheSameDay
          ? _lengthAndMassMap.map((_, v) {
              final value = _getWeigthForLengthValue(v);

              return MapEntry(v.length.date, value);
            })
          : null;

  ({num zscore, num percentile})? _getWeigthForLengthValue(
    ({LengthMeasurementHistory length, MassMeasurementHistory mass}) v,
  ) {
    final adjusted = switch (measurementType) {
      MeasurementType.cdc => adjustedLengthHeight(
          age: person.age,
          measure: v.length.measurementPosition!,
          lengthHeight: v.length.unit,
          type: AdjustedLengthType.cdc,
        ),
      MeasurementType.who => adjustedLengthHeight(
          age: person.age,
          measure: v.length.measurementPosition!,
          lengthHeight: v.length.unit,
          type: AdjustedLengthType.who,
        ),
      _ => null,
    };

    if (adjusted == null) return null;

    final ageInDays = person.age.ageInTotalDaysAtDate(v.length.date);
    final ageInMonths = person.age.ageInTotalMonthsAtDate(v.length.date);

    return switch (measurementType) {
      MeasurementType.cdc => null,
      MeasurementType.who => null,
      _ => null,
    };
  }

  Map<int, ({LengthMeasurementHistory length, MassMeasurementHistory mass})>
      get _lengthAndMassMap => massMeasurementHistory
          .map(
            (e) => lengthHeightMeasurementHistory
                .map(
                  (x) => e.date == x.date ? (length: x, mass: e) : null,
                )
                .toList()
              ..removeWhere((f) => f == null),
          )
          .expand((e) => e)
          .map((e) => e!)
          .toList()
          .asMap();

  bool get _isLengthAndMassMeasuredAtTheSameDay =>
      lengthHeightMeasurementHistory.isNotEmpty &&
      massMeasurementHistory.isNotEmpty &&
      massMeasurementHistory.any(
        (e) => lengthHeightMeasurementHistory.any((x) => e.date == x.date),
      );
}

enum MeasurementType {
  cdc,
  who,
  fenton,
  ;
}

@freezed
class SameDayMeasurement with _$SameDayMeasurement {
  factory SameDayMeasurement(
    Date date, {
    @MassConverter() required Mass mass,
    required Length lengthHeight,
    @Default(false) bool? isOedema,
    @Default(LengthHeigthMeasurementPosition.recumbent)
    LengthHeigthMeasurementPosition? measurementPosition,
    @LengthConverter() Length? headCircumferenceMeasurement,
    @LengthConverter() Length? subscapularSkinfoldMeasurement,
    @LengthConverter() Length? tricepsSkinfoldMeasurement,
    @LengthConverter() Length? armCircumferenceMeasurement,
  }) = _SameDayMeasurement;

  const SameDayMeasurement._();

  factory SameDayMeasurement.fromJson(Map<String, dynamic> json) =>
      _$SameDayMeasurementFromJson(json);
}

@freezed
class Person with _$Person {
  factory Person({
    required Sex sex,
    @DateConverter() required Date dateOfBirth,
    String? id,
    String? name,
    String? address,
  }) = _Person;

  const Person._();

  factory Person.fromJson(Map<String, dynamic> json) => _$PersonFromJson(json);

  Age get age => Age(dateOfBirth);
}


@freezed
class Survey with _$Survey {
  factory Survey(List<List<dynamic>> surveyData) = _Survey;

  const Survey._();

  factory Survey.fromData() {
    return Survey([[]]);
  }
}
