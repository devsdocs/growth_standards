import 'dart:collection';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:growth_standards/src/category/who/standard/standard.dart';
import 'package:growth_standards/src/category/who/typedef.dart';
import 'package:growth_standards/src/common/extension.dart';
import 'package:growth_standards/src/common/model/age.dart';
import 'package:growth_standards/src/common/types.dart';
import 'package:super_measurement/super_measurement.dart';

part 'tools.freezed.dart';
part 'tools.g.dart';

class WHOGrowthStandardsBodyMassIndexMeasurementConverter
    implements
        JsonConverter<
          WHOGrowthStandardsBodyMassIndexMeasurement,
          Map<String, dynamic>
        > {
  const WHOGrowthStandardsBodyMassIndexMeasurementConverter();
  @override
  WHOGrowthStandardsBodyMassIndexMeasurement fromJson(
    Map<String, dynamic> json,
  ) => WHOGrowthStandardsBodyMassIndexMeasurement(
    json['value'] as num,
    age: Age.fromJson(json['age'] as Map<String, dynamic>),
  );

  @override
  Map<String, dynamic> toJson(
    WHOGrowthStandardsBodyMassIndexMeasurement object,
  ) => {'value': object.value, 'age': object.age.toJson()};
}

VelocityMonths parseVelocityIncrement(String source) {
  final clean = source.clean.splitSpace.first;
  final splitC = clean
      .split('-')
      .map(
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

@JsonEnum(valueField: 'value')
enum VelocityIncrement {
  $1(1),
  $2(2),
  $3(3),
  $4(4),
  $6(6);

  const VelocityIncrement(this.value);
  final int value;
}

const velocityEnum = {
  1: VelocityIncrement.$1,
  2: VelocityIncrement.$2,
  3: VelocityIncrement.$3,
  4: VelocityIncrement.$4,
  6: VelocityIncrement.$6,
};

VelocityIncrement parseIncrement(String val) => velocityEnum[int.parse(val)]!;

/// [measurementHistory] field can be either [List] of [MassMeasurementHistory]
/// or [List] of [LengthMeasurementHistory]
class VelocityPastMeasurement<T extends Unit<T>> {
  VelocityPastMeasurement(this.measurementHistory, this.convertTo);

  /// Either [List] of [MassMeasurementHistory] or [List] of [LengthMeasurementHistory]
  final List<MeasurementHistory<T>> measurementHistory;

  final T convertTo;

  Map<Date, T> get sortedByDate => Map<Date, T>.fromEntries(_splayMap.entries);

  SplayTreeMap<Date, T> get _splayMap => SplayTreeMap<Date, T>.of(unsortedDate);

  Map<Date, T> get unsortedDate =>
      measurementHistory.asMap().map((_, v) => MapEntry(v.date, v.measurement));

  Map<VelocityIncrement, Map<({Date dateBefore, Date dateAfter}), num>>
  get incrementalData {
    final keys = sortedByDate.keys.toList();
    final length = keys.length;
    if (keys.isEmpty || length == 1) return {};
    final Map<VelocityIncrement, Map<({Date dateBefore, Date dateAfter}), num>>
    result = {};

    for (int i = 0; i < length - 1; i++) {
      for (int j = i + 1; j < length; j++) {
        final before = keys[i];
        final now = keys[j];

        final ageAtDate = TimeIntervalCount(
          before.year,
          before.month.number,
          before.date,
        ).ageAtDate(now.toDateTime());

        if (ageAtDate.years > 0) continue;

        final countMos = ageAtDate.months;

        final incremental = velocityEnum[countMos];

        if (incremental == null) continue;

        if (!result.containsKey(incremental)) result[incremental] = {};

        final data = (dateBefore: before, dateAfter: now);

        final convertNow = sortedByDate[now]!.convertTo(convertTo);
        final convertBefore = sortedByDate[before]!.convertTo(convertTo);
        final valueDifference = convertNow.value - convertBefore.value;

        result[incremental]![data] = valueDifference;
      }
    }

    return result;
  }
}

extension Measurement<T extends Unit<T>> on List<MeasurementHistory<T>> {
  Map<Date, T> get mapByDate =>
      asMap().map((_, v) => MapEntry(v.date, v.measurement));
  Map<T, Date> get mapByUnit =>
      asMap().map((_, v) => MapEntry(v.measurement, v.date));
}

@freezed
sealed class MassMeasurementHistory extends MeasurementHistory<Mass>
    with _$MassMeasurementHistory {
  factory MassMeasurementHistory(
    Date date,
    Mass measurement, {
    @Default(false) bool? isOedema,
  }) = _MassMeasurementHistory;

  factory MassMeasurementHistory.fromJson(Map<String, dynamic> json) =>
      _$MassMeasurementHistoryFromJson(json);

  const MassMeasurementHistory._();
}

@freezed
sealed class LengthMeasurementHistory extends MeasurementHistory<Length>
    with _$LengthMeasurementHistory {
  factory LengthMeasurementHistory(
    Date date,
    Length measurement, {
    @Default(LengthHeightMeasurementPosition.recumbent)
    LengthHeightMeasurementPosition? measurementPosition,
  }) = _LengthMeasurementHistory;

  factory LengthMeasurementHistory.fromJson(Map<String, dynamic> json) =>
      _$LengthMeasurementHistoryFromJson(json);

  const LengthMeasurementHistory._();
}

sealed class MeasurementHistory<T extends Unit<T>> {
  const MeasurementHistory();
  T get measurement;
  Date get date;
}

extension MapExt1
    on Map<VelocityIncrement, Map<VelocityMonths, ZScorePercentile>?> {
  Map<VelocityIncrement, Map<VelocityMonths, ZScorePercentile>>
  get removeAllNull => (this..removeWhere((_, v) => v == null)).map(
    (k3, v3) => MapEntry(k3, v3!),
  );
}

extension MapExt2 on Map<VelocityMonths, ZScorePercentile?> {
  bool get isAllValuesNull => entries.every((e) => e.value == null);
  Map<VelocityMonths, ZScorePercentile> get removeAllNull =>
      (this..removeWhere((_, v) => v == null)).map(
        (k3, v3) => MapEntry(k3, v3!),
      );
}
