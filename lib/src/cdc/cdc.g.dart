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
      'observationDate': instance.observationDate,
      'sex': _$SexEnumMap[instance.sex]!,
      'age': instance.age,
      'bodyMassIndexMeasurement': instance.bodyMassIndexMeasurement,
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
      measurementResult: const LengthConverter()
          .fromJson(json['measurementResult'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$HeadCircumferenceForAgeImplToJson(
        _$HeadCircumferenceForAgeImpl instance) =>
    <String, dynamic>{
      'observationDate': instance.observationDate,
      'sex': _$SexEnumMap[instance.sex]!,
      'age': instance.age,
      'measurementResult':
          const LengthConverter().toJson(instance.measurementResult),
    };

_$LengthForAgeImpl _$$LengthForAgeImplFromJson(Map<String, dynamic> json) =>
    _$LengthForAgeImpl(
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

Map<String, dynamic> _$$LengthForAgeImplToJson(_$LengthForAgeImpl instance) =>
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

_$GrowthReferenceHeightForAgeImpl _$$GrowthReferenceHeightForAgeImplFromJson(
        Map<String, dynamic> json) =>
    _$GrowthReferenceHeightForAgeImpl(
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

Map<String, dynamic> _$$GrowthReferenceHeightForAgeImplToJson(
        _$GrowthReferenceHeightForAgeImpl instance) =>
    <String, dynamic>{
      'observationDate': instance.observationDate,
      'sex': _$SexEnumMap[instance.sex]!,
      'age': instance.age,
      'lengthHeight': const LengthConverter().toJson(instance.lengthHeight),
      'measure': _$LengthHeigthMeasurementPositionEnumMap[instance.measure]!,
    };

_$CDCWeightForAgeImpl _$$CDCWeightForAgeImplFromJson(
        Map<String, dynamic> json) =>
    _$CDCWeightForAgeImpl(
      observationDate: json['observationDate'] == null
          ? null
          : Date.fromJson(json['observationDate'] as Map<String, dynamic>),
      sex: $enumDecode(_$SexEnumMap, json['sex']),
      age: Age.fromJson(json['age'] as Map<String, dynamic>),
      weight: const MassConverter()
          .fromJson(json['weight'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CDCWeightForAgeImplToJson(
        _$CDCWeightForAgeImpl instance) =>
    <String, dynamic>{
      'observationDate': instance.observationDate,
      'sex': _$SexEnumMap[instance.sex]!,
      'age': instance.age,
      'weight': const MassConverter().toJson(instance.weight),
    };

_$CDCInfantWeightForAgeImpl _$$CDCInfantWeightForAgeImplFromJson(
        Map<String, dynamic> json) =>
    _$CDCInfantWeightForAgeImpl(
      observationDate: json['observationDate'] == null
          ? null
          : Date.fromJson(json['observationDate'] as Map<String, dynamic>),
      sex: $enumDecode(_$SexEnumMap, json['sex']),
      age: Age.fromJson(json['age'] as Map<String, dynamic>),
      weight: const MassConverter()
          .fromJson(json['weight'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CDCInfantWeightForAgeImplToJson(
        _$CDCInfantWeightForAgeImpl instance) =>
    <String, dynamic>{
      'observationDate': instance.observationDate,
      'sex': _$SexEnumMap[instance.sex]!,
      'age': instance.age,
      'weight': const MassConverter().toJson(instance.weight),
    };

_$CDCInfantWeigthForLengthImpl _$$CDCInfantWeigthForLengthImplFromJson(
        Map<String, dynamic> json) =>
    _$CDCInfantWeigthForLengthImpl(
      observationDate: json['observationDate'] == null
          ? null
          : Date.fromJson(json['observationDate'] as Map<String, dynamic>),
      sex: $enumDecode(_$SexEnumMap, json['sex']),
      age: Age.fromJson(json['age'] as Map<String, dynamic>),
      length: const LengthConverter()
          .fromJson(json['length'] as Map<String, dynamic>),
      weight: const MassConverter()
          .fromJson(json['weight'] as Map<String, dynamic>),
      measure: $enumDecode(
          _$LengthHeigthMeasurementPositionEnumMap, json['measure']),
    );

Map<String, dynamic> _$$CDCInfantWeigthForLengthImplToJson(
        _$CDCInfantWeigthForLengthImpl instance) =>
    <String, dynamic>{
      'observationDate': instance.observationDate,
      'sex': _$SexEnumMap[instance.sex]!,
      'age': instance.age,
      'length': const LengthConverter().toJson(instance.length),
      'weight': const MassConverter().toJson(instance.weight),
      'measure': _$LengthHeigthMeasurementPositionEnumMap[instance.measure]!,
    };

_$CDCWeigthForStatureImpl _$$CDCWeigthForStatureImplFromJson(
        Map<String, dynamic> json) =>
    _$CDCWeigthForStatureImpl(
      observationDate: json['observationDate'] == null
          ? null
          : Date.fromJson(json['observationDate'] as Map<String, dynamic>),
      sex: $enumDecode(_$SexEnumMap, json['sex']),
      age: Age.fromJson(json['age'] as Map<String, dynamic>),
      length: const LengthConverter()
          .fromJson(json['length'] as Map<String, dynamic>),
      weight: const MassConverter()
          .fromJson(json['weight'] as Map<String, dynamic>),
      measure: $enumDecode(
          _$LengthHeigthMeasurementPositionEnumMap, json['measure']),
    );

Map<String, dynamic> _$$CDCWeigthForStatureImplToJson(
        _$CDCWeigthForStatureImpl instance) =>
    <String, dynamic>{
      'observationDate': instance.observationDate,
      'sex': _$SexEnumMap[instance.sex]!,
      'age': instance.age,
      'length': const LengthConverter().toJson(instance.length),
      'weight': const MassConverter().toJson(instance.weight),
      'measure': _$LengthHeigthMeasurementPositionEnumMap[instance.measure]!,
    };
