// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'intergrowth.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_NewbornBirthWeightForAge _$NewbornBirthWeightForAgeFromJson(
        Map<String, dynamic> json) =>
    _NewbornBirthWeightForAge(
      sex: $enumDecode(_$SexEnumMap, json['sex']),
      age: Age.fromJson(json['age'] as Map<String, dynamic>),
      measurementResult:
          Mass.fromJson(json['measurementResult'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NewbornBirthWeightForAgeToJson(
        _NewbornBirthWeightForAge instance) =>
    <String, dynamic>{
      'sex': _$SexEnumMap[instance.sex]!,
      'age': instance.age.toJson(),
      'measurementResult': instance.measurementResult.toJson(),
    };

const _$SexEnumMap = {
  Sex.male: 1,
  Sex.female: 2,
};

_NewbornBirthHeadCircumferenceForAge
    _$NewbornBirthHeadCircumferenceForAgeFromJson(Map<String, dynamic> json) =>
        _NewbornBirthHeadCircumferenceForAge(
          sex: $enumDecode(_$SexEnumMap, json['sex']),
          age: Age.fromJson(json['age'] as Map<String, dynamic>),
          measurementResult: Length.fromJson(
              json['measurementResult'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$NewbornBirthHeadCircumferenceForAgeToJson(
        _NewbornBirthHeadCircumferenceForAge instance) =>
    <String, dynamic>{
      'sex': _$SexEnumMap[instance.sex]!,
      'age': instance.age.toJson(),
      'measurementResult': instance.measurementResult.toJson(),
    };

_NewbornBirthLengthForAge _$NewbornBirthLengthForAgeFromJson(
        Map<String, dynamic> json) =>
    _NewbornBirthLengthForAge(
      sex: $enumDecode(_$SexEnumMap, json['sex']),
      age: Age.fromJson(json['age'] as Map<String, dynamic>),
      measurementResult:
          Length.fromJson(json['measurementResult'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NewbornBirthLengthForAgeToJson(
        _NewbornBirthLengthForAge instance) =>
    <String, dynamic>{
      'sex': _$SexEnumMap[instance.sex]!,
      'age': instance.age.toJson(),
      'measurementResult': instance.measurementResult.toJson(),
    };

_NewbornBirthWeightForLengthRatioForAge
    _$NewbornBirthWeightForLengthRatioForAgeFromJson(
            Map<String, dynamic> json) =>
        _NewbornBirthWeightForLengthRatioForAge(
          sex: $enumDecode(_$SexEnumMap, json['sex']),
          age: Age.fromJson(json['age'] as Map<String, dynamic>),
          measurementResult: NewbornWeightLengthRatioMeasurement.fromJson(
              json['measurementResult'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$NewbornBirthWeightForLengthRatioForAgeToJson(
        _NewbornBirthWeightForLengthRatioForAge instance) =>
    <String, dynamic>{
      'sex': _$SexEnumMap[instance.sex]!,
      'age': instance.age.toJson(),
      'measurementResult': instance.measurementResult.toJson(),
    };

_VeryPretermNewbornBirthWeightForAge
    _$VeryPretermNewbornBirthWeightForAgeFromJson(Map<String, dynamic> json) =>
        _VeryPretermNewbornBirthWeightForAge(
          sex: $enumDecode(_$SexEnumMap, json['sex']),
          age: Age.fromJson(json['age'] as Map<String, dynamic>),
          measurementResult:
              Mass.fromJson(json['measurementResult'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$VeryPretermNewbornBirthWeightForAgeToJson(
        _VeryPretermNewbornBirthWeightForAge instance) =>
    <String, dynamic>{
      'sex': _$SexEnumMap[instance.sex]!,
      'age': instance.age.toJson(),
      'measurementResult': instance.measurementResult.toJson(),
    };

_VeryPretermNewbornBirthHeadCircumferenceForAge
    _$VeryPretermNewbornBirthHeadCircumferenceForAgeFromJson(
            Map<String, dynamic> json) =>
        _VeryPretermNewbornBirthHeadCircumferenceForAge(
          sex: $enumDecode(_$SexEnumMap, json['sex']),
          age: Age.fromJson(json['age'] as Map<String, dynamic>),
          measurementResult: Length.fromJson(
              json['measurementResult'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$VeryPretermNewbornBirthHeadCircumferenceForAgeToJson(
        _VeryPretermNewbornBirthHeadCircumferenceForAge instance) =>
    <String, dynamic>{
      'sex': _$SexEnumMap[instance.sex]!,
      'age': instance.age.toJson(),
      'measurementResult': instance.measurementResult.toJson(),
    };

_VeryPretermNewbornBirthLengthForAge
    _$VeryPretermNewbornBirthLengthForAgeFromJson(Map<String, dynamic> json) =>
        _VeryPretermNewbornBirthLengthForAge(
          sex: $enumDecode(_$SexEnumMap, json['sex']),
          age: Age.fromJson(json['age'] as Map<String, dynamic>),
          measurementResult: Length.fromJson(
              json['measurementResult'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$VeryPretermNewbornBirthLengthForAgeToJson(
        _VeryPretermNewbornBirthLengthForAge instance) =>
    <String, dynamic>{
      'sex': _$SexEnumMap[instance.sex]!,
      'age': instance.age.toJson(),
      'measurementResult': instance.measurementResult.toJson(),
    };

_NewbornWeightLengthRatioMeasurement
    _$NewbornWeightLengthRatioMeasurementFromJson(Map<String, dynamic> json) =>
        _NewbornWeightLengthRatioMeasurement(
          json['value'] as num,
        );

Map<String, dynamic> _$NewbornWeightLengthRatioMeasurementToJson(
        _NewbornWeightLengthRatioMeasurement instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

_VeryPretermNewbornBirthWeightForLengthRatioForAge
    _$VeryPretermNewbornBirthWeightForLengthRatioForAgeFromJson(
            Map<String, dynamic> json) =>
        _VeryPretermNewbornBirthWeightForLengthRatioForAge(
          sex: $enumDecode(_$SexEnumMap, json['sex']),
          age: Age.fromJson(json['age'] as Map<String, dynamic>),
          measurementResult: NewbornWeightLengthRatioMeasurement.fromJson(
              json['measurementResult'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$VeryPretermNewbornBirthWeightForLengthRatioForAgeToJson(
        _VeryPretermNewbornBirthWeightForLengthRatioForAge instance) =>
    <String, dynamic>{
      'sex': _$SexEnumMap[instance.sex]!,
      'age': instance.age.toJson(),
      'measurementResult': instance.measurementResult.toJson(),
    };

_EarlyPregnancyDatingForCRL _$EarlyPregnancyDatingForCRLFromJson(
        Map<String, dynamic> json) =>
    _EarlyPregnancyDatingForCRL(
      age: Age.fromJson(json['age'] as Map<String, dynamic>),
      length: Length.fromJson(json['length'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$EarlyPregnancyDatingForCRLToJson(
        _EarlyPregnancyDatingForCRL instance) =>
    <String, dynamic>{
      'age': instance.age.toJson(),
      'length': instance.length.toJson(),
    };

_FetalGrowtAbdominalCircumferenceForAge
    _$FetalGrowtAbdominalCircumferenceForAgeFromJson(
            Map<String, dynamic> json) =>
        _FetalGrowtAbdominalCircumferenceForAge(
          age: Age.fromJson(json['age'] as Map<String, dynamic>),
          measurementResult: Length.fromJson(
              json['measurementResult'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$FetalGrowtAbdominalCircumferenceForAgeToJson(
        _FetalGrowtAbdominalCircumferenceForAge instance) =>
    <String, dynamic>{
      'age': instance.age.toJson(),
      'measurementResult': instance.measurementResult.toJson(),
    };

_FetalGrowtBiparietalDiameterForAge
    _$FetalGrowtBiparietalDiameterForAgeFromJson(Map<String, dynamic> json) =>
        _FetalGrowtBiparietalDiameterForAge(
          age: Age.fromJson(json['age'] as Map<String, dynamic>),
          measurementResult: Length.fromJson(
              json['measurementResult'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$FetalGrowtBiparietalDiameterForAgeToJson(
        _FetalGrowtBiparietalDiameterForAge instance) =>
    <String, dynamic>{
      'age': instance.age.toJson(),
      'measurementResult': instance.measurementResult.toJson(),
    };

_FetalGrowtHeadCircumferenceForAge _$FetalGrowtHeadCircumferenceForAgeFromJson(
        Map<String, dynamic> json) =>
    _FetalGrowtHeadCircumferenceForAge(
      age: Age.fromJson(json['age'] as Map<String, dynamic>),
      measurementResult:
          Length.fromJson(json['measurementResult'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$FetalGrowtHeadCircumferenceForAgeToJson(
        _FetalGrowtHeadCircumferenceForAge instance) =>
    <String, dynamic>{
      'age': instance.age.toJson(),
      'measurementResult': instance.measurementResult.toJson(),
    };

_FetalGrowtFemurLengthForAge _$FetalGrowtFemurLengthForAgeFromJson(
        Map<String, dynamic> json) =>
    _FetalGrowtFemurLengthForAge(
      age: Age.fromJson(json['age'] as Map<String, dynamic>),
      measurementResult:
          Length.fromJson(json['measurementResult'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$FetalGrowtFemurLengthForAgeToJson(
        _FetalGrowtFemurLengthForAge instance) =>
    <String, dynamic>{
      'age': instance.age.toJson(),
      'measurementResult': instance.measurementResult.toJson(),
    };

_FetalGrowtOccipitoFrontalDiameterForAge
    _$FetalGrowtOccipitoFrontalDiameterForAgeFromJson(
            Map<String, dynamic> json) =>
        _FetalGrowtOccipitoFrontalDiameterForAge(
          age: Age.fromJson(json['age'] as Map<String, dynamic>),
          measurementResult: Length.fromJson(
              json['measurementResult'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$FetalGrowtOccipitoFrontalDiameterForAgeToJson(
        _FetalGrowtOccipitoFrontalDiameterForAge instance) =>
    <String, dynamic>{
      'age': instance.age.toJson(),
      'measurementResult': instance.measurementResult.toJson(),
    };
