// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fenton.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FentonHeadCircumferenceForAge {
  Age get age;
  Length get measurementResult;

  /// Create a copy of FentonHeadCircumferenceForAge
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $FentonHeadCircumferenceForAgeCopyWith<FentonHeadCircumferenceForAge>
      get copyWith => _$FentonHeadCircumferenceForAgeCopyWithImpl<
              FentonHeadCircumferenceForAge>(
          this as FentonHeadCircumferenceForAge, _$identity);

  /// Serializes this FentonHeadCircumferenceForAge to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FentonHeadCircumferenceForAge &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.measurementResult, measurementResult) ||
                other.measurementResult == measurementResult));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, age, measurementResult);

  @override
  String toString() {
    return 'FentonHeadCircumferenceForAge(age: $age, measurementResult: $measurementResult)';
  }
}

/// @nodoc
abstract mixin class $FentonHeadCircumferenceForAgeCopyWith<$Res> {
  factory $FentonHeadCircumferenceForAgeCopyWith(
          FentonHeadCircumferenceForAge value,
          $Res Function(FentonHeadCircumferenceForAge) _then) =
      _$FentonHeadCircumferenceForAgeCopyWithImpl;
  @useResult
  $Res call({Age age, Length measurementResult});

  $AgeCopyWith<$Res> get age;
}

/// @nodoc
class _$FentonHeadCircumferenceForAgeCopyWithImpl<$Res>
    implements $FentonHeadCircumferenceForAgeCopyWith<$Res> {
  _$FentonHeadCircumferenceForAgeCopyWithImpl(this._self, this._then);

  final FentonHeadCircumferenceForAge _self;
  final $Res Function(FentonHeadCircumferenceForAge) _then;

  /// Create a copy of FentonHeadCircumferenceForAge
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? age = null,
    Object? measurementResult = null,
  }) {
    return _then(_self.copyWith(
      age: null == age
          ? _self.age
          : age // ignore: cast_nullable_to_non_nullable
              as Age,
      measurementResult: null == measurementResult
          ? _self.measurementResult
          : measurementResult // ignore: cast_nullable_to_non_nullable
              as Length,
    ));
  }

  /// Create a copy of FentonHeadCircumferenceForAge
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AgeCopyWith<$Res> get age {
    return $AgeCopyWith<$Res>(_self.age, (value) {
      return _then(_self.copyWith(age: value));
    });
  }
}

/// Adds pattern-matching-related methods to [FentonHeadCircumferenceForAge].
extension FentonHeadCircumferenceForAgePatterns
    on FentonHeadCircumferenceForAge {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_FentonHeadCircumferenceForAge value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _FentonHeadCircumferenceForAge() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FentonHeadCircumferenceForAge value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FentonHeadCircumferenceForAge():
        return $default(_that);
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_FentonHeadCircumferenceForAge value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FentonHeadCircumferenceForAge() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(Age age, Length measurementResult)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _FentonHeadCircumferenceForAge() when $default != null:
        return $default(_that.age, _that.measurementResult);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(Age age, Length measurementResult) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FentonHeadCircumferenceForAge():
        return $default(_that.age, _that.measurementResult);
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(Age age, Length measurementResult)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FentonHeadCircumferenceForAge() when $default != null:
        return $default(_that.age, _that.measurementResult);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _FentonHeadCircumferenceForAge extends FentonHeadCircumferenceForAge {
  _FentonHeadCircumferenceForAge(
      {required this.age, required this.measurementResult})
      : super._();
  factory _FentonHeadCircumferenceForAge.fromJson(Map<String, dynamic> json) =>
      _$FentonHeadCircumferenceForAgeFromJson(json);

  @override
  final Age age;
  @override
  final Length measurementResult;

  /// Create a copy of FentonHeadCircumferenceForAge
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$FentonHeadCircumferenceForAgeCopyWith<_FentonHeadCircumferenceForAge>
      get copyWith => __$FentonHeadCircumferenceForAgeCopyWithImpl<
          _FentonHeadCircumferenceForAge>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$FentonHeadCircumferenceForAgeToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FentonHeadCircumferenceForAge &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.measurementResult, measurementResult) ||
                other.measurementResult == measurementResult));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, age, measurementResult);

  @override
  String toString() {
    return 'FentonHeadCircumferenceForAge(age: $age, measurementResult: $measurementResult)';
  }
}

