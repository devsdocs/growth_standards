// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'intergrowth.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_IntergrowthNewbornBirthWeightForAge
    _$IntergrowthNewbornBirthWeightForAgeFromJson(Map<String, dynamic> json) =>
        _IntergrowthNewbornBirthWeightForAge(
          sex: $enumDecode(_$SexEnumMap, json['sex']),
          age: Age.fromJson(json['age'] as Map<String, dynamic>),
          measurementResult:
              Mass.fromJson(json['measurementResult'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$IntergrowthNewbornBirthWeightForAgeToJson(
        _IntergrowthNewbornBirthWeightForAge instance) =>
    <String, dynamic>{
      'sex': _$SexEnumMap[instance.sex]!,
      'age': instance.age.toJson(),
      'measurementResult': instance.measurementResult.toJson(),
    };

const _$SexEnumMap = {
  Sex.male: 1,
  Sex.female: 2,
};

_IntergrowthNewbornBirthHeadCircumferenceForAge
    _$IntergrowthNewbornBirthHeadCircumferenceForAgeFromJson(
            Map<String, dynamic> json) =>
        _IntergrowthNewbornBirthHeadCircumferenceForAge(
          sex: $enumDecode(_$SexEnumMap, json['sex']),
          age: Age.fromJson(json['age'] as Map<String, dynamic>),
          measurementResult: Length.fromJson(
              json['measurementResult'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$IntergrowthNewbornBirthHeadCircumferenceForAgeToJson(
        _IntergrowthNewbornBirthHeadCircumferenceForAge instance) =>
    <String, dynamic>{
      'sex': _$SexEnumMap[instance.sex]!,
      'age': instance.age.toJson(),
      'measurementResult': instance.measurementResult.toJson(),
    };

_IntergrowthNewbornBirthLengthForAge
    _$IntergrowthNewbornBirthLengthForAgeFromJson(Map<String, dynamic> json) =>
        _IntergrowthNewbornBirthLengthForAge(
          sex: $enumDecode(_$SexEnumMap, json['sex']),
          age: Age.fromJson(json['age'] as Map<String, dynamic>),
          measurementResult: Length.fromJson(
              json['measurementResult'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$IntergrowthNewbornBirthLengthForAgeToJson(
        _IntergrowthNewbornBirthLengthForAge instance) =>
    <String, dynamic>{
      'sex': _$SexEnumMap[instance.sex]!,
      'age': instance.age.toJson(),
      'measurementResult': instance.measurementResult.toJson(),
    };

_IntergrowthNewbornBirthWeightForLengthRatioForAge
    _$IntergrowthNewbornBirthWeightForLengthRatioForAgeFromJson(
            Map<String, dynamic> json) =>
        _IntergrowthNewbornBirthWeightForLengthRatioForAge(
          sex: $enumDecode(_$SexEnumMap, json['sex']),
          age: Age.fromJson(json['age'] as Map<String, dynamic>),
          measurementResult: NewbornWeightLengthRatioMeasurement.fromJson(
              json['measurementResult'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$IntergrowthNewbornBirthWeightForLengthRatioForAgeToJson(
        _IntergrowthNewbornBirthWeightForLengthRatioForAge instance) =>
    <String, dynamic>{
      'sex': _$SexEnumMap[instance.sex]!,
      'age': instance.age.toJson(),
      'measurementResult': instance.measurementResult.toJson(),
    };

_IntergrowthVeryPretermNewbornBirthWeightForAge
    _$IntergrowthVeryPretermNewbornBirthWeightForAgeFromJson(
            Map<String, dynamic> json) =>
        _IntergrowthVeryPretermNewbornBirthWeightForAge(
          sex: $enumDecode(_$SexEnumMap, json['sex']),
          age: Age.fromJson(json['age'] as Map<String, dynamic>),
          measurementResult:
              Mass.fromJson(json['measurementResult'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$IntergrowthVeryPretermNewbornBirthWeightForAgeToJson(
        _IntergrowthVeryPretermNewbornBirthWeightForAge instance) =>
    <String, dynamic>{
      'sex': _$SexEnumMap[instance.sex]!,
      'age': instance.age.toJson(),
      'measurementResult': instance.measurementResult.toJson(),
    };

_IntergrowthVeryPretermNewbornBirthHeadCircumferenceForAge
    _$IntergrowthVeryPretermNewbornBirthHeadCircumferenceForAgeFromJson(
            Map<String, dynamic> json) =>
        _IntergrowthVeryPretermNewbornBirthHeadCircumferenceForAge(
          sex: $enumDecode(_$SexEnumMap, json['sex']),
          age: Age.fromJson(json['age'] as Map<String, dynamic>),
          measurementResult: Length.fromJson(
              json['measurementResult'] as Map<String, dynamic>),
        );

Map<String,
    dynamic> _$IntergrowthVeryPretermNewbornBirthHeadCircumferenceForAgeToJson(
        _IntergrowthVeryPretermNewbornBirthHeadCircumferenceForAge instance) =>
    <String, dynamic>{
      'sex': _$SexEnumMap[instance.sex]!,
      'age': instance.age.toJson(),
      'measurementResult': instance.measurementResult.toJson(),
    };

_IntergrowthVeryPretermNewbornBirthLengthForAge
    _$IntergrowthVeryPretermNewbornBirthLengthForAgeFromJson(
            Map<String, dynamic> json) =>
        _IntergrowthVeryPretermNewbornBirthLengthForAge(
          sex: $enumDecode(_$SexEnumMap, json['sex']),
          age: Age.fromJson(json['age'] as Map<String, dynamic>),
          measurementResult: Length.fromJson(
              json['measurementResult'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$IntergrowthVeryPretermNewbornBirthLengthForAgeToJson(
        _IntergrowthVeryPretermNewbornBirthLengthForAge instance) =>
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

_IntergrowthVeryPretermNewbornBirthWeightForLengthRatioForAge
    _$IntergrowthVeryPretermNewbornBirthWeightForLengthRatioForAgeFromJson(
            Map<String, dynamic> json) =>
        _IntergrowthVeryPretermNewbornBirthWeightForLengthRatioForAge(
          sex: $enumDecode(_$SexEnumMap, json['sex']),
          age: Age.fromJson(json['age'] as Map<String, dynamic>),
          measurementResult: NewbornWeightLengthRatioMeasurement.fromJson(
              json['measurementResult'] as Map<String, dynamic>),
        );

Map<String, dynamic>
    _$IntergrowthVeryPretermNewbornBirthWeightForLengthRatioForAgeToJson(
            _IntergrowthVeryPretermNewbornBirthWeightForLengthRatioForAge
                instance) =>
        <String, dynamic>{
          'sex': _$SexEnumMap[instance.sex]!,
          'age': instance.age.toJson(),
          'measurementResult': instance.measurementResult.toJson(),
        };

_IntergrowthEarlyPregnancyDatingForCRL
    _$IntergrowthEarlyPregnancyDatingForCRLFromJson(
            Map<String, dynamic> json) =>
        _IntergrowthEarlyPregnancyDatingForCRL(
          age: Age.fromJson(json['age'] as Map<String, dynamic>),
          length: Length.fromJson(json['length'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$IntergrowthEarlyPregnancyDatingForCRLToJson(
        _IntergrowthEarlyPregnancyDatingForCRL instance) =>
    <String, dynamic>{
      'age': instance.age.toJson(),
      'length': instance.length.toJson(),
    };

_IntergrowthFetalGrowtAbdominalCircumferenceForAge
    _$IntergrowthFetalGrowtAbdominalCircumferenceForAgeFromJson(
            Map<String, dynamic> json) =>
        _IntergrowthFetalGrowtAbdominalCircumferenceForAge(
          age: Age.fromJson(json['age'] as Map<String, dynamic>),
          measurementResult: Length.fromJson(
              json['measurementResult'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$IntergrowthFetalGrowtAbdominalCircumferenceForAgeToJson(
        _IntergrowthFetalGrowtAbdominalCircumferenceForAge instance) =>
    <String, dynamic>{
      'age': instance.age.toJson(),
      'measurementResult': instance.measurementResult.toJson(),
    };

_IntergrowthFetalGrowtBiparietalDiameterForAge
    _$IntergrowthFetalGrowtBiparietalDiameterForAgeFromJson(
            Map<String, dynamic> json) =>
        _IntergrowthFetalGrowtBiparietalDiameterForAge(
          age: Age.fromJson(json['age'] as Map<String, dynamic>),
          measurementResult: Length.fromJson(
              json['measurementResult'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$IntergrowthFetalGrowtBiparietalDiameterForAgeToJson(
        _IntergrowthFetalGrowtBiparietalDiameterForAge instance) =>
    <String, dynamic>{
      'age': instance.age.toJson(),
      'measurementResult': instance.measurementResult.toJson(),
    };

_IntergrowthFetalGrowtHeadCircumferenceForAge
    _$IntergrowthFetalGrowtHeadCircumferenceForAgeFromJson(
            Map<String, dynamic> json) =>
        _IntergrowthFetalGrowtHeadCircumferenceForAge(
          age: Age.fromJson(json['age'] as Map<String, dynamic>),
          measurementResult: Length.fromJson(
              json['measurementResult'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$IntergrowthFetalGrowtHeadCircumferenceForAgeToJson(
        _IntergrowthFetalGrowtHeadCircumferenceForAge instance) =>
    <String, dynamic>{
      'age': instance.age.toJson(),
      'measurementResult': instance.measurementResult.toJson(),
    };

_IntergrowthFetalGrowtFemurLengthForAge
    _$IntergrowthFetalGrowtFemurLengthForAgeFromJson(
            Map<String, dynamic> json) =>
        _IntergrowthFetalGrowtFemurLengthForAge(
          age: Age.fromJson(json['age'] as Map<String, dynamic>),
          measurementResult: Length.fromJson(
              json['measurementResult'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$IntergrowthFetalGrowtFemurLengthForAgeToJson(
        _IntergrowthFetalGrowtFemurLengthForAge instance) =>
    <String, dynamic>{
      'age': instance.age.toJson(),
      'measurementResult': instance.measurementResult.toJson(),
    };

_IntergrowthFetalGrowtOccipitoFrontalDiameterForAge
    _$IntergrowthFetalGrowtOccipitoFrontalDiameterForAgeFromJson(
            Map<String, dynamic> json) =>
        _IntergrowthFetalGrowtOccipitoFrontalDiameterForAge(
          age: Age.fromJson(json['age'] as Map<String, dynamic>),
          measurementResult: Length.fromJson(
              json['measurementResult'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$IntergrowthFetalGrowtOccipitoFrontalDiameterForAgeToJson(
        _IntergrowthFetalGrowtOccipitoFrontalDiameterForAge instance) =>
    <String, dynamic>{
      'age': instance.age.toJson(),
      'measurementResult': instance.measurementResult.toJson(),
    };

_IntergrowthPretermInfantsPostnatalGrowthHeadCircumferenceForAge
    _$IntergrowthPretermInfantsPostnatalGrowthHeadCircumferenceForAgeFromJson(
            Map<String, dynamic> json) =>
        _IntergrowthPretermInfantsPostnatalGrowthHeadCircumferenceForAge(
          sex: $enumDecode(_$SexEnumMap, json['sex']),
          age: Age.fromJson(json['age'] as Map<String, dynamic>),
          measurementResult: Length.fromJson(
              json['measurementResult'] as Map<String, dynamic>),
        );

Map<String, dynamic>
    _$IntergrowthPretermInfantsPostnatalGrowthHeadCircumferenceForAgeToJson(
            _IntergrowthPretermInfantsPostnatalGrowthHeadCircumferenceForAge
                instance) =>
        <String, dynamic>{
          'sex': _$SexEnumMap[instance.sex]!,
          'age': instance.age.toJson(),
          'measurementResult': instance.measurementResult.toJson(),
        };

_IntergrowthPretermInfantsPostnatalGrowthLengthForAge
    _$IntergrowthPretermInfantsPostnatalGrowthLengthForAgeFromJson(
            Map<String, dynamic> json) =>
        _IntergrowthPretermInfantsPostnatalGrowthLengthForAge(
          sex: $enumDecode(_$SexEnumMap, json['sex']),
          age: Age.fromJson(json['age'] as Map<String, dynamic>),
          measurementResult: Length.fromJson(
              json['measurementResult'] as Map<String, dynamic>),
        );

Map<String, dynamic>
    _$IntergrowthPretermInfantsPostnatalGrowthLengthForAgeToJson(
            _IntergrowthPretermInfantsPostnatalGrowthLengthForAge instance) =>
        <String, dynamic>{
          'sex': _$SexEnumMap[instance.sex]!,
          'age': instance.age.toJson(),
          'measurementResult': instance.measurementResult.toJson(),
        };

_IntergrowthPretermInfantsPostnatalGrowthWeightForAge
    _$IntergrowthPretermInfantsPostnatalGrowthWeightForAgeFromJson(
            Map<String, dynamic> json) =>
        _IntergrowthPretermInfantsPostnatalGrowthWeightForAge(
          sex: $enumDecode(_$SexEnumMap, json['sex']),
          age: Age.fromJson(json['age'] as Map<String, dynamic>),
          measurementResult:
              Mass.fromJson(json['measurementResult'] as Map<String, dynamic>),
        );

Map<String, dynamic>
    _$IntergrowthPretermInfantsPostnatalGrowthWeightForAgeToJson(
            _IntergrowthPretermInfantsPostnatalGrowthWeightForAge instance) =>
        <String, dynamic>{
          'sex': _$SexEnumMap[instance.sex]!,
          'age': instance.age.toJson(),
          'measurementResult': instance.measurementResult.toJson(),
        };

_IntergrowthSymphysisFundalHeightForAge
    _$IntergrowthSymphysisFundalHeightForAgeFromJson(
            Map<String, dynamic> json) =>
        _IntergrowthSymphysisFundalHeightForAge(
          age: Age.fromJson(json['age'] as Map<String, dynamic>),
          length: Length.fromJson(json['length'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$IntergrowthSymphysisFundalHeightForAgeToJson(
        _IntergrowthSymphysisFundalHeightForAge instance) =>
    <String, dynamic>{
      'age': instance.age.toJson(),
      'length': instance.length.toJson(),
    };

_IntergrowthGestationalWeightGainForAge
    _$IntergrowthGestationalWeightGainForAgeFromJson(
            Map<String, dynamic> json) =>
        _IntergrowthGestationalWeightGainForAge(
          sex: $enumDecode(_$SexEnumMap, json['sex']),
          age: Age.fromJson(json['age'] as Map<String, dynamic>),
          measurementResult:
              Mass.fromJson(json['measurementResult'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$IntergrowthGestationalWeightGainForAgeToJson(
        _IntergrowthGestationalWeightGainForAge instance) =>
    <String, dynamic>{
      'sex': _$SexEnumMap[instance.sex]!,
      'age': instance.age.toJson(),
      'measurementResult': instance.measurementResult.toJson(),
    };

_IntergrowthFetalCrownRumpLengthForAge
    _$IntergrowthFetalCrownRumpLengthForAgeFromJson(
            Map<String, dynamic> json) =>
        _IntergrowthFetalCrownRumpLengthForAge(
          age: Age.fromJson(json['age'] as Map<String, dynamic>),
          length: Length.fromJson(json['length'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$IntergrowthFetalCrownRumpLengthForAgeToJson(
        _IntergrowthFetalCrownRumpLengthForAge instance) =>
    <String, dynamic>{
      'age': instance.age.toJson(),
      'length': instance.length.toJson(),
    };
