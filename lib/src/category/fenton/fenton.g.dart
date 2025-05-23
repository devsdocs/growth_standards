// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fenton.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FentonHeadCircumferenceForAge _$FentonHeadCircumferenceForAgeFromJson(
        Map<String, dynamic> json) =>
    _FentonHeadCircumferenceForAge(
      sex: $enumDecode(_$SexEnumMap, json['sex']),
      age: Age.fromJson(json['age'] as Map<String, dynamic>),
      measurementResult:
          Length.fromJson(json['measurementResult'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$FentonHeadCircumferenceForAgeToJson(
        _FentonHeadCircumferenceForAge instance) =>
    <String, dynamic>{
      'sex': _$SexEnumMap[instance.sex]!,
      'age': instance.age.toJson(),
      'measurementResult': instance.measurementResult.toJson(),
    };

const _$SexEnumMap = {
  Sex.male: 1,
  Sex.female: 2,
  Sex.both: 3,
};

_FentonLengthForAge _$FentonLengthForAgeFromJson(Map<String, dynamic> json) =>
    _FentonLengthForAge(
      sex: $enumDecode(_$SexEnumMap, json['sex']),
      age: Age.fromJson(json['age'] as Map<String, dynamic>),
      lengthHeight:
          Length.fromJson(json['lengthHeight'] as Map<String, dynamic>),
      measure: $enumDecode(
          _$LengthHeightMeasurementPositionEnumMap, json['measure']),
    );

Map<String, dynamic> _$FentonLengthForAgeToJson(_FentonLengthForAge instance) =>
    <String, dynamic>{
      'sex': _$SexEnumMap[instance.sex]!,
      'age': instance.age.toJson(),
      'lengthHeight': instance.lengthHeight.toJson(),
      'measure': _$LengthHeightMeasurementPositionEnumMap[instance.measure]!,
    };

const _$LengthHeightMeasurementPositionEnumMap = {
  LengthHeightMeasurementPosition.recumbent: 'recumbent',
  LengthHeightMeasurementPosition.standing: 'standing',
};

_FentonWeightForAge _$FentonWeightForAgeFromJson(Map<String, dynamic> json) =>
    _FentonWeightForAge(
      sex: $enumDecode(_$SexEnumMap, json['sex']),
      age: Age.fromJson(json['age'] as Map<String, dynamic>),
      weight: Mass.fromJson(json['weight'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$FentonWeightForAgeToJson(_FentonWeightForAge instance) =>
    <String, dynamic>{
      'sex': _$SexEnumMap[instance.sex]!,
      'age': instance.age.toJson(),
      'weight': instance.weight.toJson(),
    };