/// @nodoc
abstract mixin class _$FentonHeadCircumferenceForAgeCopyWith<$Res>
    implements $FentonHeadCircumferenceForAgeCopyWith<$Res> {
  factory _$FentonHeadCircumferenceForAgeCopyWith(
          _FentonHeadCircumferenceForAge value,
          $Res Function(_FentonHeadCircumferenceForAge) _then) =
      __$FentonHeadCircumferenceForAgeCopyWithImpl;
  @override
  @useResult
  $Res call({Age age, Length measurementResult});

  @override
  $AgeCopyWith<$Res> get age;
}

/// @nodoc
class __$FentonHeadCircumferenceForAgeCopyWithImpl<$Res>
    implements _$FentonHeadCircumferenceForAgeCopyWith<$Res> {
  __$FentonHeadCircumferenceForAgeCopyWithImpl(this._self, this._then);

  final _FentonHeadCircumferenceForAge _self;
  final $Res Function(_FentonHeadCircumferenceForAge) _then;

  /// Create a copy of FentonHeadCircumferenceForAge
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? age = null,
    Object? measurementResult = null,
  }) {
    return _then(_FentonHeadCircumferenceForAge(
      age: null == age
          ? _self.age
          : age // ignore: cast_nullable_to_non_nullable
              as Age,
      measurementResult: null == measurementResult
          ? _self.measurementResult
          : measurementResult // ignore: cast_nullable_to_non_nullable
              as Length,
    ));
  }

  /// Create a copy of FentonHeadCircumferenceForAge
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AgeCopyWith<$Res> get age {
    return $AgeCopyWith<$Res>(_self.age, (value) {
      return _then(_self.copyWith(age: value));
    });
  }
}

/// @nodoc
mixin _$FentonLengthForAge {
  Age get age;
  Length get lengthHeight;
  LengthHeightMeasurementPosition get measure;

  /// Create a copy of FentonLengthForAge
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $FentonLengthForAgeCopyWith<FentonLengthForAge> get copyWith =>
      _$FentonLengthForAgeCopyWithImpl<FentonLengthForAge>(
          this as FentonLengthForAge, _$identity);

  /// Serializes this FentonLengthForAge to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FentonLengthForAge &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.lengthHeight, lengthHeight) ||
                other.lengthHeight == lengthHeight) &&
            (identical(other.measure, measure) || other.measure == measure));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, age, lengthHeight, measure);

  @override
  String toString() {
    return 'FentonLengthForAge(age: $age, lengthHeight: $lengthHeight, measure: $measure)';
  }
}

/// @nodoc
abstract mixin class $FentonLengthForAgeCopyWith<$Res> {
  factory $FentonLengthForAgeCopyWith(
          FentonLengthForAge value, $Res Function(FentonLengthForAge) _then) =
      _$FentonLengthForAgeCopyWithImpl;
  @useResult
  $Res call(
      {Age age, Length lengthHeight, LengthHeightMeasurementPosition measure});

  $AgeCopyWith<$Res> get age;
}

/// @nodoc
class _$FentonLengthForAgeCopyWithImpl<$Res>
    implements $FentonLengthForAgeCopyWith<$Res> {
  _$FentonLengthForAgeCopyWithImpl(this._self, this._then);

  final FentonLengthForAge _self;
  final $Res Function(FentonLengthForAge) _then;

  /// Create a copy of FentonLengthForAge
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? age = null,
    Object? lengthHeight = null,
    Object? measure = null,
  }) {
    return _then(_self.copyWith(
      age: null == age
          ? _self.age
          : age // ignore: cast_nullable_to_non_nullable
              as Age,
      lengthHeight: null == lengthHeight
          ? _self.lengthHeight
          : lengthHeight // ignore: cast_nullable_to_non_nullable
              as Length,
      measure: null == measure
          ? _self.measure
          : measure // ignore: cast_nullable_to_non_nullable
              as LengthHeightMeasurementPosition,
    ));
  }

  /// Create a copy of FentonLengthForAge
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AgeCopyWith<$Res> get age {
    return $AgeCopyWith<$Res>(_self.age, (value) {
      return _then(_self.copyWith(age: value));
    });
  }
}

