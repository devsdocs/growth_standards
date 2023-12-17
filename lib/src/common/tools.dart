import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:super_measurement/super_measurement.dart';

class MassConverter implements JsonConverter<Mass, Map<String, dynamic>> {
  const MassConverter();
  @override
  Mass fromJson(Map<String, dynamic> json) => massUnitValues
      .map[(json['mass'] as Map<String, dynamic>)['unit']]!.construct
      .withValue(json['value'] as num);

  @override
  Map<String, dynamic> toJson(Mass object) => object.toJson();
}

class LengthConverter implements JsonConverter<Length, Map<String, dynamic>> {
  const LengthConverter();
  @override
  Length fromJson(Map<String, dynamic> json) => lengthUnitValues
      .map[(json['length'] as Map<String, dynamic>)['unit']]!.construct
      .withValue(json['value'] as num);

  @override
  Map<String, dynamic> toJson(Length object) => object.toJson();
}
