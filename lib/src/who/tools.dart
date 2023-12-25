import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:growth_standards/src/common/model/age.dart';
import 'package:growth_standards/src/common/typedef.dart';
import 'package:growth_standards/src/who/standard/standard.dart';
import 'package:reusable_tools/reusable_tools.dart';

class BodyMassIndexMeasurementConverter
    implements JsonConverter<BodyMassIndexMeasurement, Map<String, dynamic>> {
  const BodyMassIndexMeasurementConverter();
  @override
  BodyMassIndexMeasurement fromJson(Map<String, dynamic> json) =>
      BodyMassIndexMeasurement(
        json['value'] as num,
        age: Age.fromJson(
          json['age'] as Map<String, dynamic>,
        ),
      );

  @override
  Map<String, dynamic> toJson(BodyMassIndexMeasurement object) =>
      {'value': object.value, 'age': object.age.toJson()};
}

WeeksMonths parseVelocityIncrement(String source) {
  final clean = source.clean.splitSpace.first;
  final splitC = clean.split('-').map(
        (e) => int.tryParse(e) == null
            ? int.parse(
                e.replaceAll(RegExp('[a-zA-z]'), '').replaceAll(' ', ''),
              )
            : int.parse(e),
      );
  if (splitC.length > 2) {
    throw Exception('More than 2 element');
  }
  if (source.contains('wks')) {
    if (source.contains('mo')) {
      return (
        weeks: null,
        weeksMonths: (low: splitC.first, high: splitC.last),
        months: null,
      );
    }
    return (
      weeks: (low: splitC.first, high: splitC.last),
      weeksMonths: null,
      months: null,
    );
  } else {
    return (
      weeks: null,
      weeksMonths: null,
      months: (low: splitC.first, high: splitC.last)
    );
  }
}

enum VelocityIncrement {
  $1(1),
  $2(2),
  $3(3),
  $4(4),
  $6(6),
  ;

  const VelocityIncrement(this.value);
  final int value;
}

VelocityIncrement parseIncrement(String val) => VelocityIncrement.values
    .singleWhere((element) => element.value == int.parse(val));