/// Adds pattern-matching-related methods to [FentonLengthForAge].
extension FentonLengthForAgePatterns on FentonLengthForAge {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_FentonLengthForAge value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _FentonLengthForAge() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FentonLengthForAge value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FentonLengthForAge():
        return $default(_that);
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_FentonLengthForAge value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FentonLengthForAge() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(Age age, Length lengthHeight,
            LengthHeightMeasurementPosition measure)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _FentonLengthForAge() when $default != null:
        return $default(_that.age, _that.lengthHeight, _that.measure);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(Age age, Length lengthHeight,
            LengthHeightMeasurementPosition measure)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FentonLengthForAge():
        return $default(_that.age, _that.lengthHeight, _that.measure);
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(Age age, Length lengthHeight,
            LengthHeightMeasurementPosition measure)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FentonLengthForAge() when $default != null:
        return $default(_that.age, _that.lengthHeight, _that.measure);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _FentonLengthForAge extends FentonLengthForAge {
  _FentonLengthForAge(
      {required this.age, required this.lengthHeight, required this.measure})
      : super._();
  factory _FentonLengthForAge.fromJson(Map<String, dynamic> json) =>
      _$FentonLengthForAgeFromJson(json);

  @override
  final Age age;
  @override
  final Length lengthHeight;
  @override
  final LengthHeightMeasurementPosition measure;

  /// Create a copy of FentonLengthForAge
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$FentonLengthForAgeCopyWith<_FentonLengthForAge> get copyWith =>
      __$FentonLengthForAgeCopyWithImpl<_FentonLengthForAge>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$FentonLengthForAgeToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FentonLengthForAge &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.lengthHeight, lengthHeight) ||
                other.lengthHeight == lengthHeight) &&
            (identical(other.measure, measure) || other.measure == measure));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, age, lengthHeight, measure);

  @override
  String toString() {
    return 'FentonLengthForAge(age: $age, lengthHeight: $lengthHeight, measure: $measure)';
  }
}

/// @nodoc
abstract mixin class _$FentonLengthForAgeCopyWith<$Res>
    implements $FentonLengthForAgeCopyWith<$Res> {
  factory _$FentonLengthForAgeCopyWith(
          _FentonLengthForAge value, $Res Function(_FentonLengthForAge) _then) =
      __$FentonLengthForAgeCopyWithImpl;
  @override
  @useResult
  $Res call(
      {Age age, Length lengthHeight, LengthHeightMeasurementPosition measure});

  @override
  $AgeCopyWith<$Res> get age;
}

/// @nodoc
class __$FentonLengthForAgeCopyWithImpl<$Res>
    implements _$FentonLengthForAgeCopyWith<$Res> {
  __$FentonLengthForAgeCopyWithImpl(this._self, this._then);

  final _FentonLengthForAge _self;
  final $Res Function(_FentonLengthForAge) _then;

  /// Create a copy of FentonLengthForAge
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? age = null,
    Object? lengthHeight = null,
    Object? measure = null,
  }) {
    return _then(_FentonLengthForAge(
      age: null == age
          ? _self.age
          : age // ignore: cast_nullable_to_non_nullable
              as Age,
      lengthHeight: null == lengthHeight
          ? _self.lengthHeight
          : lengthHeight // ignore: cast_nullable_to_non_nullable
              as Length,
      measure: null == measure
          ? _self.measure
          : measure // ignore: cast_nullable_to_non_nullable
              as LengthHeightMeasurementPosition,
    ));
  }

  /// Create a copy of FentonLengthForAge
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AgeCopyWith<$Res> get age {
    return $AgeCopyWith<$Res>(_self.age, (value) {
      return _then(_self.copyWith(age: value));
    });
  }
}

/// @nodoc
mixin _$FentonWeightForAge {
  Age get age;
  Mass get weight;

  /// Create a copy of FentonWeightForAge
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $FentonWeightForAgeCopyWith<FentonWeightForAge> get copyWith =>
      _$FentonWeightForAgeCopyWithImpl<FentonWeightForAge>(
          this as FentonWeightForAge, _$identity);

  /// Serializes this FentonWeightForAge to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FentonWeightForAge &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.weight, weight) || other.weight == weight));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, age, weight);

  @override
  String toString() {
    return 'FentonWeightForAge(age: $age, weight: $weight)';
  }
}

