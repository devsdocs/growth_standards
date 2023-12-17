import 'package:json_annotation/json_annotation.dart';

@JsonEnum(valueField: 'number')
enum Sex {
  male(1),
  female(2),
  ;

  const Sex(this.number);
  final int number;
}

@JsonEnum(valueField: 'value')
enum LengthHeigthMeasurementPosition {
  recumbent('recumbent'),
  standing('standing'),
  ;

  const LengthHeigthMeasurementPosition(this.value);
  final String value;
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
