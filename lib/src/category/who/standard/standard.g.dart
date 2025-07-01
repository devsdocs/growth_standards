// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'standard.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WHOGrowthStandardsArmCircumferenceForAgeImpl
    _$$WHOGrowthStandardsArmCircumferenceForAgeImplFromJson(
            Map<String, dynamic> json) =>
        _$WHOGrowthStandardsArmCircumferenceForAgeImpl(
          sex: $enumDecode(_$SexEnumMap, json['sex']),
          age: Age.fromJson(json['age'] as Map<String, dynamic>),
          measurementResult: Length.fromJson(
              json['measurementResult'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$WHOGrowthStandardsArmCircumferenceForAgeImplToJson(
        _$WHOGrowthStandardsArmCircumferenceForAgeImpl instance) =>
    <String, dynamic>{
      'sex': _$SexEnumMap[instance.sex]!,
      'age': instance.age.toJson(),
      'measurementResult': instance.measurementResult.toJson(),
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
      'age': instance.age.toJson(),
    };

_$WHOGrowthStandardsBodyMassIndexForAgeImpl
    _$$WHOGrowthStandardsBodyMassIndexForAgeImplFromJson(
            Map<String, dynamic> json) =>
        _$WHOGrowthStandardsBodyMassIndexForAgeImpl(
          sex: $enumDecode(_$SexEnumMap, json['sex']),
          oedemaExist: json['oedemaExist'] as bool? ?? false,
          bodyMassIndexMeasurement:
              const WHOGrowthStandardsBodyMassIndexMeasurementConverter()
                  .fromJson(
                      json['bodyMassIndexMeasurement'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$WHOGrowthStandardsBodyMassIndexForAgeImplToJson(
        _$WHOGrowthStandardsBodyMassIndexForAgeImpl instance) =>
    <String, dynamic>{
      'sex': _$SexEnumMap[instance.sex]!,
      'oedemaExist': instance.oedemaExist,
      'bodyMassIndexMeasurement':
          const WHOGrowthStandardsBodyMassIndexMeasurementConverter()
              .toJson(instance.bodyMassIndexMeasurement),
    };

_$WHOGrowthStandardsHeadCircumferenceForAgeImpl
    _$$WHOGrowthStandardsHeadCircumferenceForAgeImplFromJson(
            Map<String, dynamic> json) =>
        _$WHOGrowthStandardsHeadCircumferenceForAgeImpl(
          sex: $enumDecode(_$SexEnumMap, json['sex']),
          age: Age.fromJson(json['age'] as Map<String, dynamic>),
          measurementResult: Length.fromJson(
              json['measurementResult'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$WHOGrowthStandardsHeadCircumferenceForAgeImplToJson(
        _$WHOGrowthStandardsHeadCircumferenceForAgeImpl instance) =>
    <String, dynamic>{
      'sex': _$SexEnumMap[instance.sex]!,
      'age': instance.age.toJson(),
      'measurementResult': instance.measurementResult.toJson(),
    };

_$WHOGrowthStandardsHeadCircumferenceVelocityForAgeImpl
    _$$WHOGrowthStandardsHeadCircumferenceVelocityForAgeImplFromJson(
            Map<String, dynamic> json) =>
        _$WHOGrowthStandardsHeadCircumferenceVelocityForAgeImpl(
          sex: $enumDecode(_$SexEnumMap, json['sex']),
          age: Age.fromJson(json['age'] as Map<String, dynamic>),
          pastMeasurement: (json['pastMeasurement'] as List<dynamic>)
              .map((e) =>
                  LengthMeasurementHistory.fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic>
    _$$WHOGrowthStandardsHeadCircumferenceVelocityForAgeImplToJson(
            _$WHOGrowthStandardsHeadCircumferenceVelocityForAgeImpl instance) =>
        <String, dynamic>{
          'sex': _$SexEnumMap[instance.sex]!,
          'age': instance.age.toJson(),
          'pastMeasurement':
              instance.pastMeasurement.map((e) => e.toJson()).toList(),
        };

_$WHOGrowthStandardsLengthForAgeImpl
    _$$WHOGrowthStandardsLengthForAgeImplFromJson(Map<String, dynamic> json) =>
        _$WHOGrowthStandardsLengthForAgeImpl(
          sex: $enumDecode(_$SexEnumMap, json['sex']),
          age: Age.fromJson(json['age'] as Map<String, dynamic>),
          lengthHeight:
              Length.fromJson(json['lengthHeight'] as Map<String, dynamic>),
          measure: $enumDecode(
              _$LengthHeightMeasurementPositionEnumMap, json['measure']),
        );

Map<String, dynamic> _$$WHOGrowthStandardsLengthForAgeImplToJson(
        _$WHOGrowthStandardsLengthForAgeImpl instance) =>
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

_$WHOGrowthStandardsLengthVelocityForAgeImpl
    _$$WHOGrowthStandardsLengthVelocityForAgeImplFromJson(
            Map<String, dynamic> json) =>
        _$WHOGrowthStandardsLengthVelocityForAgeImpl(
          sex: $enumDecode(_$SexEnumMap, json['sex']),
          age: Age.fromJson(json['age'] as Map<String, dynamic>),
          pastMeasurement: (json['pastMeasurement'] as List<dynamic>)
              .map((e) =>
                  LengthMeasurementHistory.fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$$WHOGrowthStandardsLengthVelocityForAgeImplToJson(
        _$WHOGrowthStandardsLengthVelocityForAgeImpl instance) =>
    <String, dynamic>{
      'sex': _$SexEnumMap[instance.sex]!,
      'age': instance.age.toJson(),
      'pastMeasurement':
          instance.pastMeasurement.map((e) => e.toJson()).toList(),
    };

_$WHOGrowthStandardsSubscapularSkinfoldForAgeImpl
    _$$WHOGrowthStandardsSubscapularSkinfoldForAgeImplFromJson(
            Map<String, dynamic> json) =>
        _$WHOGrowthStandardsSubscapularSkinfoldForAgeImpl(
          sex: $enumDecode(_$SexEnumMap, json['sex']),
          age: Age.fromJson(json['age'] as Map<String, dynamic>),
          measurementResult: Length.fromJson(
              json['measurementResult'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$WHOGrowthStandardsSubscapularSkinfoldForAgeImplToJson(
        _$WHOGrowthStandardsSubscapularSkinfoldForAgeImpl instance) =>
    <String, dynamic>{
      'sex': _$SexEnumMap[instance.sex]!,
      'age': instance.age.toJson(),
      'measurementResult': instance.measurementResult.toJson(),
    };

_$WHOGrowthStandardsTricepsSkinfoldForAgeImpl
    _$$WHOGrowthStandardsTricepsSkinfoldForAgeImplFromJson(
            Map<String, dynamic> json) =>
        _$WHOGrowthStandardsTricepsSkinfoldForAgeImpl(
          sex: $enumDecode(_$SexEnumMap, json['sex']),
          age: Age.fromJson(json['age'] as Map<String, dynamic>),
          measurementResult: Length.fromJson(
              json['measurementResult'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$WHOGrowthStandardsTricepsSkinfoldForAgeImplToJson(
        _$WHOGrowthStandardsTricepsSkinfoldForAgeImpl instance) =>
    <String, dynamic>{
      'sex': _$SexEnumMap[instance.sex]!,
      'age': instance.age.toJson(),
      'measurementResult': instance.measurementResult.toJson(),
    };

_$WHOGrowthStandardsWeightForAgeImpl
    _$$WHOGrowthStandardsWeightForAgeImplFromJson(Map<String, dynamic> json) =>
        _$WHOGrowthStandardsWeightForAgeImpl(
          sex: $enumDecode(_$SexEnumMap, json['sex']),
          oedemaExist: json['oedemaExist'] as bool? ?? false,
          age: Age.fromJson(json['age'] as Map<String, dynamic>),
          weight: Mass.fromJson(json['weight'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$WHOGrowthStandardsWeightForAgeImplToJson(
        _$WHOGrowthStandardsWeightForAgeImpl instance) =>
    <String, dynamic>{
      'sex': _$SexEnumMap[instance.sex]!,
      'oedemaExist': instance.oedemaExist,
      'age': instance.age.toJson(),
      'weight': instance.weight.toJson(),
    };

_$WHOGrowthStandardsWeightForHeightImpl
    _$$WHOGrowthStandardsWeightForHeightImplFromJson(
            Map<String, dynamic> json) =>
        _$WHOGrowthStandardsWeightForHeightImpl(
          sex: $enumDecode(_$SexEnumMap, json['sex']),
          age: Age.fromJson(json['age'] as Map<String, dynamic>),
          oedemaExist: json['oedemaExist'] as bool? ?? false,
          height: Length.fromJson(json['height'] as Map<String, dynamic>),
          weight: Mass.fromJson(json['weight'] as Map<String, dynamic>),
          measure: $enumDecode(
              _$LengthHeightMeasurementPositionEnumMap, json['measure']),
        );

Map<String, dynamic> _$$WHOGrowthStandardsWeightForHeightImplToJson(
        _$WHOGrowthStandardsWeightForHeightImpl instance) =>
    <String, dynamic>{
      'sex': _$SexEnumMap[instance.sex]!,
      'age': instance.age.toJson(),
      'oedemaExist': instance.oedemaExist,
      'height': instance.height.toJson(),
      'weight': instance.weight.toJson(),
      'measure': _$LengthHeightMeasurementPositionEnumMap[instance.measure]!,
    };

_$WHOGrowthStandardsWeightForLengthImpl
    _$$WHOGrowthStandardsWeightForLengthImplFromJson(
            Map<String, dynamic> json) =>
        _$WHOGrowthStandardsWeightForLengthImpl(
          sex: $enumDecode(_$SexEnumMap, json['sex']),
          age: Age.fromJson(json['age'] as Map<String, dynamic>),
          oedemaExist: json['oedemaExist'] as bool? ?? false,
          length: Length.fromJson(json['length'] as Map<String, dynamic>),
          weight: Mass.fromJson(json['weight'] as Map<String, dynamic>),
          measure: $enumDecode(
              _$LengthHeightMeasurementPositionEnumMap, json['measure']),
        );

Map<String, dynamic> _$$WHOGrowthStandardsWeightForLengthImplToJson(
        _$WHOGrowthStandardsWeightForLengthImpl instance) =>
    <String, dynamic>{
      'sex': _$SexEnumMap[instance.sex]!,
      'age': instance.age.toJson(),
      'oedemaExist': instance.oedemaExist,
      'length': instance.length.toJson(),
      'weight': instance.weight.toJson(),
      'measure': _$LengthHeightMeasurementPositionEnumMap[instance.measure]!,
    };

_$WHOGrowthStandardsWeightVelocityForAgeImpl
    _$$WHOGrowthStandardsWeightVelocityForAgeImplFromJson(
            Map<String, dynamic> json) =>
        _$WHOGrowthStandardsWeightVelocityForAgeImpl(
          sex: $enumDecode(_$SexEnumMap, json['sex']),
          age: Age.fromJson(json['age'] as Map<String, dynamic>),
          pastMeasurement: (json['pastMeasurement'] as List<dynamic>)
              .map((e) =>
                  MassMeasurementHistory.fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$$WHOGrowthStandardsWeightVelocityForAgeImplToJson(
        _$WHOGrowthStandardsWeightVelocityForAgeImpl instance) =>
    <String, dynamic>{
      'sex': _$SexEnumMap[instance.sex]!,
      'age': instance.age.toJson(),
      'pastMeasurement':
          instance.pastMeasurement.map((e) => e.toJson()).toList(),
    };
