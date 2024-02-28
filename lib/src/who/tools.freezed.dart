// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tools.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MassMeasurementHistory {
  Date get date => throw _privateConstructorUsedError;
  Mass get unit => throw _privateConstructorUsedError;
  bool? get isOedema => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MassMeasurementHistoryCopyWith<MassMeasurementHistory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MassMeasurementHistoryCopyWith<$Res> {
  factory $MassMeasurementHistoryCopyWith(MassMeasurementHistory value,
          $Res Function(MassMeasurementHistory) then) =
      _$MassMeasurementHistoryCopyWithImpl<$Res, MassMeasurementHistory>;
  @useResult
  $Res call({Date date, Mass unit, bool? isOedema});

  $DateCopyWith<$Res> get date;
}

/// @nodoc
class _$MassMeasurementHistoryCopyWithImpl<$Res,
        $Val extends MassMeasurementHistory>
    implements $MassMeasurementHistoryCopyWith<$Res> {
  _$MassMeasurementHistoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? unit = null,
    Object? isOedema = freezed,
  }) {
    return _then(_value.copyWith(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as Date,
      unit: null == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as Mass,
      isOedema: freezed == isOedema
          ? _value.isOedema
          : isOedema // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DateCopyWith<$Res> get date {
    return $DateCopyWith<$Res>(_value.date, (value) {
      return _then(_value.copyWith(date: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MassMeasurementHistoryImplCopyWith<$Res>
    implements $MassMeasurementHistoryCopyWith<$Res> {
  factory _$$MassMeasurementHistoryImplCopyWith(
          _$MassMeasurementHistoryImpl value,
          $Res Function(_$MassMeasurementHistoryImpl) then) =
      __$$MassMeasurementHistoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Date date, Mass unit, bool? isOedema});

  @override
  $DateCopyWith<$Res> get date;
}

/// @nodoc
class __$$MassMeasurementHistoryImplCopyWithImpl<$Res>
    extends _$MassMeasurementHistoryCopyWithImpl<$Res,
        _$MassMeasurementHistoryImpl>
    implements _$$MassMeasurementHistoryImplCopyWith<$Res> {
  __$$MassMeasurementHistoryImplCopyWithImpl(
      _$MassMeasurementHistoryImpl _value,
      $Res Function(_$MassMeasurementHistoryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? unit = null,
    Object? isOedema = freezed,
  }) {
    return _then(_$MassMeasurementHistoryImpl(
      null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as Date,
      null == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as Mass,
      isOedema: freezed == isOedema
          ? _value.isOedema
          : isOedema // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$MassMeasurementHistoryImpl implements _MassMeasurementHistory {
  _$MassMeasurementHistoryImpl(this.date, this.unit, {this.isOedema = false});

  @override
  final Date date;
  @override
  final Mass unit;
  @override
  @JsonKey()
  final bool? isOedema;

  @override
  String toString() {
    return 'MassMeasurementHistory(date: $date, unit: $unit, isOedema: $isOedema)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MassMeasurementHistoryImpl &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.unit, unit) || other.unit == unit) &&
            (identical(other.isOedema, isOedema) ||
                other.isOedema == isOedema));
  }

  @override
  int get hashCode => Object.hash(runtimeType, date, unit, isOedema);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MassMeasurementHistoryImplCopyWith<_$MassMeasurementHistoryImpl>
      get copyWith => __$$MassMeasurementHistoryImplCopyWithImpl<
          _$MassMeasurementHistoryImpl>(this, _$identity);
}

abstract class _MassMeasurementHistory implements MassMeasurementHistory {
  factory _MassMeasurementHistory(final Date date, final Mass unit,
      {final bool? isOedema}) = _$MassMeasurementHistoryImpl;

  @override
  Date get date;
  @override
  Mass get unit;
  @override
  bool? get isOedema;
  @override
  @JsonKey(ignore: true)
  _$$MassMeasurementHistoryImplCopyWith<_$MassMeasurementHistoryImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LengthMeasurementHistory {
  Date get date => throw _privateConstructorUsedError;
  Length get unit => throw _privateConstructorUsedError;
  LengthHeigthMeasurementPosition? get measurementPosition =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LengthMeasurementHistoryCopyWith<LengthMeasurementHistory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LengthMeasurementHistoryCopyWith<$Res> {
  factory $LengthMeasurementHistoryCopyWith(LengthMeasurementHistory value,
          $Res Function(LengthMeasurementHistory) then) =
      _$LengthMeasurementHistoryCopyWithImpl<$Res, LengthMeasurementHistory>;
  @useResult
  $Res call(
      {Date date,
      Length unit,
      LengthHeigthMeasurementPosition? measurementPosition});

  $DateCopyWith<$Res> get date;
}

/// @nodoc
class _$LengthMeasurementHistoryCopyWithImpl<$Res,
        $Val extends LengthMeasurementHistory>
    implements $LengthMeasurementHistoryCopyWith<$Res> {
  _$LengthMeasurementHistoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? unit = null,
    Object? measurementPosition = freezed,
  }) {
    return _then(_value.copyWith(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as Date,
      unit: null == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as Length,
      measurementPosition: freezed == measurementPosition
          ? _value.measurementPosition
          : measurementPosition // ignore: cast_nullable_to_non_nullable
              as LengthHeigthMeasurementPosition?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DateCopyWith<$Res> get date {
    return $DateCopyWith<$Res>(_value.date, (value) {
      return _then(_value.copyWith(date: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LengthMeasurementHistoryImplCopyWith<$Res>
    implements $LengthMeasurementHistoryCopyWith<$Res> {
  factory _$$LengthMeasurementHistoryImplCopyWith(
          _$LengthMeasurementHistoryImpl value,
          $Res Function(_$LengthMeasurementHistoryImpl) then) =
      __$$LengthMeasurementHistoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Date date,
      Length unit,
      LengthHeigthMeasurementPosition? measurementPosition});

  @override
  $DateCopyWith<$Res> get date;
}

/// @nodoc
class __$$LengthMeasurementHistoryImplCopyWithImpl<$Res>
    extends _$LengthMeasurementHistoryCopyWithImpl<$Res,
        _$LengthMeasurementHistoryImpl>
    implements _$$LengthMeasurementHistoryImplCopyWith<$Res> {
  __$$LengthMeasurementHistoryImplCopyWithImpl(
      _$LengthMeasurementHistoryImpl _value,
      $Res Function(_$LengthMeasurementHistoryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? unit = null,
    Object? measurementPosition = freezed,
  }) {
    return _then(_$LengthMeasurementHistoryImpl(
      null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as Date,
      null == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as Length,
      measurementPosition: freezed == measurementPosition
          ? _value.measurementPosition
          : measurementPosition // ignore: cast_nullable_to_non_nullable
              as LengthHeigthMeasurementPosition?,
    ));
  }
}

/// @nodoc

class _$LengthMeasurementHistoryImpl implements _LengthMeasurementHistory {
  _$LengthMeasurementHistoryImpl(this.date, this.unit,
      {this.measurementPosition = LengthHeigthMeasurementPosition.recumbent});

  @override
  final Date date;
  @override
  final Length unit;
  @override
  @JsonKey()
  final LengthHeigthMeasurementPosition? measurementPosition;

  @override
  String toString() {
    return 'LengthMeasurementHistory(date: $date, unit: $unit, measurementPosition: $measurementPosition)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LengthMeasurementHistoryImpl &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.unit, unit) || other.unit == unit) &&
            (identical(other.measurementPosition, measurementPosition) ||
                other.measurementPosition == measurementPosition));
  }

  @override
  int get hashCode => Object.hash(runtimeType, date, unit, measurementPosition);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LengthMeasurementHistoryImplCopyWith<_$LengthMeasurementHistoryImpl>
      get copyWith => __$$LengthMeasurementHistoryImplCopyWithImpl<
          _$LengthMeasurementHistoryImpl>(this, _$identity);
}

abstract class _LengthMeasurementHistory implements LengthMeasurementHistory {
  factory _LengthMeasurementHistory(final Date date, final Length unit,
          {final LengthHeigthMeasurementPosition? measurementPosition}) =
      _$LengthMeasurementHistoryImpl;

  @override
  Date get date;
  @override
  Length get unit;
  @override
  LengthHeigthMeasurementPosition? get measurementPosition;
  @override
  @JsonKey(ignore: true)
  _$$LengthMeasurementHistoryImplCopyWith<_$LengthMeasurementHistoryImpl>
      get copyWith => throw _privateConstructorUsedError;
}