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
part 'survey.part.dart';

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

  Map<Date, ({num zscore, num percentile, num bmiValue})?>? get bodyMassIndex =>
      _isLengthAndMassMeasuredAtTheSameDay &&
              measurementType != MeasurementType.fenton &&
              _generalAssert
          ? _lengthAndMassMap.map((_, v) {
              final bmiValue =
                  _getBMIForAgeValue(v, person, precision!, measurementType);

              return MapEntry(v.length.date, bmiValue);
            })
          : null;

  Map<Date, ({num zscore, num percentile})?>? get weightForLengthHeight =>
      _isLengthAndMassMeasuredAtTheSameDay &&
              measurementType != MeasurementType.fenton &&
              _generalAssert
          ? _lengthAndMassMap.map((_, v) {
              final value = _getWeigthForLengthValue(
                v,
                person,
                precision!,
                measurementType,
              );

              return MapEntry(v.length.date, value);
            })
          : null;

  Map<Date, ({num zscore, num percentile})?>? get lengthHeightForAge =>
      _generalAssert && lengthHeightMeasurementHistory.isNotEmpty ? {} : null;

  Map<Date, ({num zscore, num percentile})?>? get weightForAge =>
      _generalAssert && massMeasurementHistory.isNotEmpty ? {} : null;

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
        .map((e) => e!);

    final isLengthDateConstraint = lengthMeasurementCategory.every(
      (e) => e.every(
        (x) => x.date >= age.dateOfBirth && x.date <= Date.today(),
      ),
    );

    final isWeigthDateConstraint = massMeasurementHistory.every(
      (x) => x.date >= age.dateOfBirth && x.date <= Date.today(),
    );

    final isMeasurementTypeConstraint = switch (measurementType) {
      MeasurementType.cdc => lengthMeasurementCategory.every(
            (e) => e.every((x) {
              final ageInTotalMonthsAtDate = age.ageInTotalMonthsAtDate(x.date);
              return ageInTotalMonthsAtDate <= 240;
            }),
          ) &&
          massMeasurementHistory.every((x) {
            final ageInTotalMonthsAtDate = age.ageInTotalMonthsAtDate(x.date);
            return ageInTotalMonthsAtDate <= 240;
          }),
      MeasurementType.who => lengthMeasurementCategory.every(
            (e) => e.every((x) {
              final ageInTotalMonthsAtDate = age.ageInTotalMonthsAtDate(x.date);
              return ageInTotalMonthsAtDate <= 228;
            }),
          ) &&
          massMeasurementHistory.every((x) {
            final ageInTotalMonthsAtDate = age.ageInTotalMonthsAtDate(x.date);
            return ageInTotalMonthsAtDate <= 228;
          }),
      MeasurementType.fenton => lengthMeasurementCategory.every(
            (e) => e.every((x) {
              final ageInTotalWeeksAtDate = age.ageInTotalWeeksAtDate(x.date);
              return ageInTotalWeeksAtDate >= 22 && ageInTotalWeeksAtDate <= 50;
            }),
          ) &&
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
