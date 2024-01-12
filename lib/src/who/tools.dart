import 'dart:collection';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:growth_standards/src/common/model/age.dart';
import 'package:growth_standards/src/common/typedef.dart';
import 'package:growth_standards/src/who/standard/standard.dart';
import 'package:reusable_tools/reusable_tools.dart';
import 'package:super_measurement/super_measurement.dart';

class WHOGrowthStandardsBodyMassIndexMeasurementConverter
    implements
        JsonConverter<WHOGrowthStandardsBodyMassIndexMeasurement,
            Map<String, dynamic>> {
  const WHOGrowthStandardsBodyMassIndexMeasurementConverter();
  @override
  WHOGrowthStandardsBodyMassIndexMeasurement fromJson(
    Map<String, dynamic> json,
  ) =>
      WHOGrowthStandardsBodyMassIndexMeasurement(
        json['value'] as num,
        age: Age.fromJson(
          json['age'] as Map<String, dynamic>,
        ),
      );

  @override
  Map<String, dynamic> toJson(
    WHOGrowthStandardsBodyMassIndexMeasurement object,
  ) =>
      {'value': object.value, 'age': object.age.toJson()};
}

VelocityMonths parseVelocityIncrement(String source) {
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
      return (low: splitC.first ~/ 4, high: splitC.last);
    }
    return (low: splitC.first ~/ 4, high: splitC.last ~/ 4);
  } else {
    return (low: splitC.first, high: splitC.last);
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

/// [measurementHistory] field can be either [List] of [MassMeasurementHistory] or [List] of [LengthMeasurementHistory]
class VelocityPastMeasurement<T extends Unit<T>> {
  VelocityPastMeasurement(this.measurementHistory);

  /// Either [List] of [MassMeasurementHistory] or [List] of [LengthMeasurementHistory]
  final List<MeasurementHistory<T>> measurementHistory;

  Map<Date, T> get sortedMap => Map<Date, T>.fromEntries(
        _splayMap.entries,
      );

  SplayTreeMap<Date, T> get _splayMap => SplayTreeMap<Date, T>.of(
        unsortedMap,
      );

  Map<Date, T> get unsortedMap =>
      measurementHistory.asMap().map((_, v) => MapEntry(v.date, v.unit));

  Map<({Date dateBefore, Date dateAfter, Duration duration}), num>
      get incrementalData {
    final List<Date> keys = sortedMap.keys.toList();
    if (keys.isEmpty || keys.length == 1) return {};
    final Map<({Date dateBefore, Date dateAfter, Duration duration}), num>
        result = {};

    for (int i = 1; i < keys.length; i++) {
      final ({Date dateBefore, Date dateAfter, Duration duration}) duration = (
        duration: keys[i].difference(keys[i - 1]),
        dateBefore: keys[i - 1],
        dateAfter: keys[i]
      );
      final num valueDifference =
          sortedMap[keys[i]]!.value! - sortedMap[keys[i - 1]]!.value!;
      result[duration] = valueDifference;
    }

    return result;
  }
}

class MassMeasurementHistory extends MeasurementHistory<Mass> {
  MassMeasurementHistory(this.date, this.unit);

  @override
  final Date date;
  @override
  final Mass unit;
}

class LengthMeasurementHistory extends MeasurementHistory<Length> {
  LengthMeasurementHistory(this.date, this.unit);

  @override
  final Date date;
  @override
  final Length unit;
}

abstract class MeasurementHistory<T extends Unit<T>> {
  T get unit;
  Date get date;
}
