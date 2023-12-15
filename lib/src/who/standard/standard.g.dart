// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'standard.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

// coverage:ignore-start
/// @nodoc
extension $ArmCircumferenceForAgeCopyWithExtension on ArmCircumferenceForAge {
  $ArmCircumferenceForAgeCopyWith<ArmCircumferenceForAge> get copyWith =>
      $ArmCircumferenceForAgeCopyWith<ArmCircumferenceForAge>(
          this, (value) => value);

  $ArmCircumferenceForAgeCopyWithNull<ArmCircumferenceForAge>
      get copyWithNull =>
          $ArmCircumferenceForAgeCopyWithNull<ArmCircumferenceForAge>(
              this, (value) => value);
}

/// @nodoc
class $ArmCircumferenceForAgeCopyWith<$Return> {
  // ignore: unused_field
  final ArmCircumferenceForAge _value;

  // ignore: unused_field
  final $Return Function(ArmCircumferenceForAge) _callback;

  $ArmCircumferenceForAgeCopyWith(this._value, this._callback);

  $DateCopyWith<$Return>? get observationDate {
    if (_value.observationDate != null) {
      return $DateCopyWith<$Return>(_value.observationDate!,
          (value) => _callback(_value.copyWith(observationDate: value)));
    }
  }

  $AgeCopyWith<$Return> get age => $AgeCopyWith<$Return>(
      _value.age, (value) => _callback(_value.copyWith(age: value)));

  $Return call({
    Date? observationDate,
    Sex? sex,
    Age? age,
    Length? measurementResult,
    ArmCircumferenceForAgeData? armCircumferenceData,
  }) =>
      _callback(ArmCircumferenceForAge(
        observationDate: observationDate ?? _value.observationDate,
        sex: sex ?? _value.sex,
        age: age ?? _value.age,
        measurementResult: measurementResult ?? _value.measurementResult,
        armCircumferenceData:
            armCircumferenceData ?? _value.armCircumferenceData,
      ));
}

/// @nodoc
class $ArmCircumferenceForAgeCopyWithNull<$Return> {
  // ignore: unused_field
  final ArmCircumferenceForAge _value;
  // ignore: unused_field
  final $Return Function(ArmCircumferenceForAge) _callback;

  $ArmCircumferenceForAgeCopyWithNull(this._value, this._callback);

  $DateCopyWithNull<$Return>? get observationDate {
    if (_value.observationDate != null) {
      return $DateCopyWithNull<$Return>(_value.observationDate!,
          (value) => _callback(_value.copyWith(observationDate: value)));
    }
  }

  $AgeCopyWithNull<$Return> get age => $AgeCopyWithNull<$Return>(
      _value.age, (value) => _callback(_value.copyWith(age: value)));

  $Return call({
    Object? observationDate = copyWithExclude,
  }) =>
      _callback(ArmCircumferenceForAge(
        observationDate: observationDate == copyWithExclude
            ? _value.observationDate
            : observationDate as Date?,
        sex: _value.sex,
        age: _value.age,
        measurementResult: _value.measurementResult,
        armCircumferenceData: _value.armCircumferenceData,
      ));
}

// coverage:ignore-end

// **************************************************************************
// PropsGenerator
// **************************************************************************

// coverage:ignore-start
/// @nodoc
List<Object?> _$ArmCircumferenceForAgeProps(ArmCircumferenceForAge instance,
        {List<Object?>? superProps}) =>
    [
      instance.sex,
      instance.age,
      instance.observationDate,
      instance.measurementResult,
      instance.armCircumferenceData,
      ...?superProps
    ];
// coverage:ignore-end
