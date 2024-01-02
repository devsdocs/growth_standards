// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'standard.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WHOGrowthStandardsArmCircumferenceForAgeImpl
    _$$WHOGrowthStandardsArmCircumferenceForAgeImplFromJson(
            Map<String, dynamic> json) =>
        _$WHOGrowthStandardsArmCircumferenceForAgeImpl(
          observationDate: json['observationDate'] == null
              ? null
              : Date.fromJson(json['observationDate'] as Map<String, dynamic>),
          sex: $enumDecode(_$SexEnumMap, json['sex']),
          age: Age.fromJson(json['age'] as Map<String, dynamic>),
          measurementResult: const LengthConverter()
              .fromJson(json['measurementResult'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$WHOGrowthStandardsArmCircumferenceForAgeImplToJson(
        _$WHOGrowthStandardsArmCircumferenceForAgeImpl instance) =>
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

_$WHOGrowthStandardsBodyMassIndexMeasurementImpl
    _$$WHOGrowthStandardsBodyMassIndexMeasurementImplFromJson(
            Map<String, dynamic> json) =>
        _$WHOGrowthStandardsBodyMassIndexMeasurementImpl(
          json['value'] as num,
          age: Age.fromJson(json['age'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$WHOGrowthStandardsBodyMassIndexMeasurementImplToJson(
        _$WHOGrowthStandardsBodyMassIndexMeasurementImpl instance) =>
    <String, dynamic>{
      'value': instance.value,
      'age': instance.age,
    };

_$WHOGrowthStandardsBodyMassIndexForAgeImpl
    _$$WHOGrowthStandardsBodyMassIndexForAgeImplFromJson(
            Map<String, dynamic> json) =>
        _$WHOGrowthStandardsBodyMassIndexForAgeImpl(
          observationDate: json['observationDate'] == null
              ? null
              : Date.fromJson(json['observationDate'] as Map<String, dynamic>),
          sex: $enumDecode(_$SexEnumMap, json['sex']),
          bodyMassIndexMeasurement:
              const WHOGrowthStandardsBodyMassIndexMeasurementConverter()
                  .fromJson(
                      json['bodyMassIndexMeasurement'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$WHOGrowthStandardsBodyMassIndexForAgeImplToJson(
        _$WHOGrowthStandardsBodyMassIndexForAgeImpl instance) =>
    <String, dynamic>{
      'observationDate': instance.observationDate,
      'sex': _$SexEnumMap[instance.sex]!,
      'bodyMassIndexMeasurement':
          const WHOGrowthStandardsBodyMassIndexMeasurementConverter()
              .toJson(instance.bodyMassIndexMeasurement),
    };

_$WHOGrowthStandardsHeadCircumferenceForAgeImpl
    _$$WHOGrowthStandardsHeadCircumferenceForAgeImplFromJson(
            Map<String, dynamic> json) =>
        _$WHOGrowthStandardsHeadCircumferenceForAgeImpl(
          observationDate: json['observationDate'] == null
              ? null
              : Date.fromJson(json['observationDate'] as Map<String, dynamic>),
          sex: $enumDecode(_$SexEnumMap, json['sex']),
          age: Age.fromJson(json['age'] as Map<String, dynamic>),
          measurementResult: const LengthConverter()
              .fromJson(json['measurementResult'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$WHOGrowthStandardsHeadCircumferenceForAgeImplToJson(
        _$WHOGrowthStandardsHeadCircumferenceForAgeImpl instance) =>
    <String, dynamic>{
      'observationDate': instance.observationDate,
      'sex': _$SexEnumMap[instance.sex]!,
      'age': instance.age,
      'measurementResult':
          const LengthConverter().toJson(instance.measurementResult),
    };

_$WHOGrowthStandardsLengthForAgeImpl
    _$$WHOGrowthStandardsLengthForAgeImplFromJson(Map<String, dynamic> json) =>
        _$WHOGrowthStandardsLengthForAgeImpl(
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

Map<String, dynamic> _$$WHOGrowthStandardsLengthForAgeImplToJson(
        _$WHOGrowthStandardsLengthForAgeImpl instance) =>
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

_$WHOGrowthStandardsSubscapularSkinfoldForAgeImpl
    _$$WHOGrowthStandardsSubscapularSkinfoldForAgeImplFromJson(
            Map<String, dynamic> json) =>
        _$WHOGrowthStandardsSubscapularSkinfoldForAgeImpl(
          observationDate: json['observationDate'] == null
              ? null
              : Date.fromJson(json['observationDate'] as Map<String, dynamic>),
          sex: $enumDecode(_$SexEnumMap, json['sex']),
          age: Age.fromJson(json['age'] as Map<String, dynamic>),
          measurementResult: const LengthConverter()
              .fromJson(json['measurementResult'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$WHOGrowthStandardsSubscapularSkinfoldForAgeImplToJson(
        _$WHOGrowthStandardsSubscapularSkinfoldForAgeImpl instance) =>
    <String, dynamic>{
      'observationDate': instance.observationDate,
      'sex': _$SexEnumMap[instance.sex]!,
      'age': instance.age,
      'measurementResult':
          const LengthConverter().toJson(instance.measurementResult),
    };

_$WHOGrowthStandardsTricepsSkinfoldForAgeImpl
    _$$WHOGrowthStandardsTricepsSkinfoldForAgeImplFromJson(
            Map<String, dynamic> json) =>
        _$WHOGrowthStandardsTricepsSkinfoldForAgeImpl(
          observationDate: json['observationDate'] == null
              ? null
              : Date.fromJson(json['observationDate'] as Map<String, dynamic>),
          sex: $enumDecode(_$SexEnumMap, json['sex']),
          age: Age.fromJson(json['age'] as Map<String, dynamic>),
          measurementResult: const LengthConverter()
              .fromJson(json['measurementResult'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$WHOGrowthStandardsTricepsSkinfoldForAgeImplToJson(
        _$WHOGrowthStandardsTricepsSkinfoldForAgeImpl instance) =>
    <String, dynamic>{
      'observationDate': instance.observationDate,
      'sex': _$SexEnumMap[instance.sex]!,
      'age': instance.age,
      'measurementResult':
          const LengthConverter().toJson(instance.measurementResult),
    };

_$WHOGrowthStandardsWeightForAgeImpl
    _$$WHOGrowthStandardsWeightForAgeImplFromJson(Map<String, dynamic> json) =>
        _$WHOGrowthStandardsWeightForAgeImpl(
          observationDate: json['observationDate'] == null
              ? null
              : Date.fromJson(json['observationDate'] as Map<String, dynamic>),
          sex: $enumDecode(_$SexEnumMap, json['sex']),
          age: Age.fromJson(json['age'] as Map<String, dynamic>),
          weight: const MassConverter()
              .fromJson(json['weight'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$WHOGrowthStandardsWeightForAgeImplToJson(
        _$WHOGrowthStandardsWeightForAgeImpl instance) =>
    <String, dynamic>{
      'observationDate': instance.observationDate,
      'sex': _$SexEnumMap[instance.sex]!,
      'age': instance.age,
      'weight': const MassConverter().toJson(instance.weight),
    };

_$WHOGrowthStandardsWeightForHeightImpl
    _$$WHOGrowthStandardsWeightForHeightImplFromJson(
            Map<String, dynamic> json) =>
        _$WHOGrowthStandardsWeightForHeightImpl(
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

Map<String, dynamic> _$$WHOGrowthStandardsWeightForHeightImplToJson(
        _$WHOGrowthStandardsWeightForHeightImpl instance) =>
    <String, dynamic>{
      'observationDate': instance.observationDate,
      'sex': _$SexEnumMap[instance.sex]!,
      'age': instance.age,
      'height': const LengthConverter().toJson(instance.height),
      'weight': const MassConverter().toJson(instance.weight),
      'measure': _$LengthHeigthMeasurementPositionEnumMap[instance.measure]!,
    };

_$WHOGrowthStandardsWeigthForLengthImpl
    _$$WHOGrowthStandardsWeigthForLengthImplFromJson(
            Map<String, dynamic> json) =>
        _$WHOGrowthStandardsWeigthForLengthImpl(
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

Map<String, dynamic> _$$WHOGrowthStandardsWeigthForLengthImplToJson(
        _$WHOGrowthStandardsWeigthForLengthImpl instance) =>
    <String, dynamic>{
      'observationDate': instance.observationDate,
      'sex': _$SexEnumMap[instance.sex]!,
      'age': instance.age,
      'length': const LengthConverter().toJson(instance.length),
      'weight': const MassConverter().toJson(instance.weight),
      'measure': _$LengthHeigthMeasurementPositionEnumMap[instance.measure]!,
    };
