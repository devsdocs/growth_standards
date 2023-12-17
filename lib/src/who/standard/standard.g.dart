// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'standard.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ArmCircumferenceForAgeImpl _$$ArmCircumferenceForAgeImplFromJson(
        Map<String, dynamic> json) =>
    _$ArmCircumferenceForAgeImpl(
      observationDate: json['observationDate'] == null
          ? null
          : Date.fromJson(json['observationDate'] as Map<String, dynamic>),
      sex: $enumDecode(_$SexEnumMap, json['sex']),
      age: Age.fromJson(json['age'] as Map<String, dynamic>),
      measurementResult: const LengthConverter()
          .fromJson(json['measurementResult'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ArmCircumferenceForAgeImplToJson(
        _$ArmCircumferenceForAgeImpl instance) =>
    <String, dynamic>{
      'observationDate': instance.observationDate,
      'sex': _$SexEnumMap[instance.sex]!,
      'age': instance.age,
      'measurementResult':
          const LengthConverter().toJson(instance.measurementResult),
    };

const _$SexEnumMap = {
  Sex.male: 1,
  Sex.female: 2,
};
