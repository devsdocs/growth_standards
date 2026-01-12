// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'age.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Age _$AgeFromJson(Map<String, dynamic> json) => _Age(
  Date.fromJson(json['dateOfBirth'] as Map<String, dynamic>),
  observedDate: json['observedDate'] == null
      ? null
      : Date.fromJson(json['observedDate'] as Map<String, dynamic>),
  countObservationDate: json['countObservationDate'] as bool? ?? false,
);

Map<String, dynamic> _$AgeToJson(_Age instance) => <String, dynamic>{
  'dateOfBirth': instance.dateOfBirth.toJson(),
  'observedDate': instance.observedDate?.toJson(),
  'countObservationDate': instance.countObservationDate,
};

_Date _$DateFromJson(Map<String, dynamic> json) => _Date(
  year: (json['year'] as num).toInt(),
  month: $enumDecode(_$MonthsEnumMap, json['month']),
  date: (json['date'] as num).toInt(),
);

Map<String, dynamic> _$DateToJson(_Date instance) => <String, dynamic>{
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
