// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'survey.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PersonSurveyImpl _$$PersonSurveyImplFromJson(Map<String, dynamic> json) =>
    _$PersonSurveyImpl(
      person: Person.fromJson(json['person'] as Map<String, dynamic>),
      measurementType:
          $enumDecode(_$MeasurementTypeEnumMap, json['measurementType']),
      precision: $enumDecodeNullable(_$PrecisionEnumMap, json['precision']) ??
          Precision.two,
      massMeasurementHistory: const MassMeasurementHistoryConverter()
          .fromJson(json['massMeasurementHistory'] as List),
      lengthHeightMeasurementHistory: const LengthMeasurementHistoryConverter()
          .fromJson(json['lengthHeightMeasurementHistory'] as List),
      headCircumferenceMeasurementHistory: _$JsonConverterFromJson<
              List<dynamic>, List<LengthMeasurementHistory>>(
          json['headCircumferenceMeasurementHistory'],
          const LengthMeasurementHistoryConverter().fromJson),
      subscapularSkinfoldMeasurementHistory: _$JsonConverterFromJson<
              List<dynamic>, List<LengthMeasurementHistory>>(
          json['subscapularSkinfoldMeasurementHistory'],
          const LengthMeasurementHistoryConverter().fromJson),
      tricepsSkinfoldMeasurementHistory: _$JsonConverterFromJson<List<dynamic>,
              List<LengthMeasurementHistory>>(
          json['tricepsSkinfoldMeasurementHistory'],
          const LengthMeasurementHistoryConverter().fromJson),
      armCircumferenceMeasurementHistory: _$JsonConverterFromJson<List<dynamic>,
              List<LengthMeasurementHistory>>(
          json['armCircumferenceMeasurementHistory'],
          const LengthMeasurementHistoryConverter().fromJson),
    );

Map<String, dynamic> _$$PersonSurveyImplToJson(_$PersonSurveyImpl instance) =>
    <String, dynamic>{
      'person': instance.person,
      'measurementType': _$MeasurementTypeEnumMap[instance.measurementType]!,
      'precision': _$PrecisionEnumMap[instance.precision],
      'massMeasurementHistory': const MassMeasurementHistoryConverter()
          .toJson(instance.massMeasurementHistory),
      'lengthHeightMeasurementHistory':
          const LengthMeasurementHistoryConverter()
              .toJson(instance.lengthHeightMeasurementHistory),
      'headCircumferenceMeasurementHistory':
          _$JsonConverterToJson<List<dynamic>, List<LengthMeasurementHistory>>(
              instance.headCircumferenceMeasurementHistory,
              const LengthMeasurementHistoryConverter().toJson),
      'subscapularSkinfoldMeasurementHistory':
          _$JsonConverterToJson<List<dynamic>, List<LengthMeasurementHistory>>(
              instance.subscapularSkinfoldMeasurementHistory,
              const LengthMeasurementHistoryConverter().toJson),
      'tricepsSkinfoldMeasurementHistory':
          _$JsonConverterToJson<List<dynamic>, List<LengthMeasurementHistory>>(
              instance.tricepsSkinfoldMeasurementHistory,
              const LengthMeasurementHistoryConverter().toJson),
      'armCircumferenceMeasurementHistory':
          _$JsonConverterToJson<List<dynamic>, List<LengthMeasurementHistory>>(
              instance.armCircumferenceMeasurementHistory,
              const LengthMeasurementHistoryConverter().toJson),
    };

const _$MeasurementTypeEnumMap = {
  MeasurementType.cdc: 'cdc',
  MeasurementType.who: 'who',
  MeasurementType.fenton: 'fenton',
};

const _$PrecisionEnumMap = {
  Precision.none: 'none',
  Precision.zero: 'zero',
  Precision.one: 'one',
  Precision.two: 'two',
  Precision.three: 'three',
  Precision.four: 'four',
  Precision.five: 'five',
  Precision.six: 'six',
  Precision.seven: 'seven',
  Precision.eight: 'eight',
  Precision.nine: 'nine',
  Precision.ten: 'ten',
};

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) =>
    value == null ? null : toJson(value);

_$ResultImpl _$$ResultImplFromJson(Map<String, dynamic> json) => _$ResultImpl(
      Date.fromJson(json['date'] as Map<String, dynamic>),
      zscore: json['zscore'] as num?,
      percentile: json['percentile'] as num?,
    );

Map<String, dynamic> _$$ResultImplToJson(_$ResultImpl instance) =>
    <String, dynamic>{
      'date': instance.date,
      'zscore': instance.zscore,
      'percentile': instance.percentile,
    };

