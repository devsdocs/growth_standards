// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fenton.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FentonHeadCircumferenceForAgeImpl
    _$$FentonHeadCircumferenceForAgeImplFromJson(Map<String, dynamic> json) =>
        _$FentonHeadCircumferenceForAgeImpl(
          observationDate: json['observationDate'] == null
              ? null
              : Date.fromJson(json['observationDate'] as Map<String, dynamic>),
          sex: $enumDecode(_$SexEnumMap, json['sex']),
          age: Age.fromJson(json['age'] as Map<String, dynamic>),
          measurementResult: const LengthConverter()
              .fromJson(json['measurementResult'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$FentonHeadCircumferenceForAgeImplToJson(
        _$FentonHeadCircumferenceForAgeImpl instance) =>
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

_$FentonLengthForAgeImpl _$$FentonLengthForAgeImplFromJson(
        Map<String, dynamic> json) =>
    _$FentonLengthForAgeImpl(
      observationDate: json['observationDate'] == null
          ? null
          : Date.fromJson(json['observationDate'] as Map<String, dynamic>),
      sex: $enumDecode(_$SexEnumMap, json['sex']),
      age: Age.fromJson(json['age'] as Map<String, dynamic>),
      lengthHeight: const LengthConverter()
          .fromJson(json['lengthHeight'] as Map<String, dynamic>),
      measure: $enumDecode(
          _$LengthHeigthMeasurementPositionEnumMap, json['measure']),
    );

Map<String, dynamic> _$$FentonLengthForAgeImplToJson(
        _$FentonLengthForAgeImpl instance) =>
    <String, dynamic>{
      'observationDate': instance.observationDate,
      'sex': _$SexEnumMap[instance.sex]!,
      'age': instance.age,
      'lengthHeight': const LengthConverter().toJson(instance.lengthHeight),
      'measure': _$LengthHeigthMeasurementPositionEnumMap[instance.measure]!,
    };

const _$LengthHeigthMeasurementPositionEnumMap = {
  LengthHeigthMeasurementPosition.recumbent: 'recumbent',
  LengthHeigthMeasurementPosition.standing: 'standing',
};

_$FentonWeightForAgeImpl _$$FentonWeightForAgeImplFromJson(
        Map<String, dynamic> json) =>
    _$FentonWeightForAgeImpl(
      observationDate: json['observationDate'] == null
          ? null
          : Date.fromJson(json['observationDate'] as Map<String, dynamic>),
      sex: $enumDecode(_$SexEnumMap, json['sex']),
      age: Age.fromJson(json['age'] as Map<String, dynamic>),
      weight: const MassConverter()
          .fromJson(json['weight'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$FentonWeightForAgeImplToJson(
        _$FentonWeightForAgeImpl instance) =>
    <String, dynamic>{
      'observationDate': instance.observationDate,
      'sex': _$SexEnumMap[instance.sex]!,
      'age': instance.age,
      'weight': const MassConverter().toJson(instance.weight),
    };
