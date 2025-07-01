// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bmi.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BodyMassIndexImpl _$$BodyMassIndexImplFromJson(Map<String, dynamic> json) =>
    _$BodyMassIndexImpl(
      lengthHeight:
          Length.fromJson(json['lengthHeight'] as Map<String, dynamic>),
      weight: Mass.fromJson(json['weight'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$BodyMassIndexImplToJson(_$BodyMassIndexImpl instance) =>
    <String, dynamic>{
      'lengthHeight': instance.lengthHeight.toJson(),
      'weight': instance.weight.toJson(),
    };
