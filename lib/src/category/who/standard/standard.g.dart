// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'standard.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_WHOGrowthStandardsArmCircumferenceForAge
    _$WHOGrowthStandardsArmCircumferenceForAgeFromJson(
            Map<String, dynamic> json) =>
        _WHOGrowthStandardsArmCircumferenceForAge(
          observationDate: json['observationDate'] == null
              ? null
              : Date.fromJson(json['observationDate'] as Map<String, dynamic>),
          sex: $enumDecode(_$SexEnumMap, json['sex']),
          age: Age.fromJson(json['age'] as Map<String, dynamic>),
          measurementResult: Length.fromJson(
              json['measurementResult'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$WHOGrowthStandardsArmCircumferenceForAgeToJson(
        _WHOGrowthStandardsArmCircumferenceForAge instance) =>
    <String, dynamic>{
      'observationDate': instance.observationDate?.toJson(),
      'sex': _$SexEnumMap[instance.sex]!,
      'age': instance.age.toJson(),
      'measurementResult': instance.measurementResult.toJson(),
    };

const _$SexEnumMap = {
  Sex.male: 1,
  Sex.female: 2,
};

_WHOGrowthStandardsBodyMassIndexMeasurement
    _$WHOGrowthStandardsBodyMassIndexMeasurementFromJson(
            Map<String, dynamic> json) =>
        _WHOGrowthStandardsBodyMassIndexMeasurement(
          json['value'] as num,
          age: Age.fromJson(json['age'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$WHOGrowthStandardsBodyMassIndexMeasurementToJson(
        _WHOGrowthStandardsBodyMassIndexMeasurement instance) =>
    <String, dynamic>{
      'value': instance.value,
      'age': instance.age.toJson(),
    };

_WHOGrowthStandardsBodyMassIndexForAge
    _$WHOGrowthStandardsBodyMassIndexForAgeFromJson(
            Map<String, dynamic> json) =>
        _WHOGrowthStandardsBodyMassIndexForAge(
          observationDate: json['observationDate'] == null
              ? null
              : Date.fromJson(json['observationDate'] as Map<String, dynamic>),
          sex: $enumDecode(_$SexEnumMap, json['sex']),
          oedemaExist: json['oedemaExist'] as bool? ?? false,
          bodyMassIndexMeasurement:
              const WHOGrowthStandardsBodyMassIndexMeasurementConverter()
                  .fromJson(
                      json['bodyMassIndexMeasurement'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$WHOGrowthStandardsBodyMassIndexForAgeToJson(
        _WHOGrowthStandardsBodyMassIndexForAge instance) =>
    <String, dynamic>{
      'observationDate': instance.observationDate?.toJson(),
      'sex': _$SexEnumMap[instance.sex]!,
      'oedemaExist': instance.oedemaExist,
      'bodyMassIndexMeasurement':
          const WHOGrowthStandardsBodyMassIndexMeasurementConverter()
              .toJson(instance.bodyMassIndexMeasurement),
    };

_WHOGrowthStandardsHeadCircumferenceForAge
    _$WHOGrowthStandardsHeadCircumferenceForAgeFromJson(
            Map<String, dynamic> json) =>
        _WHOGrowthStandardsHeadCircumferenceForAge(
          observationDate: json['observationDate'] == null
              ? null
              : Date.fromJson(json['observationDate'] as Map<String, dynamic>),
          sex: $enumDecode(_$SexEnumMap, json['sex']),
          age: Age.fromJson(json['age'] as Map<String, dynamic>),
          measurementResult: Length.fromJson(
              json['measurementResult'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$WHOGrowthStandardsHeadCircumferenceForAgeToJson(
        _WHOGrowthStandardsHeadCircumferenceForAge instance) =>
    <String, dynamic>{
      'observationDate': instance.observationDate?.toJson(),
      'sex': _$SexEnumMap[instance.sex]!,
      'age': instance.age.toJson(),
      'measurementResult': instance.measurementResult.toJson(),
    };

_WHOGrowthStandardsHeadCircumferenceVelocityForAge
    _$WHOGrowthStandardsHeadCircumferenceVelocityForAgeFromJson(
            Map<String, dynamic> json) =>
        _WHOGrowthStandardsHeadCircumferenceVelocityForAge(
          sex: $enumDecode(_$SexEnumMap, json['sex']),
          age: Age.fromJson(json['age'] as Map<String, dynamic>),
          pastMeasurement: (json['pastMeasurement'] as List<dynamic>)
              .map((e) =>
                  LengthMeasurementHistory.fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$WHOGrowthStandardsHeadCircumferenceVelocityForAgeToJson(
        _WHOGrowthStandardsHeadCircumferenceVelocityForAge instance) =>
    <String, dynamic>{
      'sex': _$SexEnumMap[instance.sex]!,
      'age': instance.age.toJson(),
      'pastMeasurement':
          instance.pastMeasurement.map((e) => e.toJson()).toList(),
    };

_WHOGrowthStandardsLengthForAge _$WHOGrowthStandardsLengthForAgeFromJson(
        Map<String, dynamic> json) =>
    _WHOGrowthStandardsLengthForAge(
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

Map<String, dynamic> _$WHOGrowthStandardsLengthForAgeToJson(
        _WHOGrowthStandardsLengthForAge instance) =>
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

_WHOGrowthStandardsLengthVelocityForAge
    _$WHOGrowthStandardsLengthVelocityForAgeFromJson(
            Map<String, dynamic> json) =>
        _WHOGrowthStandardsLengthVelocityForAge(
          sex: $enumDecode(_$SexEnumMap, json['sex']),
          age: Age.fromJson(json['age'] as Map<String, dynamic>),
          pastMeasurement: (json['pastMeasurement'] as List<dynamic>)
              .map((e) =>
                  LengthMeasurementHistory.fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$WHOGrowthStandardsLengthVelocityForAgeToJson(
        _WHOGrowthStandardsLengthVelocityForAge instance) =>
    <String, dynamic>{
      'sex': _$SexEnumMap[instance.sex]!,
      'age': instance.age.toJson(),
      'pastMeasurement':
          instance.pastMeasurement.map((e) => e.toJson()).toList(),
    };

_WHOGrowthStandardsSubscapularSkinfoldForAge
    _$WHOGrowthStandardsSubscapularSkinfoldForAgeFromJson(
            Map<String, dynamic> json) =>
        _WHOGrowthStandardsSubscapularSkinfoldForAge(
          observationDate: json['observationDate'] == null
              ? null
              : Date.fromJson(json['observationDate'] as Map<String, dynamic>),
          sex: $enumDecode(_$SexEnumMap, json['sex']),
          age: Age.fromJson(json['age'] as Map<String, dynamic>),
          measurementResult: Length.fromJson(
              json['measurementResult'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$WHOGrowthStandardsSubscapularSkinfoldForAgeToJson(
        _WHOGrowthStandardsSubscapularSkinfoldForAge instance) =>
    <String, dynamic>{
      'observationDate': instance.observationDate?.toJson(),
      'sex': _$SexEnumMap[instance.sex]!,
      'age': instance.age.toJson(),
      'measurementResult': instance.measurementResult.toJson(),
    };

_WHOGrowthStandardsTricepsSkinfoldForAge
    _$WHOGrowthStandardsTricepsSkinfoldForAgeFromJson(
            Map<String, dynamic> json) =>
        _WHOGrowthStandardsTricepsSkinfoldForAge(
          observationDate: json['observationDate'] == null
              ? null
              : Date.fromJson(json['observationDate'] as Map<String, dynamic>),
          sex: $enumDecode(_$SexEnumMap, json['sex']),
          age: Age.fromJson(json['age'] as Map<String, dynamic>),
          measurementResult: Length.fromJson(
              json['measurementResult'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$WHOGrowthStandardsTricepsSkinfoldForAgeToJson(
        _WHOGrowthStandardsTricepsSkinfoldForAge instance) =>
    <String, dynamic>{
      'observationDate': instance.observationDate?.toJson(),
      'sex': _$SexEnumMap[instance.sex]!,
      'age': instance.age.toJson(),
      'measurementResult': instance.measurementResult.toJson(),
    };

_WHOGrowthStandardsWeightVelocityForAge
    _$WHOGrowthStandardsWeightVelocityForAgeFromJson(
            Map<String, dynamic> json) =>
        _WHOGrowthStandardsWeightVelocityForAge(
          sex: $enumDecode(_$SexEnumMap, json['sex']),
          age: Age.fromJson(json['age'] as Map<String, dynamic>),
          pastMeasurement: (json['pastMeasurement'] as List<dynamic>)
              .map((e) =>
                  MassMeasurementHistory.fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$WHOGrowthStandardsWeightVelocityForAgeToJson(
        _WHOGrowthStandardsWeightVelocityForAge instance) =>
    <String, dynamic>{
      'sex': _$SexEnumMap[instance.sex]!,
      'age': instance.age.toJson(),
      'pastMeasurement':
          instance.pastMeasurement.map((e) => e.toJson()).toList(),
    };

_WHOGrowthStandardsWeightForAge _$WHOGrowthStandardsWeightForAgeFromJson(
        Map<String, dynamic> json) =>
    _WHOGrowthStandardsWeightForAge(
      observationDate: json['observationDate'] == null
          ? null
          : Date.fromJson(json['observationDate'] as Map<String, dynamic>),
      sex: $enumDecode(_$SexEnumMap, json['sex']),
      oedemaExist: json['oedemaExist'] as bool? ?? false,
      age: Age.fromJson(json['age'] as Map<String, dynamic>),
      weight: Mass.fromJson(json['weight'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$WHOGrowthStandardsWeightForAgeToJson(
        _WHOGrowthStandardsWeightForAge instance) =>
    <String, dynamic>{
      'observationDate': instance.observationDate?.toJson(),
      'sex': _$SexEnumMap[instance.sex]!,
      'oedemaExist': instance.oedemaExist,
      'age': instance.age.toJson(),
      'weight': instance.weight.toJson(),
    };

_WHOGrowthStandardsWeightForHeight _$WHOGrowthStandardsWeightForHeightFromJson(
        Map<String, dynamic> json) =>
    _WHOGrowthStandardsWeightForHeight(
      observationDate: json['observationDate'] == null
          ? null
          : Date.fromJson(json['observationDate'] as Map<String, dynamic>),
      sex: $enumDecode(_$SexEnumMap, json['sex']),
      age: Age.fromJson(json['age'] as Map<String, dynamic>),
      oedemaExist: json['oedemaExist'] as bool? ?? false,
      height: Length.fromJson(json['height'] as Map<String, dynamic>),
      weight: Mass.fromJson(json['weight'] as Map<String, dynamic>),
      measure: $enumDecode(
          _$LengthHeightMeasurementPositionEnumMap, json['measure']),
    );

Map<String, dynamic> _$WHOGrowthStandardsWeightForHeightToJson(
        _WHOGrowthStandardsWeightForHeight instance) =>
    <String, dynamic>{
      'observationDate': instance.observationDate?.toJson(),
      'sex': _$SexEnumMap[instance.sex]!,
      'age': instance.age.toJson(),
      'oedemaExist': instance.oedemaExist,
      'height': instance.height.toJson(),
      'weight': instance.weight.toJson(),
      'measure': _$LengthHeightMeasurementPositionEnumMap[instance.measure]!,
    };

_WHOGrowthStandardsWeightForLength _$WHOGrowthStandardsWeightForLengthFromJson(
        Map<String, dynamic> json) =>
    _WHOGrowthStandardsWeightForLength(
      observationDate: json['observationDate'] == null
          ? null
          : Date.fromJson(json['observationDate'] as Map<String, dynamic>),
      sex: $enumDecode(_$SexEnumMap, json['sex']),
      age: Age.fromJson(json['age'] as Map<String, dynamic>),
      oedemaExist: json['oedemaExist'] as bool? ?? false,
      length: Length.fromJson(json['length'] as Map<String, dynamic>),
      weight: Mass.fromJson(json['weight'] as Map<String, dynamic>),
      measure: $enumDecode(
          _$LengthHeightMeasurementPositionEnumMap, json['measure']),
    );

Map<String, dynamic> _$WHOGrowthStandardsWeightForLengthToJson(
        _WHOGrowthStandardsWeightForLength instance) =>
    <String, dynamic>{
      'observationDate': instance.observationDate?.toJson(),
      'sex': _$SexEnumMap[instance.sex]!,
      'age': instance.age.toJson(),
      'oedemaExist': instance.oedemaExist,
      'length': instance.length.toJson(),
      'weight': instance.weight.toJson(),
      'measure': _$LengthHeightMeasurementPositionEnumMap[instance.measure]!,
    };