/// @nodoc
abstract mixin class $FentonWeightForAgeCopyWith<$Res> {
  factory $FentonWeightForAgeCopyWith(
          FentonWeightForAge value, $Res Function(FentonWeightForAge) _then) =
      _$FentonWeightForAgeCopyWithImpl;
  @useResult
  $Res call({Age age, Mass weight});

  $AgeCopyWith<$Res> get age;
}

/// @nodoc
class _$FentonWeightForAgeCopyWithImpl<$Res>
    implements $FentonWeightForAgeCopyWith<$Res> {
  _$FentonWeightForAgeCopyWithImpl(this._self, this._then);

  final FentonWeightForAge _self;
  final $Res Function(FentonWeightForAge) _then;

  /// Create a copy of FentonWeightForAge
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? age = null,
    Object? weight = null,
  }) {
    return _then(_self.copyWith(
      age: null == age
          ? _self.age
          : age // ignore: cast_nullable_to_non_nullable
              as Age,
      weight: null == weight
          ? _self.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as Mass,
    ));
  }

  /// Create a copy of FentonWeightForAge
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AgeCopyWith<$Res> get age {
    return $AgeCopyWith<$Res>(_self.age, (value) {
      return _then(_self.copyWith(age: value));
    });
  }
}

/// Adds pattern-matching-related methods to [FentonWeightForAge].
extension FentonWeightForAgePatterns on FentonWeightForAge {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_FentonWeightForAge value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _FentonWeightForAge() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FentonWeightForAge value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FentonWeightForAge():
        return $default(_that);
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_FentonWeightForAge value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FentonWeightForAge() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(Age age, Mass weight)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _FentonWeightForAge() when $default != null:
        return $default(_that.age, _that.weight);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(Age age, Mass weight) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FentonWeightForAge():
        return $default(_that.age, _that.weight);
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(Age age, Mass weight)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FentonWeightForAge() when $default != null:
        return $default(_that.age, _that.weight);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _FentonWeightForAge extends FentonWeightForAge {
  _FentonWeightForAge({required this.age, required this.weight}) : super._();
  factory _FentonWeightForAge.fromJson(Map<String, dynamic> json) =>
      _$FentonWeightForAgeFromJson(json);

  @override
  final Age age;
  @override
  final Mass weight;

  /// Create a copy of FentonWeightForAge
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$FentonWeightForAgeCopyWith<_FentonWeightForAge> get copyWith =>
      __$FentonWeightForAgeCopyWithImpl<_FentonWeightForAge>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$FentonWeightForAgeToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FentonWeightForAge &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.weight, weight) || other.weight == weight));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, age, weight);

  @override
  String toString() {
    return 'FentonWeightForAge(age: $age, weight: $weight)';
  }
}

/// @nodoc
abstract mixin class _$FentonWeightForAgeCopyWith<$Res>
    implements $FentonWeightForAgeCopyWith<$Res> {
  factory _$FentonWeightForAgeCopyWith(
          _FentonWeightForAge value, $Res Function(_FentonWeightForAge) _then) =
      __$FentonWeightForAgeCopyWithImpl;
  @override
  @useResult
  $Res call({Age age, Mass weight});

  @override
  $AgeCopyWith<$Res> get age;
}

/// @nodoc
class __$FentonWeightForAgeCopyWithImpl<$Res>
    implements _$FentonWeightForAgeCopyWith<$Res> {
  __$FentonWeightForAgeCopyWithImpl(this._self, this._then);

  final _FentonWeightForAge _self;
  final $Res Function(_FentonWeightForAge) _then;

  /// Create a copy of FentonWeightForAge
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? age = null,
    Object? weight = null,
  }) {
    return _then(_FentonWeightForAge(
      age: null == age
          ? _self.age
          : age // ignore: cast_nullable_to_non_nullable
              as Age,
      weight: null == weight
          ? _self.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as Mass,
    ));
  }

  /// Create a copy of FentonWeightForAge
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AgeCopyWith<$Res> get age {
    return $AgeCopyWith<$Res>(_self.age, (value) {
      return _then(_self.copyWith(age: value));
    });
  }
}

// dart format on
