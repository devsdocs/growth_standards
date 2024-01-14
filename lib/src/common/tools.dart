import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:growth_standards/src/common/model/age.dart';
import 'package:super_measurement/super_measurement.dart';

class MassConverter implements JsonConverter<Mass, Map<String, dynamic>> {
  const MassConverter();
  @override
  Mass fromJson(Map<String, dynamic> json) {
    final jsonMass = json['mass'] as Map<String, dynamic>;
    return massUnitValues.map[jsonMass['unit']]!.construct
        .withValue(jsonMass['value'] as num);
  }

  @override
  Map<String, dynamic> toJson(Mass object) => object.toJson();
}

class LengthConverter implements JsonConverter<Length, Map<String, dynamic>> {
  const LengthConverter();
  @override
  Length fromJson(Map<String, dynamic> json) {
    final jsonLength = json['length'] as Map<String, dynamic>;
    return lengthUnitValues.map[jsonLength['unit']]!.construct
        .withValue(jsonLength['value'] as num);
  }

  @override
  Map<String, dynamic> toJson(Length object) => object.toJson();
}

Age checkObservationDate(Age age, [Date? observationDate]) =>
    observationDate == null ? age : age.ageAtPastDate(observationDate);
