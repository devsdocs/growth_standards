// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fenton.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FentonHeadCircumferenceForAgeImpl
    _$$FentonHeadCircumferenceForAgeImplFromJson(Map<String, dynamic> json) =>
        _$FentonHeadCircumferenceForAgeImpl(
          observationDate: _$JsonConverterFromJson<Map<String, dynamic>, Date>(
              json['observationDate'], const DateConverter().fromJson),
          sex: $enumDecode(_$SexEnumMap, json['sex']),
          age: const AgeConverter()
              .fromJson(json['age'] as Map<String, dynamic>),
          measurementResult: const LengthConverter()
              .fromJson(json['measurementResult'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$FentonHeadCircumferenceForAgeImplToJson(
        _$FentonHeadCircumferenceForAgeImpl instance) =>
    <String, dynamic>{
      'observationDate': _$JsonConverterToJson<Map<String, dynamic>, Date>(
          instance.observationDate, const DateConverter().toJson),
      'sex': _$SexEnumMap[instance.sex]!,
      'age': const AgeConverter().toJson(instance.age),
      'measurementResult':
          const LengthConverter().toJson(instance.measurementResult),
    };

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);

const _$SexEnumMap = {
  Sex.male: 1,
  Sex.female: 2,
};

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) =>
    value == null ? null : toJson(value);

_$FentonLengthForAgeImpl _$$FentonLengthForAgeImplFromJson(
        Map<String, dynamic> json) =>
    _$FentonLengthForAgeImpl(
      observationDate: _$JsonConverterFromJson<Map<String, dynamic>, Date>(
          json['observationDate'], const DateConverter().fromJson),
      sex: $enumDecode(_$SexEnumMap, json['sex']),
      age: const AgeConverter().fromJson(json['age'] as Map<String, dynamic>),
      lengthHeight: const LengthConverter()
          .fromJson(json['lengthHeight'] as Map<String, dynamic>),
      measure: $enumDecode(
          _$LengthHeightMeasurementPositionEnumMap, json['measure']),
    );

Map<String, dynamic> _$$FentonLengthForAgeImplToJson(
        _$FentonLengthForAgeImpl instance) =>
    <String, dynamic>{
      'observationDate': _$JsonConverterToJson<Map<String, dynamic>, Date>(
          instance.observationDate, const DateConverter().toJson),
      'sex': _$SexEnumMap[instance.sex]!,
      'age': const AgeConverter().toJson(instance.age),
      'lengthHeight': const LengthConverter().toJson(instance.lengthHeight),
      'measure': _$LengthHeightMeasurementPositionEnumMap[instance.measure]!,
    };

const _$LengthHeightMeasurementPositionEnumMap = {
  LengthHeightMeasurementPosition.recumbent: 'recumbent',
  LengthHeightMeasurementPosition.standing: 'standing',
};

_$FentonWeightForAgeImpl _$$FentonWeightForAgeImplFromJson(
        Map<String, dynamic> json) =>
    _$FentonWeightForAgeImpl(
      observationDate: _$JsonConverterFromJson<Map<String, dynamic>, Date>(
          json['observationDate'], const DateConverter().fromJson),
      sex: $enumDecode(_$SexEnumMap, json['sex']),
      age: const AgeConverter().fromJson(json['age'] as Map<String, dynamic>),
      weight: const MassConverter()
          .fromJson(json['weight'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$FentonWeightForAgeImplToJson(
        _$FentonWeightForAgeImpl instance) =>
    <String, dynamic>{
      'observationDate': _$JsonConverterToJson<Map<String, dynamic>, Date>(
          instance.observationDate, const DateConverter().toJson),
      'sex': _$SexEnumMap[instance.sex]!,
      'age': const AgeConverter().toJson(instance.age),
      'weight': const MassConverter().toJson(instance.weight),
    };
