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
          observationDate: _$JsonConverterFromJson<Map<String, dynamic>, Date>(
              json['observationDate'], const DateConverter().fromJson),
          sex: $enumDecode(_$SexEnumMap, json['sex']),
          age: const AgeConverter()
              .fromJson(json['age'] as Map<String, dynamic>),
          bodyMassIndexMeasurement: CDCBodyMassIndexMeasurement.fromJson(
              json['bodyMassIndexMeasurement'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$GrowthReferenceBodyMassIndexForAgeImplToJson(
        _$GrowthReferenceBodyMassIndexForAgeImpl instance) =>
    <String, dynamic>{
      'observationDate': _$JsonConverterToJson<Map<String, dynamic>, Date>(
          instance.observationDate, const DateConverter().toJson),
      'sex': _$SexEnumMap[instance.sex]!,
      'age': const AgeConverter().toJson(instance.age),
      'bodyMassIndexMeasurement': instance.bodyMassIndexMeasurement,
    };

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);

const _$SexEnumMap = {
  Sex.male: 1,
  Sex.female: 2,
};

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) =>
    value == null ? null : toJson(value);

_$HeadCircumferenceForAgeImpl _$$HeadCircumferenceForAgeImplFromJson(
        Map<String, dynamic> json) =>
    _$HeadCircumferenceForAgeImpl(
      observationDate: _$JsonConverterFromJson<Map<String, dynamic>, Date>(
          json['observationDate'], const DateConverter().fromJson),
      sex: $enumDecode(_$SexEnumMap, json['sex']),
      age: const AgeConverter().fromJson(json['age'] as Map<String, dynamic>),
      measurementResult: const LengthConverter()
          .fromJson(json['measurementResult'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$HeadCircumferenceForAgeImplToJson(
        _$HeadCircumferenceForAgeImpl instance) =>
    <String, dynamic>{
      'observationDate': _$JsonConverterToJson<Map<String, dynamic>, Date>(
          instance.observationDate, const DateConverter().toJson),
      'sex': _$SexEnumMap[instance.sex]!,
      'age': const AgeConverter().toJson(instance.age),
      'measurementResult':
          const LengthConverter().toJson(instance.measurementResult),
    };

_$LengthForAgeImpl _$$LengthForAgeImplFromJson(Map<String, dynamic> json) =>
    _$LengthForAgeImpl(
      observationDate: _$JsonConverterFromJson<Map<String, dynamic>, Date>(
          json['observationDate'], const DateConverter().fromJson),
      sex: $enumDecode(_$SexEnumMap, json['sex']),
      age: const AgeConverter().fromJson(json['age'] as Map<String, dynamic>),
      lengthHeight: const LengthConverter()
          .fromJson(json['lengthHeight'] as Map<String, dynamic>),
      measure: $enumDecode(
          _$LengthHeightMeasurementPositionEnumMap, json['measure']),
    );

Map<String, dynamic> _$$LengthForAgeImplToJson(_$LengthForAgeImpl instance) =>
    <String, dynamic>{
      'observationDate': _$JsonConverterToJson<Map<String, dynamic>, Date>(
          instance.observationDate, const DateConverter().toJson),
      'sex': _$SexEnumMap[instance.sex]!,
      'age': const AgeConverter().toJson(instance.age),
      'lengthHeight': const LengthConverter().toJson(instance.lengthHeight),
      'measure': _$LengthHeightMeasurementPositionEnumMap[instance.measure]!,
    };

const _$LengthHeightMeasurementPositionEnumMap = {
  LengthHeightMeasurementPosition.recumbent: 'recumbent',
  LengthHeightMeasurementPosition.standing: 'standing',
};

_$GrowthReferenceHeightForAgeImpl _$$GrowthReferenceHeightForAgeImplFromJson(
        Map<String, dynamic> json) =>
    _$GrowthReferenceHeightForAgeImpl(
      observationDate: _$JsonConverterFromJson<Map<String, dynamic>, Date>(
          json['observationDate'], const DateConverter().fromJson),
      sex: $enumDecode(_$SexEnumMap, json['sex']),
      age: const AgeConverter().fromJson(json['age'] as Map<String, dynamic>),
      lengthHeight: const LengthConverter()
          .fromJson(json['lengthHeight'] as Map<String, dynamic>),
      measure: $enumDecode(
          _$LengthHeightMeasurementPositionEnumMap, json['measure']),
    );

Map<String, dynamic> _$$GrowthReferenceHeightForAgeImplToJson(
        _$GrowthReferenceHeightForAgeImpl instance) =>
    <String, dynamic>{
      'observationDate': _$JsonConverterToJson<Map<String, dynamic>, Date>(
          instance.observationDate, const DateConverter().toJson),
      'sex': _$SexEnumMap[instance.sex]!,
      'age': const AgeConverter().toJson(instance.age),
      'lengthHeight': const LengthConverter().toJson(instance.lengthHeight),
      'measure': _$LengthHeightMeasurementPositionEnumMap[instance.measure]!,
    };

_$CDCWeightForAgeImpl _$$CDCWeightForAgeImplFromJson(
        Map<String, dynamic> json) =>
    _$CDCWeightForAgeImpl(
      observationDate: _$JsonConverterFromJson<Map<String, dynamic>, Date>(
          json['observationDate'], const DateConverter().fromJson),
      sex: $enumDecode(_$SexEnumMap, json['sex']),
      age: const AgeConverter().fromJson(json['age'] as Map<String, dynamic>),
      weight: const MassConverter()
          .fromJson(json['weight'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CDCWeightForAgeImplToJson(
        _$CDCWeightForAgeImpl instance) =>
    <String, dynamic>{
      'observationDate': _$JsonConverterToJson<Map<String, dynamic>, Date>(
          instance.observationDate, const DateConverter().toJson),
      'sex': _$SexEnumMap[instance.sex]!,
      'age': const AgeConverter().toJson(instance.age),
      'weight': const MassConverter().toJson(instance.weight),
    };

_$CDCInfantWeightForAgeImpl _$$CDCInfantWeightForAgeImplFromJson(
        Map<String, dynamic> json) =>
    _$CDCInfantWeightForAgeImpl(
      observationDate: _$JsonConverterFromJson<Map<String, dynamic>, Date>(
          json['observationDate'], const DateConverter().fromJson),
      sex: $enumDecode(_$SexEnumMap, json['sex']),
      age: const AgeConverter().fromJson(json['age'] as Map<String, dynamic>),
      weight: const MassConverter()
          .fromJson(json['weight'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CDCInfantWeightForAgeImplToJson(
        _$CDCInfantWeightForAgeImpl instance) =>
    <String, dynamic>{
      'observationDate': _$JsonConverterToJson<Map<String, dynamic>, Date>(
          instance.observationDate, const DateConverter().toJson),
      'sex': _$SexEnumMap[instance.sex]!,
      'age': const AgeConverter().toJson(instance.age),
      'weight': const MassConverter().toJson(instance.weight),
    };

_$CDCInfantWeightForLengthImpl _$$CDCInfantWeightForLengthImplFromJson(
        Map<String, dynamic> json) =>
    _$CDCInfantWeightForLengthImpl(
      observationDate: _$JsonConverterFromJson<Map<String, dynamic>, Date>(
          json['observationDate'], const DateConverter().fromJson),
      sex: $enumDecode(_$SexEnumMap, json['sex']),
      age: const AgeConverter().fromJson(json['age'] as Map<String, dynamic>),
      length: const LengthConverter()
          .fromJson(json['length'] as Map<String, dynamic>),
      weight: const MassConverter()
          .fromJson(json['weight'] as Map<String, dynamic>),
      measure: $enumDecode(
          _$LengthHeightMeasurementPositionEnumMap, json['measure']),
    );

Map<String, dynamic> _$$CDCInfantWeightForLengthImplToJson(
        _$CDCInfantWeightForLengthImpl instance) =>
    <String, dynamic>{
      'observationDate': _$JsonConverterToJson<Map<String, dynamic>, Date>(
          instance.observationDate, const DateConverter().toJson),
      'sex': _$SexEnumMap[instance.sex]!,
      'age': const AgeConverter().toJson(instance.age),
      'length': const LengthConverter().toJson(instance.length),
      'weight': const MassConverter().toJson(instance.weight),
      'measure': _$LengthHeightMeasurementPositionEnumMap[instance.measure]!,
    };

_$CDCWeightForStatureImpl _$$CDCWeightForStatureImplFromJson(
        Map<String, dynamic> json) =>
    _$CDCWeightForStatureImpl(
      observationDate: _$JsonConverterFromJson<Map<String, dynamic>, Date>(
          json['observationDate'], const DateConverter().fromJson),
      sex: $enumDecode(_$SexEnumMap, json['sex']),
      age: const AgeConverter().fromJson(json['age'] as Map<String, dynamic>),
      height: const LengthConverter()
          .fromJson(json['height'] as Map<String, dynamic>),
      weight: const MassConverter()
          .fromJson(json['weight'] as Map<String, dynamic>),
      measure: $enumDecode(
          _$LengthHeightMeasurementPositionEnumMap, json['measure']),
    );

Map<String, dynamic> _$$CDCWeightForStatureImplToJson(
        _$CDCWeightForStatureImpl instance) =>
    <String, dynamic>{
      'observationDate': _$JsonConverterToJson<Map<String, dynamic>, Date>(
          instance.observationDate, const DateConverter().toJson),
      'sex': _$SexEnumMap[instance.sex]!,
      'age': const AgeConverter().toJson(instance.age),
      'height': const LengthConverter().toJson(instance.height),
      'weight': const MassConverter().toJson(instance.weight),
      'measure': _$LengthHeightMeasurementPositionEnumMap[instance.measure]!,
    };
