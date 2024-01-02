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
          observationDate: json['observationDate'] == null
              ? null
              : Date.fromJson(json['observationDate'] as Map<String, dynamic>),
          sex: $enumDecode(_$SexEnumMap, json['sex']),
          age: Age.fromJson(json['age'] as Map<String, dynamic>),
          bodyMassIndexMeasurement:
              WHOGrowthReferenceBodyMassIndexMeasurement.fromJson(
                  json['bodyMassIndexMeasurement'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$WHOGrowthReferenceBodyMassIndexForAgeImplToJson(
        _$WHOGrowthReferenceBodyMassIndexForAgeImpl instance) =>
    <String, dynamic>{
      'observationDate': instance.observationDate,
      'sex': _$SexEnumMap[instance.sex]!,
      'age': instance.age,
      'bodyMassIndexMeasurement': instance.bodyMassIndexMeasurement,
    };

const _$SexEnumMap = {
  Sex.male: 1,
  Sex.female: 2,
};

_$WHOGrowthReferenceHeightForAgeImpl
    _$$WHOGrowthReferenceHeightForAgeImplFromJson(Map<String, dynamic> json) =>
        _$WHOGrowthReferenceHeightForAgeImpl(
          observationDate: json['observationDate'] == null
              ? null
              : Date.fromJson(json['observationDate'] as Map<String, dynamic>),
          sex: $enumDecode(_$SexEnumMap, json['sex']),
          age: Age.fromJson(json['age'] as Map<String, dynamic>),
          lengthHeight: const LengthConverter()
              .fromJson(json['lengthHeight'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$WHOGrowthReferenceHeightForAgeImplToJson(
        _$WHOGrowthReferenceHeightForAgeImpl instance) =>
    <String, dynamic>{
      'observationDate': instance.observationDate,
      'sex': _$SexEnumMap[instance.sex]!,
      'age': instance.age,
      'lengthHeight': const LengthConverter().toJson(instance.lengthHeight),
    };

_$WHOGrowthReferenceWeightForAgeImpl
    _$$WHOGrowthReferenceWeightForAgeImplFromJson(Map<String, dynamic> json) =>
        _$WHOGrowthReferenceWeightForAgeImpl(
          observationDate: json['observationDate'] == null
              ? null
              : Date.fromJson(json['observationDate'] as Map<String, dynamic>),
          sex: $enumDecode(_$SexEnumMap, json['sex']),
          age: Age.fromJson(json['age'] as Map<String, dynamic>),
          weight: const MassConverter()
              .fromJson(json['weight'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$WHOGrowthReferenceWeightForAgeImplToJson(
        _$WHOGrowthReferenceWeightForAgeImpl instance) =>
    <String, dynamic>{
      'observationDate': instance.observationDate,
      'sex': _$SexEnumMap[instance.sex]!,
      'age': instance.age,
      'weight': const MassConverter().toJson(instance.weight),
    };
