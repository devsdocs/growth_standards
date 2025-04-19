// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tools.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MassMeasurementHistory _$MassMeasurementHistoryFromJson(
        Map<String, dynamic> json) =>
    _MassMeasurementHistory(
      Date.fromJson(json['date'] as Map<String, dynamic>),
      Mass.fromJson(json['measurement'] as Map<String, dynamic>),
      isOedema: json['isOedema'] as bool? ?? false,
    );

Map<String, dynamic> _$MassMeasurementHistoryToJson(
        _MassMeasurementHistory instance) =>
    <String, dynamic>{
      'date': instance.date.toJson(),
      'measurement': instance.measurement.toJson(),
      'isOedema': instance.isOedema,
    };

_LengthMeasurementHistory _$LengthMeasurementHistoryFromJson(
        Map<String, dynamic> json) =>
    _LengthMeasurementHistory(
      Date.fromJson(json['date'] as Map<String, dynamic>),
      Length.fromJson(json['measurement'] as Map<String, dynamic>),
      measurementPosition: $enumDecodeNullable(
              _$LengthHeightMeasurementPositionEnumMap,
              json['measurementPosition']) ??
          LengthHeightMeasurementPosition.recumbent,
    );

Map<String, dynamic> _$LengthMeasurementHistoryToJson(
        _LengthMeasurementHistory instance) =>
    <String, dynamic>{
      'date': instance.date.toJson(),
      'measurement': instance.measurement.toJson(),
      'measurementPosition': _$LengthHeightMeasurementPositionEnumMap[
          instance.measurementPosition],
    };

const _$LengthHeightMeasurementPositionEnumMap = {
  LengthHeightMeasurementPosition.recumbent: 'recumbent',
  LengthHeightMeasurementPosition.standing: 'standing',
};
