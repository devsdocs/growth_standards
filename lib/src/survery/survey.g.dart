// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'survey.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PersonSurveryImpl _$$PersonSurveryImplFromJson(Map<String, dynamic> json) =>
    _$PersonSurveryImpl(
      person: Person.fromJson(json['person'] as Map<String, dynamic>),
      measurementType:
          $enumDecode(_$MeasurementTypeEnumMap, json['measurementType']),
      precision: $enumDecodeNullable(_$PrecisionEnumMap, json['precision']) ??
          Precision.two,
      massMeasurementHistory: const MassMeasurementHistoryConverter()
          .fromJson(json['massMeasurementHistory'] as List),
      lengthHeightMeasurementHistory: const LengthMeasurementHistoryConverter()
          .fromJson(json['lengthHeightMeasurementHistory'] as List),
      headCircumferenceMeasurementHistory: _$JsonConverterFromJson<
              List<dynamic>, List<LengthMeasurementHistory>>(
          json['headCircumferenceMeasurementHistory'],
          const LengthMeasurementHistoryConverter().fromJson),
      subscapularSkinfoldMeasurementHistory: _$JsonConverterFromJson<
              List<dynamic>, List<LengthMeasurementHistory>>(
          json['subscapularSkinfoldMeasurementHistory'],
          const LengthMeasurementHistoryConverter().fromJson),
      tricepsSkinfoldMeasurementHistory: _$JsonConverterFromJson<List<dynamic>,
              List<LengthMeasurementHistory>>(
          json['tricepsSkinfoldMeasurementHistory'],
          const LengthMeasurementHistoryConverter().fromJson),
      armCircumferenceMeasurementHistory: _$JsonConverterFromJson<List<dynamic>,
              List<LengthMeasurementHistory>>(
          json['armCircumferenceMeasurementHistory'],
          const LengthMeasurementHistoryConverter().fromJson),
    );

Map<String, dynamic> _$$PersonSurveryImplToJson(_$PersonSurveryImpl instance) =>
    <String, dynamic>{
      'person': instance.person,
      'measurementType': _$MeasurementTypeEnumMap[instance.measurementType]!,
      'precision': _$PrecisionEnumMap[instance.precision],
      'massMeasurementHistory': const MassMeasurementHistoryConverter()
          .toJson(instance.massMeasurementHistory),
      'lengthHeightMeasurementHistory':
          const LengthMeasurementHistoryConverter()
              .toJson(instance.lengthHeightMeasurementHistory),
      'headCircumferenceMeasurementHistory':
          _$JsonConverterToJson<List<dynamic>, List<LengthMeasurementHistory>>(
              instance.headCircumferenceMeasurementHistory,
              const LengthMeasurementHistoryConverter().toJson),
      'subscapularSkinfoldMeasurementHistory':
          _$JsonConverterToJson<List<dynamic>, List<LengthMeasurementHistory>>(
              instance.subscapularSkinfoldMeasurementHistory,
              const LengthMeasurementHistoryConverter().toJson),
      'tricepsSkinfoldMeasurementHistory':
          _$JsonConverterToJson<List<dynamic>, List<LengthMeasurementHistory>>(
              instance.tricepsSkinfoldMeasurementHistory,
              const LengthMeasurementHistoryConverter().toJson),
      'armCircumferenceMeasurementHistory':
          _$JsonConverterToJson<List<dynamic>, List<LengthMeasurementHistory>>(
              instance.armCircumferenceMeasurementHistory,
              const LengthMeasurementHistoryConverter().toJson),
    };

const _$MeasurementTypeEnumMap = {
  MeasurementType.cdc: 'cdc',
  MeasurementType.who: 'who',
  MeasurementType.fenton: 'fenton',
};

const _$PrecisionEnumMap = {
  Precision.none: 'none',
  Precision.zero: 'zero',
  Precision.one: 'one',
  Precision.two: 'two',
  Precision.three: 'three',
  Precision.four: 'four',
  Precision.five: 'five',
  Precision.six: 'six',
  Precision.seven: 'seven',
  Precision.eight: 'eight',
  Precision.nine: 'nine',
  Precision.ten: 'ten',
};

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) =>
    value == null ? null : toJson(value);

