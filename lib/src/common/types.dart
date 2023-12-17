import 'package:json_annotation/json_annotation.dart';
import 'package:super_measurement/super_measurement.dart';

@JsonEnum(valueField: 'number')
enum Sex {
  male(1),
  female(2),
  ;

  const Sex(this.number);
  final int number;
}

enum LengthHeigthMeasurementPosition {
  recumbent,
  standing,
  ;
}

enum OedemaExist {
  yes,
  no,
  ;
}

@JsonEnum(valueField: 'number')
enum Months {
  january(1, 'January', 31),
  february(2, 'February', 28),
  // februaryLeap(2, 'February', 29),
  march(3, 'March', 31),
  april(4, 'April', 30),
  may(5, 'May', 31),
  june(6, 'June', 30),
  july(7, 'July', 31),
  august(8, 'August', 31),
  september(9, 'September', 30),
  october(10, 'October', 31),
  november(11, 'November', 30),
  december(12, 'December', 31),
  ;

  const Months(this.number, this.text, this.date);
  final int date;
  final int number;
  final String text;
}

Map<String, dynamic> getLengthEnumName(Length length) => {
      LengthUnit.values
          .singleWhere(
            (element) => element.construct.runtimeType == length.runtimeType,
          )
          .name: length.value,
    };

Length getLengthEnum(Map<String, dynamic> data) => LengthUnit.values
    .singleWhere((element) => element.name == data.keys.first)
    .construct
    .withValue(data.values.first as num);

Mass getMassEnum(Map<String, dynamic> data) => MassUnit.values
    .singleWhere((element) => element.name == data.keys.first)
    .construct
    .withValue(data.values.first as num);

Map<String, dynamic> getMassEnumName(Mass mass) => {
      MassUnit.values
          .singleWhere(
            (element) => element.construct.runtimeType == mass.runtimeType,
          )
          .name: mass.value,
    };

class MassConverter implements JsonConverter<Mass, Map<String, dynamic>> {
  const MassConverter();
  @override
  Mass fromJson(Map<String, dynamic> json) => getMassEnum(json);

  @override
  Map<String, dynamic> toJson(Mass object) => getMassEnumName(object);
}

class LengthConverter implements JsonConverter<Length, Map<String, dynamic>> {
  const LengthConverter();
  @override
  Length fromJson(Map<String, dynamic> json) => getLengthEnum(json);

  @override
  Map<String, dynamic> toJson(Length object) => getLengthEnumName(object);
}
