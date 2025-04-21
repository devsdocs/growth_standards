// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cdc.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GrowthReferenceBodyMassIndexMeasurement
    _$GrowthReferenceBodyMassIndexMeasurementFromJson(
            Map<String, dynamic> json) =>
        _GrowthReferenceBodyMassIndexMeasurement(
          json['value'] as num,
        );

Map<String, dynamic> _$GrowthReferenceBodyMassIndexMeasurementToJson(
        _GrowthReferenceBodyMassIndexMeasurement instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

_GrowthReferenceBodyMassIndexForAge
    _$GrowthReferenceBodyMassIndexForAgeFromJson(Map<String, dynamic> json) =>
        _GrowthReferenceBodyMassIndexForAge(
          observationDate: json['observationDate'] == null
              ? null
              : Date.fromJson(json['observationDate'] as Map<String, dynamic>),
          sex: $enumDecode(_$SexEnumMap, json['sex']),
          age: Age.fromJson(json['age'] as Map<String, dynamic>),
          bodyMassIndexMeasurement: CDCBodyMassIndexMeasurement.fromJson(
              json['bodyMassIndexMeasurement'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$GrowthReferenceBodyMassIndexForAgeToJson(
        _GrowthReferenceBodyMassIndexForAge instance) =>
    <String, dynamic>{
      'observationDate': instance.observationDate?.toJson(),
      'sex': _$SexEnumMap[instance.sex]!,
      'age': instance.age.toJson(),
      'bodyMassIndexMeasurement': instance.bodyMassIndexMeasurement.toJson(),
    };

const _$SexEnumMap = {
  Sex.male: 1,
  Sex.female: 2,
  Sex.both: 3,
};

_HeadCircumferenceForAge _$HeadCircumferenceForAgeFromJson(
        Map<String, dynamic> json) =>
    _HeadCircumferenceForAge(
      observationDate: json['observationDate'] == null
          ? null
          : Date.fromJson(json['observationDate'] as Map<String, dynamic>),
      sex: $enumDecode(_$SexEnumMap, json['sex']),
      age: Age.fromJson(json['age'] as Map<String, dynamic>),
      measurementResult:
          Length.fromJson(json['measurementResult'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$HeadCircumferenceForAgeToJson(
        _HeadCircumferenceForAge instance) =>
    <String, dynamic>{
      'observationDate': instance.observationDate?.toJson(),
      'sex': _$SexEnumMap[instance.sex]!,
      'age': instance.age.toJson(),
      'measurementResult': instance.measurementResult.toJson(),
    };

_LengthForAge _$LengthForAgeFromJson(Map<String, dynamic> json) =>
    _LengthForAge(
      observationDate: json['observationDate'] == null
          ? null
          : Date.fromJson(json['observationDate'] as Map<String, dynamic>),
      sex: $enumDecode(_$SexEnumMap, json['sex']),
      age: Age.fromJson(json['age'] as Map<String, dynamic>),
      lengthHeight:
          Length.fromJson(json['lengthHeight'] as Map<String, dynamic>),
      measure: $enumDecode(
          _$LengthHeightMeasurementPositionEnumMap, json['measure']),
    );

Map<String, dynamic> _$LengthForAgeToJson(_LengthForAge instance) =>
    <String, dynamic>{
      'observationDate': instance.observationDate?.toJson(),
      'sex': _$SexEnumMap[instance.sex]!,
      'age': instance.age.toJson(),
      'lengthHeight': instance.lengthHeight.toJson(),
      'measure': _$LengthHeightMeasurementPositionEnumMap[instance.measure]!,
    };

const _$LengthHeightMeasurementPositionEnumMap = {
  LengthHeightMeasurementPosition.recumbent: 'recumbent',
  LengthHeightMeasurementPosition.standing: 'standing',
};

_GrowthReferenceHeightForAge _$GrowthReferenceHeightForAgeFromJson(
        Map<String, dynamic> json) =>
    _GrowthReferenceHeightForAge(
      observationDate: json['observationDate'] == null
          ? null
          : Date.fromJson(json['observationDate'] as Map<String, dynamic>),
      sex: $enumDecode(_$SexEnumMap, json['sex']),
      age: Age.fromJson(json['age'] as Map<String, dynamic>),
      lengthHeight:
          Length.fromJson(json['lengthHeight'] as Map<String, dynamic>),
      measure: $enumDecode(
          _$LengthHeightMeasurementPositionEnumMap, json['measure']),
    );

Map<String, dynamic> _$GrowthReferenceHeightForAgeToJson(
        _GrowthReferenceHeightForAge instance) =>
    <String, dynamic>{
      'observationDate': instance.observationDate?.toJson(),
      'sex': _$SexEnumMap[instance.sex]!,
      'age': instance.age.toJson(),
      'lengthHeight': instance.lengthHeight.toJson(),
      'measure': _$LengthHeightMeasurementPositionEnumMap[instance.measure]!,
    };

_CDCWeightForAge _$CDCWeightForAgeFromJson(Map<String, dynamic> json) =>
    _CDCWeightForAge(
      observationDate: json['observationDate'] == null
          ? null
          : Date.fromJson(json['observationDate'] as Map<String, dynamic>),
      sex: $enumDecode(_$SexEnumMap, json['sex']),
      age: Age.fromJson(json['age'] as Map<String, dynamic>),
      weight: Mass.fromJson(json['weight'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CDCWeightForAgeToJson(_CDCWeightForAge instance) =>
    <String, dynamic>{
      'observationDate': instance.observationDate?.toJson(),
      'sex': _$SexEnumMap[instance.sex]!,
      'age': instance.age.toJson(),
      'weight': instance.weight.toJson(),
    };

_CDCInfantWeightForAge _$CDCInfantWeightForAgeFromJson(
        Map<String, dynamic> json) =>
    _CDCInfantWeightForAge(
      observationDate: json['observationDate'] == null
          ? null
          : Date.fromJson(json['observationDate'] as Map<String, dynamic>),
      sex: $enumDecode(_$SexEnumMap, json['sex']),
      age: Age.fromJson(json['age'] as Map<String, dynamic>),
      weight: Mass.fromJson(json['weight'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CDCInfantWeightForAgeToJson(
        _CDCInfantWeightForAge instance) =>
    <String, dynamic>{
      'observationDate': instance.observationDate?.toJson(),
      'sex': _$SexEnumMap[instance.sex]!,
      'age': instance.age.toJson(),
      'weight': instance.weight.toJson(),
    };

_CDCInfantWeightForLength _$CDCInfantWeightForLengthFromJson(
        Map<String, dynamic> json) =>
    _CDCInfantWeightForLength(
      sex: $enumDecode(_$SexEnumMap, json['sex']),
      age: Age.fromJson(json['age'] as Map<String, dynamic>),
      length: Length.fromJson(json['length'] as Map<String, dynamic>),
      weight: Mass.fromJson(json['weight'] as Map<String, dynamic>),
      measure: $enumDecode(
          _$LengthHeightMeasurementPositionEnumMap, json['measure']),
    );

Map<String, dynamic> _$CDCInfantWeightForLengthToJson(
        _CDCInfantWeightForLength instance) =>
    <String, dynamic>{
      'sex': _$SexEnumMap[instance.sex]!,
      'age': instance.age.toJson(),
      'length': instance.length.toJson(),
      'weight': instance.weight.toJson(),
      'measure': _$LengthHeightMeasurementPositionEnumMap[instance.measure]!,
    };

_CDCWeightForStature _$CDCWeightForStatureFromJson(Map<String, dynamic> json) =>
    _CDCWeightForStature(
      sex: $enumDecode(_$SexEnumMap, json['sex']),
      age: Age.fromJson(json['age'] as Map<String, dynamic>),
      height: Length.fromJson(json['height'] as Map<String, dynamic>),
      weight: Mass.fromJson(json['weight'] as Map<String, dynamic>),
      measure: $enumDecode(
          _$LengthHeightMeasurementPositionEnumMap, json['measure']),
    );

Map<String, dynamic> _$CDCWeightForStatureToJson(
        _CDCWeightForStature instance) =>
    <String, dynamic>{
      'sex': _$SexEnumMap[instance.sex]!,
      'age': instance.age.toJson(),
      'height': instance.height.toJson(),
      'weight': instance.weight.toJson(),
      'measure': _$LengthHeightMeasurementPositionEnumMap[instance.measure]!,
    };
