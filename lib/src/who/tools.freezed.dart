// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tools.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MassMeasurementHistory {
  Date get date;
  Mass get measurement;
  bool? get isOedema;

  /// Create a copy of MassMeasurementHistory
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MassMeasurementHistoryCopyWith<MassMeasurementHistory> get copyWith =>
      _$MassMeasurementHistoryCopyWithImpl<MassMeasurementHistory>(
          this as MassMeasurementHistory, _$identity);

  /// Serializes this MassMeasurementHistory to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MassMeasurementHistory &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.measurement, measurement) ||
                other.measurement == measurement) &&
            (identical(other.isOedema, isOedema) ||
                other.isOedema == isOedema));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, date, measurement, isOedema);

  @override
  String toString() {
    return 'MassMeasurementHistory(date: $date, measurement: $measurement, isOedema: $isOedema)';
  }
}

/// @nodoc
abstract mixin class $MassMeasurementHistoryCopyWith<$Res> {
  factory $MassMeasurementHistoryCopyWith(MassMeasurementHistory value,
          $Res Function(MassMeasurementHistory) _then) =
      _$MassMeasurementHistoryCopyWithImpl;
  @useResult
  $Res call({Date date, Mass measurement, bool? isOedema});

  $DateCopyWith<$Res> get date;
}

