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

_$BodyMassIndexForAgeImpl _$$BodyMassIndexForAgeImplFromJson(
        Map<String, dynamic> json) =>
    _$BodyMassIndexForAgeImpl(
      observationDate: json['observationDate'] == null
          ? null
          : Date.fromJson(json['observationDate'] as Map<String, dynamic>),
      sex: $enumDecode(_$SexEnumMap, json['sex']),
      bodyMassIndexMeasurement: const BodyMassIndexMeasurementConverter()
          .fromJson(json['bodyMassIndexMeasurement'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$BodyMassIndexForAgeImplToJson(
        _$BodyMassIndexForAgeImpl instance) =>
    <String, dynamic>{
      'observationDate': instance.observationDate,
      'sex': _$SexEnumMap[instance.sex]!,
      'bodyMassIndexMeasurement': const BodyMassIndexMeasurementConverter()
          .toJson(instance.bodyMassIndexMeasurement),
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

_$SubscapularSkinfoldForAgeImpl _$$SubscapularSkinfoldForAgeImplFromJson(
        Map<String, dynamic> json) =>
    _$SubscapularSkinfoldForAgeImpl(
      observationDate: json['observationDate'] == null
          ? null
          : Date.fromJson(json['observationDate'] as Map<String, dynamic>),
      sex: $enumDecode(_$SexEnumMap, json['sex']),
      age: Age.fromJson(json['age'] as Map<String, dynamic>),
      measurementResult: const LengthConverter()
          .fromJson(json['measurementResult'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SubscapularSkinfoldForAgeImplToJson(
        _$SubscapularSkinfoldForAgeImpl instance) =>
    <String, dynamic>{
      'observationDate': instance.observationDate,
      'sex': _$SexEnumMap[instance.sex]!,
      'age': instance.age,
      'measurementResult':
          const LengthConverter().toJson(instance.measurementResult),
    };

_$TricepsSkinfoldForAgeImpl _$$TricepsSkinfoldForAgeImplFromJson(
        Map<String, dynamic> json) =>
    _$TricepsSkinfoldForAgeImpl(
      observationDate: json['observationDate'] == null
          ? null
          : Date.fromJson(json['observationDate'] as Map<String, dynamic>),
      sex: $enumDecode(_$SexEnumMap, json['sex']),
      age: Age.fromJson(json['age'] as Map<String, dynamic>),
      measurementResult: const LengthConverter()
          .fromJson(json['measurementResult'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TricepsSkinfoldForAgeImplToJson(
        _$TricepsSkinfoldForAgeImpl instance) =>
    <String, dynamic>{
      'observationDate': instance.observationDate,
      'sex': _$SexEnumMap[instance.sex]!,
      'age': instance.age,
      'measurementResult':
          const LengthConverter().toJson(instance.measurementResult),
    };

_$WeightForAgeImpl _$$WeightForAgeImplFromJson(Map<String, dynamic> json) =>
    _$WeightForAgeImpl(
      observationDate: json['observationDate'] == null
          ? null
          : Date.fromJson(json['observationDate'] as Map<String, dynamic>),
      sex: $enumDecode(_$SexEnumMap, json['sex']),
      age: Age.fromJson(json['age'] as Map<String, dynamic>),
      weight: const MassConverter()
          .fromJson(json['weight'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$WeightForAgeImplToJson(_$WeightForAgeImpl instance) =>
    <String, dynamic>{
      'observationDate': instance.observationDate,
      'sex': _$SexEnumMap[instance.sex]!,
      'age': instance.age,
      'weight': const MassConverter().toJson(instance.weight),
    };

_$WeightForHeightImpl _$$WeightForHeightImplFromJson(
        Map<String, dynamic> json) =>
    _$WeightForHeightImpl(
      observationDate: json['observationDate'] == null
          ? null
          : Date.fromJson(json['observationDate'] as Map<String, dynamic>),
      sex: $enumDecode(_$SexEnumMap, json['sex']),
      age: Age.fromJson(json['age'] as Map<String, dynamic>),
      height: const LengthConverter()
          .fromJson(json['height'] as Map<String, dynamic>),
      weight: const MassConverter()
          .fromJson(json['weight'] as Map<String, dynamic>),
      measure: $enumDecode(
          _$LengthHeigthMeasurementPositionEnumMap, json['measure']),
    );

Map<String, dynamic> _$$WeightForHeightImplToJson(
        _$WeightForHeightImpl instance) =>
    <String, dynamic>{
      'observationDate': instance.observationDate,
      'sex': _$SexEnumMap[instance.sex]!,
      'age': instance.age,
      'height': const LengthConverter().toJson(instance.height),
      'weight': const MassConverter().toJson(instance.weight),
      'measure': _$LengthHeigthMeasurementPositionEnumMap[instance.measure]!,
    };

_$WeigthForLengthImpl _$$WeigthForLengthImplFromJson(
        Map<String, dynamic> json) =>
    _$WeigthForLengthImpl(
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

Map<String, dynamic> _$$WeigthForLengthImplToJson(
        _$WeigthForLengthImpl instance) =>
    <String, dynamic>{
      'observationDate': instance.observationDate,
      'sex': _$SexEnumMap[instance.sex]!,
      'age': instance.age,
      'length': const LengthConverter().toJson(instance.length),
      'weight': const MassConverter().toJson(instance.weight),
      'measure': _$LengthHeigthMeasurementPositionEnumMap[instance.measure]!,
    };
