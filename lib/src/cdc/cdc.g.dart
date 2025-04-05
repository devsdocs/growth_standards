// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cdc.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GrowthReferenceBodyMassIndexMeasurementImpl
    _$$GrowthReferenceBodyMassIndexMeasurementImplFromJson(
            Map<String, dynamic> json) =>
        _$GrowthReferenceBodyMassIndexMeasurementImpl(
          json['value'] as num,
        );

Map<String, dynamic> _$$GrowthReferenceBodyMassIndexMeasurementImplToJson(
        _$GrowthReferenceBodyMassIndexMeasurementImpl instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

_$GrowthReferenceBodyMassIndexForAgeImpl
    _$$GrowthReferenceBodyMassIndexForAgeImplFromJson(
            Map<String, dynamic> json) =>
        _$GrowthReferenceBodyMassIndexForAgeImpl(
          observationDate: json['observationDate'] == null
              ? null
              : Date.fromJson(json['observationDate'] as Map<String, dynamic>),
          sex: $enumDecode(_$SexEnumMap, json['sex']),
          age: Age.fromJson(json['age'] as Map<String, dynamic>),
          bodyMassIndexMeasurement: CDCBodyMassIndexMeasurement.fromJson(
              json['bodyMassIndexMeasurement'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$GrowthReferenceBodyMassIndexForAgeImplToJson(
        _$GrowthReferenceBodyMassIndexForAgeImpl instance) =>
    <String, dynamic>{
      'observationDate': instance.observationDate?.toJson(),
      'sex': _$SexEnumMap[instance.sex]!,
      'age': instance.age.toJson(),
      'bodyMassIndexMeasurement': instance.bodyMassIndexMeasurement.toJson(),
    };

const _$SexEnumMap = {
  Sex.male: 1,
  Sex.female: 2,
};

_$HeadCircumferenceForAgeImpl _$$HeadCircumferenceForAgeImplFromJson(
        Map<String, dynamic> json) =>
    _$HeadCircumferenceForAgeImpl(
      observationDate: json['observationDate'] == null
          ? null
          : Date.fromJson(json['observationDate'] as Map<String, dynamic>),
      sex: $enumDecode(_$SexEnumMap, json['sex']),
      age: Age.fromJson(json['age'] as Map<String, dynamic>),
      measurementResult:
          Length.fromJson(json['measurementResult'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$HeadCircumferenceForAgeImplToJson(
        _$HeadCircumferenceForAgeImpl instance) =>
    <String, dynamic>{
      'observationDate': instance.observationDate?.toJson(),
      'sex': _$SexEnumMap[instance.sex]!,
      'age': instance.age.toJson(),
      'measurementResult': instance.measurementResult.toJson(),
    };

_$LengthForAgeImpl _$$LengthForAgeImplFromJson(Map<String, dynamic> json) =>
    _$LengthForAgeImpl(
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

Map<String, dynamic> _$$LengthForAgeImplToJson(_$LengthForAgeImpl instance) =>
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

_$GrowthReferenceHeightForAgeImpl _$$GrowthReferenceHeightForAgeImplFromJson(
        Map<String, dynamic> json) =>
    _$GrowthReferenceHeightForAgeImpl(
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

Map<String, dynamic> _$$GrowthReferenceHeightForAgeImplToJson(
        _$GrowthReferenceHeightForAgeImpl instance) =>
    <String, dynamic>{
      'observationDate': instance.observationDate?.toJson(),
      'sex': _$SexEnumMap[instance.sex]!,
      'age': instance.age.toJson(),
      'lengthHeight': instance.lengthHeight.toJson(),
      'measure': _$LengthHeightMeasurementPositionEnumMap[instance.measure]!,
    };

_$CDCWeightForAgeImpl _$$CDCWeightForAgeImplFromJson(
        Map<String, dynamic> json) =>
    _$CDCWeightForAgeImpl(
      observationDate: json['observationDate'] == null
          ? null
          : Date.fromJson(json['observationDate'] as Map<String, dynamic>),
      sex: $enumDecode(_$SexEnumMap, json['sex']),
      age: Age.fromJson(json['age'] as Map<String, dynamic>),
      weight: Mass.fromJson(json['weight'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CDCWeightForAgeImplToJson(
        _$CDCWeightForAgeImpl instance) =>
    <String, dynamic>{
      'observationDate': instance.observationDate?.toJson(),
      'sex': _$SexEnumMap[instance.sex]!,
      'age': instance.age.toJson(),
      'weight': instance.weight.toJson(),
    };

_$CDCInfantWeightForAgeImpl _$$CDCInfantWeightForAgeImplFromJson(
        Map<String, dynamic> json) =>
    _$CDCInfantWeightForAgeImpl(
      observationDate: json['observationDate'] == null
          ? null
          : Date.fromJson(json['observationDate'] as Map<String, dynamic>),
      sex: $enumDecode(_$SexEnumMap, json['sex']),
      age: Age.fromJson(json['age'] as Map<String, dynamic>),
      weight: Mass.fromJson(json['weight'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CDCInfantWeightForAgeImplToJson(
        _$CDCInfantWeightForAgeImpl instance) =>
    <String, dynamic>{
      'observationDate': instance.observationDate?.toJson(),
      'sex': _$SexEnumMap[instance.sex]!,
      'age': instance.age.toJson(),
      'weight': instance.weight.toJson(),
    };

_$CDCInfantWeightForLengthImpl _$$CDCInfantWeightForLengthImplFromJson(
        Map<String, dynamic> json) =>
    _$CDCInfantWeightForLengthImpl(
      observationDate: json['observationDate'] == null
          ? null
          : Date.fromJson(json['observationDate'] as Map<String, dynamic>),
      sex: $enumDecode(_$SexEnumMap, json['sex']),
      age: Age.fromJson(json['age'] as Map<String, dynamic>),
      length: Length.fromJson(json['length'] as Map<String, dynamic>),
      weight: Mass.fromJson(json['weight'] as Map<String, dynamic>),
      measure: $enumDecode(
          _$LengthHeightMeasurementPositionEnumMap, json['measure']),
    );

Map<String, dynamic> _$$CDCInfantWeightForLengthImplToJson(
        _$CDCInfantWeightForLengthImpl instance) =>
    <String, dynamic>{
      'observationDate': instance.observationDate?.toJson(),
      'sex': _$SexEnumMap[instance.sex]!,
      'age': instance.age.toJson(),
      'length': instance.length.toJson(),
      'weight': instance.weight.toJson(),
      'measure': _$LengthHeightMeasurementPositionEnumMap[instance.measure]!,
    };

_$CDCWeightForStatureImpl _$$CDCWeightForStatureImplFromJson(
        Map<String, dynamic> json) =>
    _$CDCWeightForStatureImpl(
      observationDate: json['observationDate'] == null
          ? null
          : Date.fromJson(json['observationDate'] as Map<String, dynamic>),
      sex: $enumDecode(_$SexEnumMap, json['sex']),
      age: Age.fromJson(json['age'] as Map<String, dynamic>),
      height: Length.fromJson(json['height'] as Map<String, dynamic>),
      weight: Mass.fromJson(json['weight'] as Map<String, dynamic>),
      measure: $enumDecode(
          _$LengthHeightMeasurementPositionEnumMap, json['measure']),
    );

Map<String, dynamic> _$$CDCWeightForStatureImplToJson(
        _$CDCWeightForStatureImpl instance) =>
    <String, dynamic>{
      'observationDate': instance.observationDate?.toJson(),
      'sex': _$SexEnumMap[instance.sex]!,
      'age': instance.age.toJson(),
      'height': instance.height.toJson(),
      'weight': instance.weight.toJson(),
      'measure': _$LengthHeightMeasurementPositionEnumMap[instance.measure]!,
    };
