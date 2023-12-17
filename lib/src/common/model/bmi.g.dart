// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bmi.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BodyMassIndexImpl _$$BodyMassIndexImplFromJson(Map<String, dynamic> json) =>
    _$BodyMassIndexImpl(
      lengthHeight: const LengthConverter()
          .fromJson(json['lengthHeight'] as Map<String, dynamic>),
      weight: const MassConverter()
          .fromJson(json['weight'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$BodyMassIndexImplToJson(_$BodyMassIndexImpl instance) =>
    <String, dynamic>{
      'lengthHeight': const LengthConverter().toJson(instance.lengthHeight),
      'weight': const MassConverter().toJson(instance.weight),
    };
