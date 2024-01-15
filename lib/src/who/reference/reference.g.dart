// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reference.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WHOGrowthReferenceBodyMassIndexMeasurementImpl
    _$$WHOGrowthReferenceBodyMassIndexMeasurementImplFromJson(
            Map<String, dynamic> json) =>
        _$WHOGrowthReferenceBodyMassIndexMeasurementImpl(
          json['value'] as num,
        );

Map<String, dynamic> _$$WHOGrowthReferenceBodyMassIndexMeasurementImplToJson(
        _$WHOGrowthReferenceBodyMassIndexMeasurementImpl instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

_$WHOGrowthReferenceBodyMassIndexForAgeImpl
    _$$WHOGrowthReferenceBodyMassIndexForAgeImplFromJson(
            Map<String, dynamic> json) =>
        _$WHOGrowthReferenceBodyMassIndexForAgeImpl(
          observationDate: _$JsonConverterFromJson<Map<String, dynamic>, Date>(
              json['observationDate'], const DateConverter().fromJson),
          sex: $enumDecode(_$SexEnumMap, json['sex']),
          age: const AgeConverter()
              .fromJson(json['age'] as Map<String, dynamic>),
          bodyMassIndexMeasurement:
              WHOGrowthReferenceBodyMassIndexMeasurement.fromJson(
                  json['bodyMassIndexMeasurement'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$WHOGrowthReferenceBodyMassIndexForAgeImplToJson(
        _$WHOGrowthReferenceBodyMassIndexForAgeImpl instance) =>
    <String, dynamic>{
      'observationDate': _$JsonConverterToJson<Map<String, dynamic>, Date>(
          instance.observationDate, const DateConverter().toJson),
      'sex': _$SexEnumMap[instance.sex]!,
      'age': const AgeConverter().toJson(instance.age),
      'bodyMassIndexMeasurement': instance.bodyMassIndexMeasurement,
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

_$WHOGrowthReferenceHeightForAgeImpl
    _$$WHOGrowthReferenceHeightForAgeImplFromJson(Map<String, dynamic> json) =>
        _$WHOGrowthReferenceHeightForAgeImpl(
          observationDate: _$JsonConverterFromJson<Map<String, dynamic>, Date>(
              json['observationDate'], const DateConverter().fromJson),
          sex: $enumDecode(_$SexEnumMap, json['sex']),
          age: const AgeConverter()
              .fromJson(json['age'] as Map<String, dynamic>),
          lengthHeight: const LengthConverter()
              .fromJson(json['lengthHeight'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$WHOGrowthReferenceHeightForAgeImplToJson(
        _$WHOGrowthReferenceHeightForAgeImpl instance) =>
    <String, dynamic>{
      'observationDate': _$JsonConverterToJson<Map<String, dynamic>, Date>(
          instance.observationDate, const DateConverter().toJson),
      'sex': _$SexEnumMap[instance.sex]!,
      'age': const AgeConverter().toJson(instance.age),
      'lengthHeight': const LengthConverter().toJson(instance.lengthHeight),
    };

_$WHOGrowthReferenceWeightForAgeImpl
    _$$WHOGrowthReferenceWeightForAgeImplFromJson(Map<String, dynamic> json) =>
        _$WHOGrowthReferenceWeightForAgeImpl(
          observationDate: _$JsonConverterFromJson<Map<String, dynamic>, Date>(
              json['observationDate'], const DateConverter().fromJson),
          sex: $enumDecode(_$SexEnumMap, json['sex']),
          age: const AgeConverter()
              .fromJson(json['age'] as Map<String, dynamic>),
          weight: const MassConverter()
              .fromJson(json['weight'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$WHOGrowthReferenceWeightForAgeImplToJson(
        _$WHOGrowthReferenceWeightForAgeImpl instance) =>
    <String, dynamic>{
      'observationDate': _$JsonConverterToJson<Map<String, dynamic>, Date>(
          instance.observationDate, const DateConverter().toJson),
      'sex': _$SexEnumMap[instance.sex]!,
      'age': const AgeConverter().toJson(instance.age),
      'weight': const MassConverter().toJson(instance.weight),
    };
