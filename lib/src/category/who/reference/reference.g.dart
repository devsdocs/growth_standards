// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reference.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_WHOGrowthReferenceBodyMassIndexMeasurement
_$WHOGrowthReferenceBodyMassIndexMeasurementFromJson(
  Map<String, dynamic> json,
) => _WHOGrowthReferenceBodyMassIndexMeasurement(json['value'] as num);

Map<String, dynamic> _$WHOGrowthReferenceBodyMassIndexMeasurementToJson(
  _WHOGrowthReferenceBodyMassIndexMeasurement instance,
) => <String, dynamic>{'value': instance.value};

_WHOGrowthReferenceBodyMassIndexForAge
_$WHOGrowthReferenceBodyMassIndexForAgeFromJson(Map<String, dynamic> json) =>
    _WHOGrowthReferenceBodyMassIndexForAge(
      sex: $enumDecode(_$SexEnumMap, json['sex']),
      age: Age.fromJson(json['age'] as Map<String, dynamic>),
      bodyMassIndexMeasurement:
          WHOGrowthReferenceBodyMassIndexMeasurement.fromJson(
            json['bodyMassIndexMeasurement'] as Map<String, dynamic>,
          ),
    );

Map<String, dynamic> _$WHOGrowthReferenceBodyMassIndexForAgeToJson(
  _WHOGrowthReferenceBodyMassIndexForAge instance,
) => <String, dynamic>{
  'sex': _$SexEnumMap[instance.sex]!,
  'age': instance.age.toJson(),
  'bodyMassIndexMeasurement': instance.bodyMassIndexMeasurement.toJson(),
};

const _$SexEnumMap = {Sex.male: 1, Sex.female: 2};

_WHOGrowthReferenceHeightForAge _$WHOGrowthReferenceHeightForAgeFromJson(
  Map<String, dynamic> json,
) => _WHOGrowthReferenceHeightForAge(
  sex: $enumDecode(_$SexEnumMap, json['sex']),
  age: Age.fromJson(json['age'] as Map<String, dynamic>),
  lengthHeight: Length.fromJson(json['lengthHeight'] as Map<String, dynamic>),
);

Map<String, dynamic> _$WHOGrowthReferenceHeightForAgeToJson(
  _WHOGrowthReferenceHeightForAge instance,
) => <String, dynamic>{
  'sex': _$SexEnumMap[instance.sex]!,
  'age': instance.age.toJson(),
  'lengthHeight': instance.lengthHeight.toJson(),
};

_WHOGrowthReferenceWeightForAge _$WHOGrowthReferenceWeightForAgeFromJson(
  Map<String, dynamic> json,
) => _WHOGrowthReferenceWeightForAge(
  sex: $enumDecode(_$SexEnumMap, json['sex']),
  age: Age.fromJson(json['age'] as Map<String, dynamic>),
  weight: Mass.fromJson(json['weight'] as Map<String, dynamic>),
);

Map<String, dynamic> _$WHOGrowthReferenceWeightForAgeToJson(
  _WHOGrowthReferenceWeightForAge instance,
) => <String, dynamic>{
  'sex': _$SexEnumMap[instance.sex]!,
  'age': instance.age.toJson(),
  'weight': instance.weight.toJson(),
};