_$PersonMeasurementImpl _$$PersonMeasurementImplFromJson(
        Map<String, dynamic> json) =>
    _$PersonMeasurementImpl(
      Person.fromJson(json['person'] as Map<String, dynamic>),
      measurements: (json['measurements'] as List<dynamic>)
          .map((e) => SameDayMeasurement.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$PersonMeasurementImplToJson(
        _$PersonMeasurementImpl instance) =>
    <String, dynamic>{
      'person': instance.person,
      'measurements': instance.measurements,
    };

_$SameDayMeasurementImpl _$$SameDayMeasurementImplFromJson(
        Map<String, dynamic> json) =>
    _$SameDayMeasurementImpl(
      Date.fromJson(json['date'] as Map<String, dynamic>),
      mass:
          const MassConverter().fromJson(json['mass'] as Map<String, dynamic>),
      lengthHeight:
          Length.fromJson(json['lengthHeight'] as Map<String, dynamic>),
      isOedema: json['isOedema'] as bool? ?? false,
      measurementPosition: $enumDecodeNullable(
              _$LengthHeigthMeasurementPositionEnumMap,
              json['measurementPosition']) ??
          LengthHeigthMeasurementPosition.recumbent,
      headCircumferenceMeasurement:
          _$JsonConverterFromJson<Map<String, dynamic>, Length>(
              json['headCircumferenceMeasurement'],
              const LengthConverter().fromJson),
      subscapularSkinfoldMeasurement:
          _$JsonConverterFromJson<Map<String, dynamic>, Length>(
              json['subscapularSkinfoldMeasurement'],
              const LengthConverter().fromJson),
      tricepsSkinfoldMeasurement:
          _$JsonConverterFromJson<Map<String, dynamic>, Length>(
              json['tricepsSkinfoldMeasurement'],
              const LengthConverter().fromJson),
      armCircumferenceMeasurement:
          _$JsonConverterFromJson<Map<String, dynamic>, Length>(
              json['armCircumferenceMeasurement'],
              const LengthConverter().fromJson),
    );

Map<String, dynamic> _$$SameDayMeasurementImplToJson(
        _$SameDayMeasurementImpl instance) =>
    <String, dynamic>{
      'date': instance.date,
      'mass': const MassConverter().toJson(instance.mass),
      'lengthHeight': instance.lengthHeight,
      'isOedema': instance.isOedema,
      'measurementPosition': _$LengthHeigthMeasurementPositionEnumMap[
          instance.measurementPosition],
      'headCircumferenceMeasurement':
          _$JsonConverterToJson<Map<String, dynamic>, Length>(
              instance.headCircumferenceMeasurement,
              const LengthConverter().toJson),
      'subscapularSkinfoldMeasurement':
          _$JsonConverterToJson<Map<String, dynamic>, Length>(
              instance.subscapularSkinfoldMeasurement,
              const LengthConverter().toJson),
      'tricepsSkinfoldMeasurement':
          _$JsonConverterToJson<Map<String, dynamic>, Length>(
              instance.tricepsSkinfoldMeasurement,
              const LengthConverter().toJson),
      'armCircumferenceMeasurement':
          _$JsonConverterToJson<Map<String, dynamic>, Length>(
              instance.armCircumferenceMeasurement,
              const LengthConverter().toJson),
    };

const _$LengthHeigthMeasurementPositionEnumMap = {
  LengthHeigthMeasurementPosition.recumbent: 'recumbent',
  LengthHeigthMeasurementPosition.standing: 'standing',
};

_$PersonImpl _$$PersonImplFromJson(Map<String, dynamic> json) => _$PersonImpl(
      sex: $enumDecode(_$SexEnumMap, json['sex']),
      dateOfBirth: const DateConverter()
          .fromJson(json['dateOfBirth'] as Map<String, dynamic>),
      id: json['id'] as String?,
      name: json['name'] as String?,
      address: json['address'] as String?,
    );

Map<String, dynamic> _$$PersonImplToJson(_$PersonImpl instance) =>
    <String, dynamic>{
      'sex': _$SexEnumMap[instance.sex]!,
      'dateOfBirth': const DateConverter().toJson(instance.dateOfBirth),
      'id': instance.id,
      'name': instance.name,
      'address': instance.address,
    };

const _$SexEnumMap = {
  Sex.male: 1,
  Sex.female: 2,
};

_$SurveyImpl _$$SurveyImplFromJson(Map<String, dynamic> json) => _$SurveyImpl(
      (json['surveyData'] as List<dynamic>)
          .map((e) => PersonSurvey.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$SurveyImplToJson(_$SurveyImpl instance) =>
    <String, dynamic>{
      'surveyData': instance.surveyData,
    };
