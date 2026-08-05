// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gestational_age.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GestationalAge _$GestationalAgeFromJson(Map<String, dynamic> json) =>
    _GestationalAge(
      weeks: (json['weeks'] as num).toInt(),
      days: (json['days'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$GestationalAgeToJson(_GestationalAge instance) =>
    <String, dynamic>{'weeks': instance.weeks, 'days': instance.days};

_PostmenstrualAge _$PostmenstrualAgeFromJson(Map<String, dynamic> json) =>
    _PostmenstrualAge(
      weeks: (json['weeks'] as num).toInt(),
      days: (json['days'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$PostmenstrualAgeToJson(_PostmenstrualAge instance) =>
    <String, dynamic>{'weeks': instance.weeks, 'days': instance.days};
