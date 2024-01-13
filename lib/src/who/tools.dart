import 'dart:collection';
import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:growth_standards/src/common/model/age.dart';
import 'package:growth_standards/src/common/tools.dart';
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

  Map<Date, T> get sortedByDate => Map<Date, T>.fromEntries(
        _splayMap.entries,
      );

  SplayTreeMap<Date, T> get _splayMap => SplayTreeMap<Date, T>.of(
        unsortedDate,
      );

  Map<Date, T> get unsortedDate =>
      measurementHistory.asMap().map((_, v) => MapEntry(v.date, v.unit));

  Map<VelocityIncrement,
          Map<({Date dateBefore, Date dateAfter, Duration duration}), num>>
      get incrementalData {
    final List<Date> keys = sortedByDate.keys.toList();
    final length = keys.length;
    if (keys.isEmpty || length == 1) return {};
    final Map<VelocityIncrement,
            Map<({Date dateBefore, Date dateAfter, Duration duration}), num>>
        result = {};

    for (int i = 0; i < length - 1; i++) {
      for (int j = i + 1; j < length; j++) {
        final before = keys[i];
        final now = keys[j];
        final ({Date dateBefore, Date dateAfter, Duration duration}) data = (
          duration: now.difference(before),
          dateBefore: before,
          dateAfter: now
        );

        //! Concept
        final countMos =
            TimeIntervalCount(before.year, before.month.number, before.date)
                .ageAtDate(now.toDateTime())
                .months;

        VelocityIncrement incremental;
        if (countMos == 1) {
          incremental = VelocityIncrement.$1;
        } else if (countMos == 2) {
          incremental = VelocityIncrement.$2;
        } else if (countMos == 3) {
          incremental = VelocityIncrement.$3;
        } else if (countMos == 4) {
          incremental = VelocityIncrement.$4;
        } else if (countMos == 6) {
          incremental = VelocityIncrement.$6;
        } else {
          continue; // Skip durations other than 1, 2, 3, 4, and 6 months
        }

        if (!result.containsKey(incremental)) {
          result[incremental] = {};
        }

        final num valueDifference =
            sortedByDate[now]!.value! - sortedByDate[before]!.value!;

        result[incremental]![data] = valueDifference;
      }
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

class MassMeasurementHistoryConverter
    implements JsonConverter<List<MassMeasurementHistory>, List<dynamic>> {
  const MassMeasurementHistoryConverter();

  @override
  List<MassMeasurementHistory> fromJson(List json) => json
      .map(
        (e) => MassMeasurementHistory(
          Date.fromJson(
            jsonDecode(
              (e as Map<String, dynamic>)['date'].toString(),
            ) as Map<String, dynamic>,
          ),
          const MassConverter().fromJson(
            jsonDecode(
              e['unit'].toString(),
            ) as Map<String, dynamic>,
          ),
        ),
      )
      .toList();

  @override
  List toJson(List<MassMeasurementHistory> object) => object
      .map(
        (e) => {
          'date': e.date.toJson(),
          'unit': e.unit.toJson(),
        },
      )
      .toList();
}

class LengthMeasurementHistoryConverter
    implements JsonConverter<List<LengthMeasurementHistory>, List<dynamic>> {
  const LengthMeasurementHistoryConverter();

  @override
  List<LengthMeasurementHistory> fromJson(List json) => json.map(
        (e) {
          e as Map<String, dynamic>;
          return LengthMeasurementHistory(
            Date.fromJson(
              e['date'] as Map<String, dynamic>,
            ),
            const LengthConverter().fromJson(
              e['unit'] as Map<String, dynamic>,
            ),
          );
        },
      ).toList();

  @override
  List toJson(List<LengthMeasurementHistory> object) => object
      .map(
        (e) => {
          'date': e.date.toJson(),
          'unit': e.unit.toJson(),
        },
      )
      .toList();
}
