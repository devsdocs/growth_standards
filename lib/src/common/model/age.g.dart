// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'age.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AgeImpl _$$AgeImplFromJson(Map<String, dynamic> json) => _$AgeImpl(
      Date.fromJson(json['dateOfBirth'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AgeImplToJson(_$AgeImpl instance) => <String, dynamic>{
      'dateOfBirth': instance.dateOfBirth,
    };

_$DateImpl _$$DateImplFromJson(Map<String, dynamic> json) => _$DateImpl(
      year: json['year'] as int,
      month: $enumDecode(_$MonthsEnumMap, json['month']),
      date: json['date'] as int,
    );

Map<String, dynamic> _$$DateImplToJson(_$DateImpl instance) =>
    <String, dynamic>{
      'year': instance.year,
      'month': _$MonthsEnumMap[instance.month]!,
      'date': instance.date,
    };

const _$MonthsEnumMap = {
  Months.january: 1,
  Months.february: 2,
  Months.march: 3,
  Months.april: 4,
  Months.may: 5,
  Months.june: 6,
  Months.july: 7,
  Months.august: 8,
  Months.september: 9,
  Months.october: 10,
  Months.november: 11,
  Months.december: 12,
};
