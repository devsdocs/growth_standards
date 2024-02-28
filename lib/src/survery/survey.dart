import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:growth_standards/src/cdc/cdc.dart';
import 'package:growth_standards/src/common/extension.dart';
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
part 'survey.part.dart';

@freezed
class PersonSurvey with _$PersonSurvey {
  factory PersonSurvey({
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
  }) = _PersonSurvey;

  const PersonSurvey._();

  factory PersonSurvey.fromJson(Map<String, dynamic> json) =>
      _$PersonSurveyFromJson(json);

  factory PersonSurvey.sameDayMeasurement({
    required MeasurementType measurementType,
    required PersonMeasurement personMeasurement,
    Precision precision = Precision.two,
  }) =>
      personMeasurement.measurements.isEmpty
          ? throw Exception('Empty measurement is not allowed')
          : PersonSurvey(
              person: personMeasurement.person,
              measurementType: measurementType,
              precision: precision,
              massMeasurementHistory: personMeasurement.measurements
                  .map(
                    (e) => MassMeasurementHistory(
                      e.date,
                      e.mass,
                      isOedema: e.isOedema,
                    ),
                  )
                  .toList(),
              lengthHeightMeasurementHistory: personMeasurement.measurements
                  .map(
                    (e) => LengthMeasurementHistory(
                      e.date,
                      e.lengthHeight,
                      measurementPosition: e.measurementPosition,
                    ),
                  )
                  .toList(),
              armCircumferenceMeasurementHistory: personMeasurement.measurements
                      .every((e) => e.armCircumferenceMeasurement == null)
                  ? null
                  : (personMeasurement.measurements
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
              headCircumferenceMeasurementHistory: personMeasurement
                      .measurements
                      .every((e) => e.headCircumferenceMeasurement == null)
                  ? null
                  : (personMeasurement.measurements
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
              subscapularSkinfoldMeasurementHistory: personMeasurement
                      .measurements
                      .every((e) => e.subscapularSkinfoldMeasurement == null)
                  ? null
                  : (personMeasurement.measurements
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
              tricepsSkinfoldMeasurementHistory: personMeasurement.measurements
                      .every((e) => e.tricepsSkinfoldMeasurement == null)
                  ? null
                  : (personMeasurement.measurements
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

  List<Result>? get bodyMassIndex => _isLengthAndMassMeasuredAtTheSameDay &&
          measurementType != MeasurementType.fenton &&
          _generalAssert
      ? _lengthAndMassMap.values.map((v) {
          final value = _getBMIForAgeValue(
            v,
            person,
            precision!,
            measurementType,
          );

          return Result(
            v.length.date,
            zscore: value?.zscore,
            percentile: value?.percentile,
          );
        }).toList()
      : null;

  List<Result>? get weightForLengthHeight =>
      _isLengthAndMassMeasuredAtTheSameDay &&
              measurementType != MeasurementType.fenton &&
              _generalAssert
          ? _lengthAndMassMap.values.map((v) {
              final value = _getWeigthForLengthValue(
                v,
                person,
                precision!,
                measurementType,
              );

              return Result(
                v.length.date,
                zscore: value?.zscore,
                percentile: value?.percentile,
              );
            }).toList()
          : null;

  List<Result>? get lengthHeightForAge =>
      _generalAssert && lengthHeightMeasurementHistory.isNotEmpty
          ? lengthHeightMeasurementHistory.map((v) {
              final value = _getLengthHeightForAgeValue(
                v,
                person,
                precision!,
                measurementType,
              );
              return Result(
                v.date,
                zscore: value?.zscore,
                percentile: value?.percentile,
              );
            }).toList()
          : null;

  List<Result>? get weightForAge =>
      _generalAssert && massMeasurementHistory.isNotEmpty
          ? massMeasurementHistory.map((v) {
              final value = _getWeightForAgeValue(
                v,
                person,
                precision!,
                measurementType,
              );
              return Result(
                v.date,
                zscore: value?.zscore,
                percentile: value?.percentile,
              );
            }).toList()
          : null;

  List<Result>? get headCircumferenceForAge =>
      _generalAssert && headCircumferenceMeasurementHistory.notNullAndNotEmpty
          ? headCircumferenceMeasurementHistory!.map((v) {
              final value = _getHeadCircumferenceForAgeValue(
                v,
                person,
                precision!,
                measurementType,
              );
              return Result(
                v.date,
                zscore: value?.zscore,
                percentile: value?.percentile,
              );
            }).toList()
          : null;

  List<Result>? get subscapularSkinfoldForAge => _generalAssert &&
          measurementType != MeasurementType.fenton &&
          subscapularSkinfoldMeasurementHistory.notNullAndNotEmpty
      ? subscapularSkinfoldMeasurementHistory!.map((v) {
          final value = _getSubscapularSkinfoldForAgeValue(
            v,
            person,
            precision!,
            measurementType,
          );
          return Result(
            v.date,
            zscore: value?.zscore,
            percentile: value?.percentile,
          );
        }).toList()
      : null;

  List<Result>? get tricepsSkinfoldForAge => _generalAssert &&
          measurementType != MeasurementType.fenton &&
          tricepsSkinfoldMeasurementHistory.notNullAndNotEmpty
      ? tricepsSkinfoldMeasurementHistory!.map((v) {
          final value = _getTricepsSkinfoldForAgeValue(
            v,
            person,
            precision!,
            measurementType,
          );
          return Result(
            v.date,
            zscore: value?.zscore,
            percentile: value?.percentile,
          );
        }).toList()
      : null;

  List<Result>? get armCircumferenceForAge => _generalAssert &&
          measurementType != MeasurementType.fenton &&
          armCircumferenceMeasurementHistory.notNullAndNotEmpty
      ? armCircumferenceMeasurementHistory!.map((v) {
          final value = _getArmCircumferenceForAgeValue(
            v,
            person,
            precision!,
            measurementType,
          );
          return Result(
            v.date,
            zscore: value?.zscore,
            percentile: value?.percentile,
          );
        }).toList()
      : null;

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

  bool get _generalAssert {
    final age = person.age;

    final lengthMeasurementCategory = ([
      lengthHeightMeasurementHistory,
      headCircumferenceMeasurementHistory,
      subscapularSkinfoldMeasurementHistory,
      tricepsSkinfoldMeasurementHistory,
      armCircumferenceMeasurementHistory,
    ]..removeWhere((e) => e == null))
        .map((e) => e!)
        .expand((e) => e);

    final isLengthDateConstraint = lengthMeasurementCategory.every(
      (x) => x.date >= age.dateOfBirth && x.date <= Date.today(),
    );

    final isWeigthDateConstraint = massMeasurementHistory.every(
      (x) => x.date >= age.dateOfBirth && x.date <= Date.today(),
    );

    final isMeasurementTypeConstraint = switch (measurementType) {
      MeasurementType.cdc => lengthMeasurementCategory.every(
            (x) => age.ageInTotalMonthsAtDate(x.date) <= 240,
          ) &&
          massMeasurementHistory.every(
            (x) => age.ageInTotalMonthsAtDate(x.date) <= 240,
          ),
      MeasurementType.who => lengthMeasurementCategory.every(
            (x) => age.ageInTotalMonthsAtDate(x.date) <= 228,
          ) &&
          massMeasurementHistory.every(
            (x) => age.ageInTotalMonthsAtDate(x.date) <= 228,
          ),
      MeasurementType.fenton => lengthMeasurementCategory.every((x) {
            final ageInTotalWeeksAtDate = age.ageInTotalWeeksAtDate(x.date);
            return ageInTotalWeeksAtDate >= 22 && ageInTotalWeeksAtDate <= 50;
          }) &&
          massMeasurementHistory.every((x) {
            final ageInTotalWeeksAtDate = age.ageInTotalWeeksAtDate(x.date);
            return ageInTotalWeeksAtDate >= 22 && ageInTotalWeeksAtDate <= 50;
          }),
    };

    return isLengthDateConstraint &&
        isWeigthDateConstraint &&
        isMeasurementTypeConstraint;
  }
}

enum MeasurementType {
  cdc,
  who,
  fenton,
  ;
}

@freezed
class Result with _$Result {
  factory Result(
    Date date, {
    num? zscore,
    num? percentile,
  }) = _Result;
  const Result._();

  factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);
}

@freezed
class PersonMeasurement with _$PersonMeasurement {
  factory PersonMeasurement(
    Person person, {
    required List<SameDayMeasurement> measurements,
  }) = _PersonMeasurement;
  const PersonMeasurement._();

  factory PersonMeasurement.fromJson(Map<String, dynamic> json) =>
      _$PersonMeasurementFromJson(json);
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
  factory Survey(List<PersonSurvey> surveyData) = _Survey;

  const Survey._();

  factory Survey.who({
    Precision precision = Precision.two,
    required List<PersonMeasurement> data,
  }) =>
      Survey(
        data
            .map(
              (e) => PersonSurvey.sameDayMeasurement(
                measurementType: MeasurementType.who,
                personMeasurement: e,
                precision: precision,
              ),
            )
            .toList(),
      );

  factory Survey.cdc({
    Precision precision = Precision.two,
    required List<PersonMeasurement> data,
  }) =>
      Survey(
        data
            .map(
              (e) => PersonSurvey.sameDayMeasurement(
                measurementType: MeasurementType.cdc,
                personMeasurement: e,
                precision: precision,
              ),
            )
            .toList(),
      );

  factory Survey.fenton({
    Precision precision = Precision.two,
    required List<PersonMeasurement> data,
  }) =>
      Survey(
        data
            .map(
              (e) => PersonSurvey.sameDayMeasurement(
                measurementType: MeasurementType.fenton,
                personMeasurement: e,
                precision: precision,
              ),
            )
            .toList(),
      );

  factory Survey.fromJson(Map<String, dynamic> json) => _$SurveyFromJson(json);
}