/// @nodoc
class _$MassMeasurementHistoryCopyWithImpl<$Res>
    implements $MassMeasurementHistoryCopyWith<$Res> {
  _$MassMeasurementHistoryCopyWithImpl(this._self, this._then);

  final MassMeasurementHistory _self;
  final $Res Function(MassMeasurementHistory) _then;

  /// Create a copy of MassMeasurementHistory
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? measurement = null,
    Object? isOedema = freezed,
  }) {
    return _then(_self.copyWith(
      date: null == date
          ? _self.date
          : date // ignore: cast_nullable_to_non_nullable
              as Date,
      measurement: null == measurement
          ? _self.measurement
          : measurement // ignore: cast_nullable_to_non_nullable
              as Mass,
      isOedema: freezed == isOedema
          ? _self.isOedema
          : isOedema // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }

  /// Create a copy of MassMeasurementHistory
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DateCopyWith<$Res> get date {
    return $DateCopyWith<$Res>(_self.date, (value) {
      return _then(_self.copyWith(date: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _MassMeasurementHistory extends MassMeasurementHistory {
  _MassMeasurementHistory(this.date, this.measurement, {this.isOedema = false})
      : super._();
  factory _MassMeasurementHistory.fromJson(Map<String, dynamic> json) =>
      _$MassMeasurementHistoryFromJson(json);

  @override
  final Date date;
  @override
  final Mass measurement;
  @override
  @JsonKey()
  final bool? isOedema;

  /// Create a copy of MassMeasurementHistory
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$MassMeasurementHistoryCopyWith<_MassMeasurementHistory> get copyWith =>
      __$MassMeasurementHistoryCopyWithImpl<_MassMeasurementHistory>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$MassMeasurementHistoryToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MassMeasurementHistory &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.measurement, measurement) ||
                other.measurement == measurement) &&
            (identical(other.isOedema, isOedema) ||
                other.isOedema == isOedema));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, date, measurement, isOedema);

  @override
  String toString() {
    return 'MassMeasurementHistory(date: $date, measurement: $measurement, isOedema: $isOedema)';
  }
}

/// @nodoc
abstract mixin class _$MassMeasurementHistoryCopyWith<$Res>
    implements $MassMeasurementHistoryCopyWith<$Res> {
  factory _$MassMeasurementHistoryCopyWith(_MassMeasurementHistory value,
          $Res Function(_MassMeasurementHistory) _then) =
      __$MassMeasurementHistoryCopyWithImpl;
  @override
  @useResult
  $Res call({Date date, Mass measurement, bool? isOedema});

  @override
  $DateCopyWith<$Res> get date;
}

/// @nodoc
class __$MassMeasurementHistoryCopyWithImpl<$Res>
    implements _$MassMeasurementHistoryCopyWith<$Res> {
  __$MassMeasurementHistoryCopyWithImpl(this._self, this._then);

  final _MassMeasurementHistory _self;
  final $Res Function(_MassMeasurementHistory) _then;

  /// Create a copy of MassMeasurementHistory
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? date = null,
    Object? measurement = null,
    Object? isOedema = freezed,
  }) {
    return _then(_MassMeasurementHistory(
      null == date
          ? _self.date
          : date // ignore: cast_nullable_to_non_nullable
              as Date,
      null == measurement
          ? _self.measurement
          : measurement // ignore: cast_nullable_to_non_nullable
              as Mass,
      isOedema: freezed == isOedema
          ? _self.isOedema
          : isOedema // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }

  /// Create a copy of MassMeasurementHistory
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DateCopyWith<$Res> get date {
    return $DateCopyWith<$Res>(_self.date, (value) {
      return _then(_self.copyWith(date: value));
    });
  }
}

/// @nodoc
mixin _$LengthMeasurementHistory {
  Date get date;
  Length get measurement;
  LengthHeightMeasurementPosition? get measurementPosition;

  /// Create a copy of LengthMeasurementHistory
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LengthMeasurementHistoryCopyWith<LengthMeasurementHistory> get copyWith =>
      _$LengthMeasurementHistoryCopyWithImpl<LengthMeasurementHistory>(
          this as LengthMeasurementHistory, _$identity);

  /// Serializes this LengthMeasurementHistory to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LengthMeasurementHistory &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.measurement, measurement) ||
                other.measurement == measurement) &&
            (identical(other.measurementPosition, measurementPosition) ||
                other.measurementPosition == measurementPosition));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, date, measurement, measurementPosition);

  @override
  String toString() {
    return 'LengthMeasurementHistory(date: $date, measurement: $measurement, measurementPosition: $measurementPosition)';
  }
}

/// @nodoc
abstract mixin class $LengthMeasurementHistoryCopyWith<$Res> {
  factory $LengthMeasurementHistoryCopyWith(LengthMeasurementHistory value,
          $Res Function(LengthMeasurementHistory) _then) =
      _$LengthMeasurementHistoryCopyWithImpl;
  @useResult
  $Res call(
      {Date date,
      Length measurement,
      LengthHeightMeasurementPosition? measurementPosition});

  $DateCopyWith<$Res> get date;
}

/// @nodoc
class _$LengthMeasurementHistoryCopyWithImpl<$Res>
    implements $LengthMeasurementHistoryCopyWith<$Res> {
  _$LengthMeasurementHistoryCopyWithImpl(this._self, this._then);

  final LengthMeasurementHistory _self;
  final $Res Function(LengthMeasurementHistory) _then;

  /// Create a copy of LengthMeasurementHistory
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? measurement = null,
    Object? measurementPosition = freezed,
  }) {
    return _then(_self.copyWith(
      date: null == date
          ? _self.date
          : date // ignore: cast_nullable_to_non_nullable
              as Date,
      measurement: null == measurement
          ? _self.measurement
          : measurement // ignore: cast_nullable_to_non_nullable
              as Length,
      measurementPosition: freezed == measurementPosition
          ? _self.measurementPosition
          : measurementPosition // ignore: cast_nullable_to_non_nullable
              as LengthHeightMeasurementPosition?,
    ));
  }

  /// Create a copy of LengthMeasurementHistory
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DateCopyWith<$Res> get date {
    return $DateCopyWith<$Res>(_self.date, (value) {
      return _then(_self.copyWith(date: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _LengthMeasurementHistory extends LengthMeasurementHistory {
  _LengthMeasurementHistory(this.date, this.measurement,
      {this.measurementPosition = LengthHeightMeasurementPosition.recumbent})
      : super._();
  factory _LengthMeasurementHistory.fromJson(Map<String, dynamic> json) =>
      _$LengthMeasurementHistoryFromJson(json);

  @override
  final Date date;
  @override
  final Length measurement;
  @override
  @JsonKey()
  final LengthHeightMeasurementPosition? measurementPosition;

  /// Create a copy of LengthMeasurementHistory
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$LengthMeasurementHistoryCopyWith<_LengthMeasurementHistory> get copyWith =>
      __$LengthMeasurementHistoryCopyWithImpl<_LengthMeasurementHistory>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$LengthMeasurementHistoryToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LengthMeasurementHistory &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.measurement, measurement) ||
                other.measurement == measurement) &&
            (identical(other.measurementPosition, measurementPosition) ||
                other.measurementPosition == measurementPosition));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, date, measurement, measurementPosition);

  @override
  String toString() {
    return 'LengthMeasurementHistory(date: $date, measurement: $measurement, measurementPosition: $measurementPosition)';
  }
}

/// @nodoc
abstract mixin class _$LengthMeasurementHistoryCopyWith<$Res>
    implements $LengthMeasurementHistoryCopyWith<$Res> {
  factory _$LengthMeasurementHistoryCopyWith(_LengthMeasurementHistory value,
          $Res Function(_LengthMeasurementHistory) _then) =
      __$LengthMeasurementHistoryCopyWithImpl;
  @override
  @useResult
  $Res call(
      {Date date,
      Length measurement,
      LengthHeightMeasurementPosition? measurementPosition});

  @override
  $DateCopyWith<$Res> get date;
}

/// @nodoc
class __$LengthMeasurementHistoryCopyWithImpl<$Res>
    implements _$LengthMeasurementHistoryCopyWith<$Res> {
  __$LengthMeasurementHistoryCopyWithImpl(this._self, this._then);

  final _LengthMeasurementHistory _self;
  final $Res Function(_LengthMeasurementHistory) _then;

  /// Create a copy of LengthMeasurementHistory
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? date = null,
    Object? measurement = null,
    Object? measurementPosition = freezed,
  }) {
    return _then(_LengthMeasurementHistory(
      null == date
          ? _self.date
          : date // ignore: cast_nullable_to_non_nullable
              as Date,
      null == measurement
          ? _self.measurement
          : measurement // ignore: cast_nullable_to_non_nullable
              as Length,
      measurementPosition: freezed == measurementPosition
          ? _self.measurementPosition
          : measurementPosition // ignore: cast_nullable_to_non_nullable
              as LengthHeightMeasurementPosition?,
    ));
  }

  /// Create a copy of LengthMeasurementHistory
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DateCopyWith<$Res> get date {
    return $DateCopyWith<$Res>(_self.date, (value) {
      return _then(_self.copyWith(date: value));
    });
  }
}

// dart format on
