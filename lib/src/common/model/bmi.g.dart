// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bmi.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BodyMassIndex _$BodyMassIndexFromJson(Map<String, dynamic> json) =>
    _BodyMassIndex(
      lengthHeight: Length.fromJson(
        json['lengthHeight'] as Map<String, dynamic>,
      ),
      weight: Mass.fromJson(json['weight'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$BodyMassIndexToJson(_BodyMassIndex instance) =>
    <String, dynamic>{
      'lengthHeight': instance.lengthHeight.toJson(),
      'weight': instance.weight.toJson(),
    };