_$SameDayMeasurementImpl _$$SameDayMeasurementImplFromJson(
        Map<String, dynamic> json) =>
    _$SameDayMeasurementImpl(
      Date.fromJson(json['date'] as Map<String, dynamic>),
      mass:
          const MassConverter().fromJson(json['mass'] as Map<String, dynamic>),
      lengthHeight:
          Length.fromJson(json['lengthHeight'] as Map<String, dynamic>),
      isOedema: json['isOedema'] as bool? ?? false,
      measurementPosition: $enumDecodeNullable(
              _$LengthHeigthMeasurementPositionEnumMap,
              json['measurementPosition']) ??
          LengthHeigthMeasurementPosition.recumbent,
      headCircumferenceMeasurement:
          _$JsonConverterFromJson<Map<String, dynamic>, Length>(
              json['headCircumferenceMeasurement'],
              const LengthConverter().fromJson),
      subscapularSkinfoldMeasurement:
          _$JsonConverterFromJson<Map<String, dynamic>, Length>(
              json['subscapularSkinfoldMeasurement'],
              const LengthConverter().fromJson),
      tricepsSkinfoldMeasurement:
          _$JsonConverterFromJson<Map<String, dynamic>, Length>(
              json['tricepsSkinfoldMeasurement'],
              const LengthConverter().fromJson),
      armCircumferenceMeasurement:
          _$JsonConverterFromJson<Map<String, dynamic>, Length>(
              json['armCircumferenceMeasurement'],
              const LengthConverter().fromJson),
    );

Map<String, dynamic> _$$SameDayMeasurementImplToJson(
        _$SameDayMeasurementImpl instance) =>
    <String, dynamic>{
      'date': instance.date,
      'mass': const MassConverter().toJson(instance.mass),
      'lengthHeight': instance.lengthHeight,
      'isOedema': instance.isOedema,
      'measurementPosition': _$LengthHeigthMeasurementPositionEnumMap[
          instance.measurementPosition],
      'headCircumferenceMeasurement':
          _$JsonConverterToJson<Map<String, dynamic>, Length>(
              instance.headCircumferenceMeasurement,
              const LengthConverter().toJson),
      'subscapularSkinfoldMeasurement':
          _$JsonConverterToJson<Map<String, dynamic>, Length>(
              instance.subscapularSkinfoldMeasurement,
              const LengthConverter().toJson),
      'tricepsSkinfoldMeasurement':
          _$JsonConverterToJson<Map<String, dynamic>, Length>(
              instance.tricepsSkinfoldMeasurement,
              const LengthConverter().toJson),
      'armCircumferenceMeasurement':
          _$JsonConverterToJson<Map<String, dynamic>, Length>(
              instance.armCircumferenceMeasurement,
              const LengthConverter().toJson),
    };

const _$LengthHeigthMeasurementPositionEnumMap = {
  LengthHeigthMeasurementPosition.recumbent: 'recumbent',
  LengthHeigthMeasurementPosition.standing: 'standing',
};

_$PersonImpl _$$PersonImplFromJson(Map<String, dynamic> json) => _$PersonImpl(
      sex: $enumDecode(_$SexEnumMap, json['sex']),
      dateOfBirth: const DateConverter()
          .fromJson(json['dateOfBirth'] as Map<String, dynamic>),
      id: json['id'] as String?,
      name: json['name'] as String?,
      address: json['address'] as String?,
    );

Map<String, dynamic> _$$PersonImplToJson(_$PersonImpl instance) =>
    <String, dynamic>{
      'sex': _$SexEnumMap[instance.sex]!,
      'dateOfBirth': const DateConverter().toJson(instance.dateOfBirth),
      'id': instance.id,
      'name': instance.name,
      'address': instance.address,
    };

const _$SexEnumMap = {
  Sex.male: 1,
  Sex.female: 2,
};
