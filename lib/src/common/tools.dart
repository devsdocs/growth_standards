import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:growth_standards/src/common/model/age.dart';
import 'package:super_measurement/super_measurement.dart';

class MassConverter implements JsonConverter<Mass, Map<String, dynamic>> {
  const MassConverter();
  @override
  Mass fromJson(Map<String, dynamic> json) => Mass.fromJson(json);

  @override
  Map<String, dynamic> toJson(Mass object) => object.toJson();
}

class LengthConverter implements JsonConverter<Length, Map<String, dynamic>> {
  const LengthConverter();
  @override
  Length fromJson(Map<String, dynamic> json) => Length.fromJson(json);

  @override
  Map<String, dynamic> toJson(Length object) => object.toJson();
}

Age checkObservationDate(Age age, [Date? observationDate]) =>
    observationDate == null ? age : age.ageAtPastDate(observationDate);

class AgeConverter implements JsonConverter<Age, Map<String, dynamic>> {
  const AgeConverter();
  @override
  Age fromJson(Map<String, dynamic> json) => Age.fromJson(json);

  @override
  Map<String, dynamic> toJson(Age object) => object.toJson();
}

class DateConverter implements JsonConverter<Date, Map<String, dynamic>> {
  const DateConverter();
  @override
  Date fromJson(Map<String, dynamic> json) => Date.fromJson(json);

  @override
  Map<String, dynamic> toJson(Date object) => object.toJson();
}
