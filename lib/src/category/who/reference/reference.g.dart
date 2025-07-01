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
          sex: $enumDecode(_$SexEnumMap, json['sex']),
          age: Age.fromJson(json['age'] as Map<String, dynamic>),
          bodyMassIndexMeasurement:
              WHOGrowthReferenceBodyMassIndexMeasurement.fromJson(
                  json['bodyMassIndexMeasurement'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$WHOGrowthReferenceBodyMassIndexForAgeImplToJson(
        _$WHOGrowthReferenceBodyMassIndexForAgeImpl instance) =>
    <String, dynamic>{
      'sex': _$SexEnumMap[instance.sex]!,
      'age': instance.age.toJson(),
      'bodyMassIndexMeasurement': instance.bodyMassIndexMeasurement.toJson(),
    };

const _$SexEnumMap = {
  Sex.male: 1,
  Sex.female: 2,
};

_$WHOGrowthReferenceHeightForAgeImpl
    _$$WHOGrowthReferenceHeightForAgeImplFromJson(Map<String, dynamic> json) =>
        _$WHOGrowthReferenceHeightForAgeImpl(
          sex: $enumDecode(_$SexEnumMap, json['sex']),
          age: Age.fromJson(json['age'] as Map<String, dynamic>),
          lengthHeight:
              Length.fromJson(json['lengthHeight'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$WHOGrowthReferenceHeightForAgeImplToJson(
        _$WHOGrowthReferenceHeightForAgeImpl instance) =>
    <String, dynamic>{
      'sex': _$SexEnumMap[instance.sex]!,
      'age': instance.age.toJson(),
      'lengthHeight': instance.lengthHeight.toJson(),
    };

_$WHOGrowthReferenceWeightForAgeImpl
    _$$WHOGrowthReferenceWeightForAgeImplFromJson(Map<String, dynamic> json) =>
        _$WHOGrowthReferenceWeightForAgeImpl(
          sex: $enumDecode(_$SexEnumMap, json['sex']),
          age: Age.fromJson(json['age'] as Map<String, dynamic>),
          weight: Mass.fromJson(json['weight'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$WHOGrowthReferenceWeightForAgeImplToJson(
        _$WHOGrowthReferenceWeightForAgeImpl instance) =>
    <String, dynamic>{
      'sex': _$SexEnumMap[instance.sex]!,
      'age': instance.age.toJson(),
      'weight': instance.weight.toJson(),
    };
