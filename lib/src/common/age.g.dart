// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'age.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

// coverage:ignore-start
/// @nodoc
extension $AgeCopyWithExtension on Age {
  $AgeCopyWith<Age> get copyWith => $AgeCopyWith<Age>(this, (value) => value);

  $AgeCopyWithNull<Age> get copyWithNull =>
      $AgeCopyWithNull<Age>(this, (value) => value);
}

/// @nodoc
class $AgeCopyWith<$Return> {
  // ignore: unused_field
  final Age _value;

  // ignore: unused_field
  final $Return Function(Age) _callback;

  $AgeCopyWith(this._value, this._callback);

  $DateCopyWith<$Return> get dateOfBirth => $DateCopyWith<$Return>(
      _value.dateOfBirth,
      (value) => _callback(_value.copyWith(dateOfBirth: value)));

  $Return call({
    Date? dateOfBirth,
  }) =>
      _callback(Age(
        dateOfBirth ?? _value.dateOfBirth,
      ));
}

/// @nodoc
class $AgeCopyWithNull<$Return> {
  // ignore: unused_field
  final Age _value;
  // ignore: unused_field
  final $Return Function(Age) _callback;

  $AgeCopyWithNull(this._value, this._callback);

  $DateCopyWithNull<$Return> get dateOfBirth => $DateCopyWithNull<$Return>(
      _value.dateOfBirth,
      (value) => _callback(_value.copyWith(dateOfBirth: value)));
}

// coverage:ignore-end

// coverage:ignore-start
/// @nodoc
extension $DateCopyWithExtension on Date {
  $DateCopyWith<Date> get copyWith =>
      $DateCopyWith<Date>(this, (value) => value);

  $DateCopyWithNull<Date> get copyWithNull =>
      $DateCopyWithNull<Date>(this, (value) => value);
}

/// @nodoc
class $DateCopyWith<$Return> {
  // ignore: unused_field
  final Date _value;

  // ignore: unused_field
  final $Return Function(Date) _callback;

  $DateCopyWith(this._value, this._callback);

  $Return call({
    int? year,
    Months? month,
    int? date,
  }) =>
      _callback(Date(
        year: year ?? _value.year,
        month: month ?? _value.month,
        date: date ?? _value.date,
      ));
}

/// @nodoc
class $DateCopyWithNull<$Return> {
  // ignore: unused_field
  final Date _value;
  // ignore: unused_field
  final $Return Function(Date) _callback;

  $DateCopyWithNull(this._value, this._callback);
}

// coverage:ignore-end

// **************************************************************************
// PropsGenerator
// **************************************************************************

// coverage:ignore-start
/// @nodoc
List<Object?> _$AgeProps(Age instance, {List<Object?>? superProps}) =>
    [instance.dateOfBirth, ...?superProps];
// coverage:ignore-end

// coverage:ignore-start
/// @nodoc
List<Object?> _$DateProps(Date instance, {List<Object?>? superProps}) =>
    [instance.year, instance.month, instance.date, ...?superProps];
// coverage:ignore-end
