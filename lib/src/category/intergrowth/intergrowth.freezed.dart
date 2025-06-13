// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'intergrowth.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$IntergrowthNewbornBirthWeightForAge {
  Sex get sex;
  Age get age;
  Mass get measurementResult;

  /// Create a copy of IntergrowthNewbornBirthWeightForAge
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $IntergrowthNewbornBirthWeightForAgeCopyWith<
          IntergrowthNewbornBirthWeightForAge>
      get copyWith => _$IntergrowthNewbornBirthWeightForAgeCopyWithImpl<
              IntergrowthNewbornBirthWeightForAge>(
          this as IntergrowthNewbornBirthWeightForAge, _$identity);

  /// Serializes this IntergrowthNewbornBirthWeightForAge to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is IntergrowthNewbornBirthWeightForAge &&
            (identical(other.sex, sex) || other.sex == sex) &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.measurementResult, measurementResult) ||
                other.measurementResult == measurementResult));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, sex, age, measurementResult);

  @override
  String toString() {
    return 'IntergrowthNewbornBirthWeightForAge(sex: $sex, age: $age, measurementResult: $measurementResult)';
  }
}

/// @nodoc
abstract mixin class $IntergrowthNewbornBirthWeightForAgeCopyWith<$Res> {
  factory $IntergrowthNewbornBirthWeightForAgeCopyWith(
          IntergrowthNewbornBirthWeightForAge value,
          $Res Function(IntergrowthNewbornBirthWeightForAge) _then) =
      _$IntergrowthNewbornBirthWeightForAgeCopyWithImpl;
  @useResult
  $Res call({Sex sex, Age age, Mass measurementResult});

  $AgeCopyWith<$Res> get age;
}

/// @nodoc
class _$IntergrowthNewbornBirthWeightForAgeCopyWithImpl<$Res>
    implements $IntergrowthNewbornBirthWeightForAgeCopyWith<$Res> {
  _$IntergrowthNewbornBirthWeightForAgeCopyWithImpl(this._self, this._then);

  final IntergrowthNewbornBirthWeightForAge _self;
  final $Res Function(IntergrowthNewbornBirthWeightForAge) _then;

  /// Create a copy of IntergrowthNewbornBirthWeightForAge
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sex = null,
    Object? age = null,
    Object? measurementResult = null,
  }) {
    return _then(_self.copyWith(
      sex: null == sex
          ? _self.sex
          : sex // ignore: cast_nullable_to_non_nullable
              as Sex,
      age: null == age
          ? _self.age
          : age // ignore: cast_nullable_to_non_nullable
              as Age,
      measurementResult: null == measurementResult
          ? _self.measurementResult
          : measurementResult // ignore: cast_nullable_to_non_nullable
              as Mass,
    ));
  }

  /// Create a copy of IntergrowthNewbornBirthWeightForAge
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
@JsonSerializable()
class _IntergrowthNewbornBirthWeightForAge
    extends IntergrowthNewbornBirthWeightForAge {
  _IntergrowthNewbornBirthWeightForAge(
      {required this.sex, required this.age, required this.measurementResult})
      : super._();
  factory _IntergrowthNewbornBirthWeightForAge.fromJson(
          Map<String, dynamic> json) =>
      _$IntergrowthNewbornBirthWeightForAgeFromJson(json);

  @override
  final Sex sex;
  @override
  final Age age;
  @override
  final Mass measurementResult;

  /// Create a copy of IntergrowthNewbornBirthWeightForAge
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$IntergrowthNewbornBirthWeightForAgeCopyWith<
          _IntergrowthNewbornBirthWeightForAge>
      get copyWith => __$IntergrowthNewbornBirthWeightForAgeCopyWithImpl<
          _IntergrowthNewbornBirthWeightForAge>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$IntergrowthNewbornBirthWeightForAgeToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _IntergrowthNewbornBirthWeightForAge &&
            (identical(other.sex, sex) || other.sex == sex) &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.measurementResult, measurementResult) ||
                other.measurementResult == measurementResult));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, sex, age, measurementResult);

  @override
  String toString() {
    return 'IntergrowthNewbornBirthWeightForAge(sex: $sex, age: $age, measurementResult: $measurementResult)';
  }
}

/// @nodoc
abstract mixin class _$IntergrowthNewbornBirthWeightForAgeCopyWith<$Res>
    implements $IntergrowthNewbornBirthWeightForAgeCopyWith<$Res> {
  factory _$IntergrowthNewbornBirthWeightForAgeCopyWith(
          _IntergrowthNewbornBirthWeightForAge value,
          $Res Function(_IntergrowthNewbornBirthWeightForAge) _then) =
      __$IntergrowthNewbornBirthWeightForAgeCopyWithImpl;
  @override
  @useResult
  $Res call({Sex sex, Age age, Mass measurementResult});

  @override
  $AgeCopyWith<$Res> get age;
}

/// @nodoc
class __$IntergrowthNewbornBirthWeightForAgeCopyWithImpl<$Res>
    implements _$IntergrowthNewbornBirthWeightForAgeCopyWith<$Res> {
  __$IntergrowthNewbornBirthWeightForAgeCopyWithImpl(this._self, this._then);

  final _IntergrowthNewbornBirthWeightForAge _self;
  final $Res Function(_IntergrowthNewbornBirthWeightForAge) _then;

  /// Create a copy of IntergrowthNewbornBirthWeightForAge
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? sex = null,
    Object? age = null,
    Object? measurementResult = null,
  }) {
    return _then(_IntergrowthNewbornBirthWeightForAge(
      sex: null == sex
          ? _self.sex
          : sex // ignore: cast_nullable_to_non_nullable
              as Sex,
      age: null == age
          ? _self.age
          : age // ignore: cast_nullable_to_non_nullable
              as Age,
      measurementResult: null == measurementResult
          ? _self.measurementResult
          : measurementResult // ignore: cast_nullable_to_non_nullable
              as Mass,
    ));
  }

  /// Create a copy of IntergrowthNewbornBirthWeightForAge
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
mixin _$IntergrowthNewbornBirthHeadCircumferenceForAge {
  Sex get sex;
  Age get age;
  Length get measurementResult;

  /// Create a copy of IntergrowthNewbornBirthHeadCircumferenceForAge
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $IntergrowthNewbornBirthHeadCircumferenceForAgeCopyWith<
          IntergrowthNewbornBirthHeadCircumferenceForAge>
      get copyWith =>
          _$IntergrowthNewbornBirthHeadCircumferenceForAgeCopyWithImpl<
                  IntergrowthNewbornBirthHeadCircumferenceForAge>(
              this as IntergrowthNewbornBirthHeadCircumferenceForAge,
              _$identity);

  /// Serializes this IntergrowthNewbornBirthHeadCircumferenceForAge to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is IntergrowthNewbornBirthHeadCircumferenceForAge &&
            (identical(other.sex, sex) || other.sex == sex) &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.measurementResult, measurementResult) ||
                other.measurementResult == measurementResult));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, sex, age, measurementResult);

  @override
  String toString() {
    return 'IntergrowthNewbornBirthHeadCircumferenceForAge(sex: $sex, age: $age, measurementResult: $measurementResult)';
  }
}

/// @nodoc
abstract mixin class $IntergrowthNewbornBirthHeadCircumferenceForAgeCopyWith<
    $Res> {
  factory $IntergrowthNewbornBirthHeadCircumferenceForAgeCopyWith(
          IntergrowthNewbornBirthHeadCircumferenceForAge value,
          $Res Function(IntergrowthNewbornBirthHeadCircumferenceForAge) _then) =
      _$IntergrowthNewbornBirthHeadCircumferenceForAgeCopyWithImpl;
  @useResult
  $Res call({Sex sex, Age age, Length measurementResult});

  $AgeCopyWith<$Res> get age;
}

/// @nodoc
class _$IntergrowthNewbornBirthHeadCircumferenceForAgeCopyWithImpl<$Res>
    implements $IntergrowthNewbornBirthHeadCircumferenceForAgeCopyWith<$Res> {
  _$IntergrowthNewbornBirthHeadCircumferenceForAgeCopyWithImpl(
      this._self, this._then);

  final IntergrowthNewbornBirthHeadCircumferenceForAge _self;
  final $Res Function(IntergrowthNewbornBirthHeadCircumferenceForAge) _then;

  /// Create a copy of IntergrowthNewbornBirthHeadCircumferenceForAge
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sex = null,
    Object? age = null,
    Object? measurementResult = null,
  }) {
    return _then(_self.copyWith(
      sex: null == sex
          ? _self.sex
          : sex // ignore: cast_nullable_to_non_nullable
              as Sex,
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

  /// Create a copy of IntergrowthNewbornBirthHeadCircumferenceForAge
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
@JsonSerializable()
class _IntergrowthNewbornBirthHeadCircumferenceForAge
    extends IntergrowthNewbornBirthHeadCircumferenceForAge {
  _IntergrowthNewbornBirthHeadCircumferenceForAge(
      {required this.sex, required this.age, required this.measurementResult})
      : super._();
  factory _IntergrowthNewbornBirthHeadCircumferenceForAge.fromJson(
          Map<String, dynamic> json) =>
      _$IntergrowthNewbornBirthHeadCircumferenceForAgeFromJson(json);

  @override
  final Sex sex;
  @override
  final Age age;
  @override
  final Length measurementResult;

  /// Create a copy of IntergrowthNewbornBirthHeadCircumferenceForAge
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$IntergrowthNewbornBirthHeadCircumferenceForAgeCopyWith<
          _IntergrowthNewbornBirthHeadCircumferenceForAge>
      get copyWith =>
          __$IntergrowthNewbornBirthHeadCircumferenceForAgeCopyWithImpl<
                  _IntergrowthNewbornBirthHeadCircumferenceForAge>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$IntergrowthNewbornBirthHeadCircumferenceForAgeToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _IntergrowthNewbornBirthHeadCircumferenceForAge &&
            (identical(other.sex, sex) || other.sex == sex) &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.measurementResult, measurementResult) ||
                other.measurementResult == measurementResult));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, sex, age, measurementResult);

  @override
  String toString() {
    return 'IntergrowthNewbornBirthHeadCircumferenceForAge(sex: $sex, age: $age, measurementResult: $measurementResult)';
  }
}

/// @nodoc
abstract mixin class _$IntergrowthNewbornBirthHeadCircumferenceForAgeCopyWith<
        $Res>
    implements $IntergrowthNewbornBirthHeadCircumferenceForAgeCopyWith<$Res> {
  factory _$IntergrowthNewbornBirthHeadCircumferenceForAgeCopyWith(
          _IntergrowthNewbornBirthHeadCircumferenceForAge value,
          $Res Function(_IntergrowthNewbornBirthHeadCircumferenceForAge)
              _then) =
      __$IntergrowthNewbornBirthHeadCircumferenceForAgeCopyWithImpl;
  @override
  @useResult
  $Res call({Sex sex, Age age, Length measurementResult});

  @override
  $AgeCopyWith<$Res> get age;
}

/// @nodoc
class __$IntergrowthNewbornBirthHeadCircumferenceForAgeCopyWithImpl<$Res>
    implements _$IntergrowthNewbornBirthHeadCircumferenceForAgeCopyWith<$Res> {
  __$IntergrowthNewbornBirthHeadCircumferenceForAgeCopyWithImpl(
      this._self, this._then);

  final _IntergrowthNewbornBirthHeadCircumferenceForAge _self;
  final $Res Function(_IntergrowthNewbornBirthHeadCircumferenceForAge) _then;

  /// Create a copy of IntergrowthNewbornBirthHeadCircumferenceForAge
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? sex = null,
    Object? age = null,
    Object? measurementResult = null,
  }) {
    return _then(_IntergrowthNewbornBirthHeadCircumferenceForAge(
      sex: null == sex
          ? _self.sex
          : sex // ignore: cast_nullable_to_non_nullable
              as Sex,
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

  /// Create a copy of IntergrowthNewbornBirthHeadCircumferenceForAge
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
mixin _$IntergrowthNewbornBirthLengthForAge {
  Sex get sex;
  Age get age;
  Length get measurementResult;

  /// Create a copy of IntergrowthNewbornBirthLengthForAge
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $IntergrowthNewbornBirthLengthForAgeCopyWith<
          IntergrowthNewbornBirthLengthForAge>
      get copyWith => _$IntergrowthNewbornBirthLengthForAgeCopyWithImpl<
              IntergrowthNewbornBirthLengthForAge>(
          this as IntergrowthNewbornBirthLengthForAge, _$identity);

  /// Serializes this IntergrowthNewbornBirthLengthForAge to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is IntergrowthNewbornBirthLengthForAge &&
            (identical(other.sex, sex) || other.sex == sex) &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.measurementResult, measurementResult) ||
                other.measurementResult == measurementResult));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, sex, age, measurementResult);

  @override
  String toString() {
    return 'IntergrowthNewbornBirthLengthForAge(sex: $sex, age: $age, measurementResult: $measurementResult)';
  }
}

/// @nodoc
abstract mixin class $IntergrowthNewbornBirthLengthForAgeCopyWith<$Res> {
  factory $IntergrowthNewbornBirthLengthForAgeCopyWith(
          IntergrowthNewbornBirthLengthForAge value,
          $Res Function(IntergrowthNewbornBirthLengthForAge) _then) =
      _$IntergrowthNewbornBirthLengthForAgeCopyWithImpl;
  @useResult
  $Res call({Sex sex, Age age, Length measurementResult});

  $AgeCopyWith<$Res> get age;
}

/// @nodoc
class _$IntergrowthNewbornBirthLengthForAgeCopyWithImpl<$Res>
    implements $IntergrowthNewbornBirthLengthForAgeCopyWith<$Res> {
  _$IntergrowthNewbornBirthLengthForAgeCopyWithImpl(this._self, this._then);

  final IntergrowthNewbornBirthLengthForAge _self;
  final $Res Function(IntergrowthNewbornBirthLengthForAge) _then;

  /// Create a copy of IntergrowthNewbornBirthLengthForAge
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sex = null,
    Object? age = null,
    Object? measurementResult = null,
  }) {
    return _then(_self.copyWith(
      sex: null == sex
          ? _self.sex
          : sex // ignore: cast_nullable_to_non_nullable
              as Sex,
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

  /// Create a copy of IntergrowthNewbornBirthLengthForAge
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
@JsonSerializable()
class _IntergrowthNewbornBirthLengthForAge
    extends IntergrowthNewbornBirthLengthForAge {
  _IntergrowthNewbornBirthLengthForAge(
      {required this.sex, required this.age, required this.measurementResult})
      : super._();
  factory _IntergrowthNewbornBirthLengthForAge.fromJson(
          Map<String, dynamic> json) =>
      _$IntergrowthNewbornBirthLengthForAgeFromJson(json);

  @override
  final Sex sex;
  @override
  final Age age;
  @override
  final Length measurementResult;

  /// Create a copy of IntergrowthNewbornBirthLengthForAge
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$IntergrowthNewbornBirthLengthForAgeCopyWith<
          _IntergrowthNewbornBirthLengthForAge>
      get copyWith => __$IntergrowthNewbornBirthLengthForAgeCopyWithImpl<
          _IntergrowthNewbornBirthLengthForAge>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$IntergrowthNewbornBirthLengthForAgeToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _IntergrowthNewbornBirthLengthForAge &&
            (identical(other.sex, sex) || other.sex == sex) &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.measurementResult, measurementResult) ||
                other.measurementResult == measurementResult));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, sex, age, measurementResult);

  @override
  String toString() {
    return 'IntergrowthNewbornBirthLengthForAge(sex: $sex, age: $age, measurementResult: $measurementResult)';
  }
}

/// @nodoc
abstract mixin class _$IntergrowthNewbornBirthLengthForAgeCopyWith<$Res>
    implements $IntergrowthNewbornBirthLengthForAgeCopyWith<$Res> {
  factory _$IntergrowthNewbornBirthLengthForAgeCopyWith(
          _IntergrowthNewbornBirthLengthForAge value,
          $Res Function(_IntergrowthNewbornBirthLengthForAge) _then) =
      __$IntergrowthNewbornBirthLengthForAgeCopyWithImpl;
  @override
  @useResult
  $Res call({Sex sex, Age age, Length measurementResult});

  @override
  $AgeCopyWith<$Res> get age;
}

/// @nodoc
class __$IntergrowthNewbornBirthLengthForAgeCopyWithImpl<$Res>
    implements _$IntergrowthNewbornBirthLengthForAgeCopyWith<$Res> {
  __$IntergrowthNewbornBirthLengthForAgeCopyWithImpl(this._self, this._then);

  final _IntergrowthNewbornBirthLengthForAge _self;
  final $Res Function(_IntergrowthNewbornBirthLengthForAge) _then;

  /// Create a copy of IntergrowthNewbornBirthLengthForAge
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? sex = null,
    Object? age = null,
    Object? measurementResult = null,
  }) {
    return _then(_IntergrowthNewbornBirthLengthForAge(
      sex: null == sex
          ? _self.sex
          : sex // ignore: cast_nullable_to_non_nullable
              as Sex,
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

  /// Create a copy of IntergrowthNewbornBirthLengthForAge
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
mixin _$IntergrowthNewbornBirthWeightForLengthRatioForAge {
  Sex get sex;
  Age get age;
  NewbornWeightLengthRatioMeasurement get measurementResult;

  /// Create a copy of IntergrowthNewbornBirthWeightForLengthRatioForAge
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $IntergrowthNewbornBirthWeightForLengthRatioForAgeCopyWith<
          IntergrowthNewbornBirthWeightForLengthRatioForAge>
      get copyWith =>
          _$IntergrowthNewbornBirthWeightForLengthRatioForAgeCopyWithImpl<
                  IntergrowthNewbornBirthWeightForLengthRatioForAge>(
              this as IntergrowthNewbornBirthWeightForLengthRatioForAge,
              _$identity);

  /// Serializes this IntergrowthNewbornBirthWeightForLengthRatioForAge to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is IntergrowthNewbornBirthWeightForLengthRatioForAge &&
            (identical(other.sex, sex) || other.sex == sex) &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.measurementResult, measurementResult) ||
                other.measurementResult == measurementResult));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, sex, age, measurementResult);

  @override
  String toString() {
    return 'IntergrowthNewbornBirthWeightForLengthRatioForAge(sex: $sex, age: $age, measurementResult: $measurementResult)';
  }
}

/// @nodoc
abstract mixin class $IntergrowthNewbornBirthWeightForLengthRatioForAgeCopyWith<
    $Res> {
  factory $IntergrowthNewbornBirthWeightForLengthRatioForAgeCopyWith(
          IntergrowthNewbornBirthWeightForLengthRatioForAge value,
          $Res Function(IntergrowthNewbornBirthWeightForLengthRatioForAge)
              _then) =
      _$IntergrowthNewbornBirthWeightForLengthRatioForAgeCopyWithImpl;
  @useResult
  $Res call(
      {Sex sex,
      Age age,
      NewbornWeightLengthRatioMeasurement measurementResult});

  $AgeCopyWith<$Res> get age;
  $NewbornWeightLengthRatioMeasurementCopyWith<$Res> get measurementResult;
}

/// @nodoc
class _$IntergrowthNewbornBirthWeightForLengthRatioForAgeCopyWithImpl<$Res>
    implements
        $IntergrowthNewbornBirthWeightForLengthRatioForAgeCopyWith<$Res> {
  _$IntergrowthNewbornBirthWeightForLengthRatioForAgeCopyWithImpl(
      this._self, this._then);

  final IntergrowthNewbornBirthWeightForLengthRatioForAge _self;
  final $Res Function(IntergrowthNewbornBirthWeightForLengthRatioForAge) _then;

  /// Create a copy of IntergrowthNewbornBirthWeightForLengthRatioForAge
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sex = null,
    Object? age = null,
    Object? measurementResult = null,
  }) {
    return _then(_self.copyWith(
      sex: null == sex
          ? _self.sex
          : sex // ignore: cast_nullable_to_non_nullable
              as Sex,
      age: null == age
          ? _self.age
          : age // ignore: cast_nullable_to_non_nullable
              as Age,
      measurementResult: null == measurementResult
          ? _self.measurementResult
          : measurementResult // ignore: cast_nullable_to_non_nullable
              as NewbornWeightLengthRatioMeasurement,
    ));
  }

  /// Create a copy of IntergrowthNewbornBirthWeightForLengthRatioForAge
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AgeCopyWith<$Res> get age {
    return $AgeCopyWith<$Res>(_self.age, (value) {
      return _then(_self.copyWith(age: value));
    });
  }

  /// Create a copy of IntergrowthNewbornBirthWeightForLengthRatioForAge
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $NewbornWeightLengthRatioMeasurementCopyWith<$Res> get measurementResult {
    return $NewbornWeightLengthRatioMeasurementCopyWith<$Res>(
        _self.measurementResult, (value) {
      return _then(_self.copyWith(measurementResult: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _IntergrowthNewbornBirthWeightForLengthRatioForAge
    extends IntergrowthNewbornBirthWeightForLengthRatioForAge {
  _IntergrowthNewbornBirthWeightForLengthRatioForAge(
      {required this.sex, required this.age, required this.measurementResult})
      : super._();
  factory _IntergrowthNewbornBirthWeightForLengthRatioForAge.fromJson(
          Map<String, dynamic> json) =>
      _$IntergrowthNewbornBirthWeightForLengthRatioForAgeFromJson(json);

  @override
  final Sex sex;
  @override
  final Age age;
  @override
  final NewbornWeightLengthRatioMeasurement measurementResult;

  /// Create a copy of IntergrowthNewbornBirthWeightForLengthRatioForAge
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$IntergrowthNewbornBirthWeightForLengthRatioForAgeCopyWith<
          _IntergrowthNewbornBirthWeightForLengthRatioForAge>
      get copyWith =>
          __$IntergrowthNewbornBirthWeightForLengthRatioForAgeCopyWithImpl<
                  _IntergrowthNewbornBirthWeightForLengthRatioForAge>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$IntergrowthNewbornBirthWeightForLengthRatioForAgeToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _IntergrowthNewbornBirthWeightForLengthRatioForAge &&
            (identical(other.sex, sex) || other.sex == sex) &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.measurementResult, measurementResult) ||
                other.measurementResult == measurementResult));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, sex, age, measurementResult);

  @override
  String toString() {
    return 'IntergrowthNewbornBirthWeightForLengthRatioForAge(sex: $sex, age: $age, measurementResult: $measurementResult)';
  }
}

/// @nodoc
abstract mixin class _$IntergrowthNewbornBirthWeightForLengthRatioForAgeCopyWith<
        $Res>
    implements
        $IntergrowthNewbornBirthWeightForLengthRatioForAgeCopyWith<$Res> {
  factory _$IntergrowthNewbornBirthWeightForLengthRatioForAgeCopyWith(
          _IntergrowthNewbornBirthWeightForLengthRatioForAge value,
          $Res Function(_IntergrowthNewbornBirthWeightForLengthRatioForAge)
              _then) =
      __$IntergrowthNewbornBirthWeightForLengthRatioForAgeCopyWithImpl;
  @override
  @useResult
  $Res call(
      {Sex sex,
      Age age,
      NewbornWeightLengthRatioMeasurement measurementResult});

  @override
  $AgeCopyWith<$Res> get age;
  @override
  $NewbornWeightLengthRatioMeasurementCopyWith<$Res> get measurementResult;
}

/// @nodoc
class __$IntergrowthNewbornBirthWeightForLengthRatioForAgeCopyWithImpl<$Res>
    implements
        _$IntergrowthNewbornBirthWeightForLengthRatioForAgeCopyWith<$Res> {
  __$IntergrowthNewbornBirthWeightForLengthRatioForAgeCopyWithImpl(
      this._self, this._then);

  final _IntergrowthNewbornBirthWeightForLengthRatioForAge _self;
  final $Res Function(_IntergrowthNewbornBirthWeightForLengthRatioForAge) _then;

  /// Create a copy of IntergrowthNewbornBirthWeightForLengthRatioForAge
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? sex = null,
    Object? age = null,
    Object? measurementResult = null,
  }) {
    return _then(_IntergrowthNewbornBirthWeightForLengthRatioForAge(
      sex: null == sex
          ? _self.sex
          : sex // ignore: cast_nullable_to_non_nullable
              as Sex,
      age: null == age
          ? _self.age
          : age // ignore: cast_nullable_to_non_nullable
              as Age,
      measurementResult: null == measurementResult
          ? _self.measurementResult
          : measurementResult // ignore: cast_nullable_to_non_nullable
              as NewbornWeightLengthRatioMeasurement,
    ));
  }

  /// Create a copy of IntergrowthNewbornBirthWeightForLengthRatioForAge
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AgeCopyWith<$Res> get age {
    return $AgeCopyWith<$Res>(_self.age, (value) {
      return _then(_self.copyWith(age: value));
    });
  }

  /// Create a copy of IntergrowthNewbornBirthWeightForLengthRatioForAge
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $NewbornWeightLengthRatioMeasurementCopyWith<$Res> get measurementResult {
    return $NewbornWeightLengthRatioMeasurementCopyWith<$Res>(
        _self.measurementResult, (value) {
      return _then(_self.copyWith(measurementResult: value));
    });
  }
}

/// @nodoc
mixin _$IntergrowthVeryPretermNewbornBirthWeightForAge {
  Sex get sex;
  Age get age;
  Mass get measurementResult;

  /// Create a copy of IntergrowthVeryPretermNewbornBirthWeightForAge
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $IntergrowthVeryPretermNewbornBirthWeightForAgeCopyWith<
          IntergrowthVeryPretermNewbornBirthWeightForAge>
      get copyWith =>
          _$IntergrowthVeryPretermNewbornBirthWeightForAgeCopyWithImpl<
                  IntergrowthVeryPretermNewbornBirthWeightForAge>(
              this as IntergrowthVeryPretermNewbornBirthWeightForAge,
              _$identity);

  /// Serializes this IntergrowthVeryPretermNewbornBirthWeightForAge to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is IntergrowthVeryPretermNewbornBirthWeightForAge &&
            (identical(other.sex, sex) || other.sex == sex) &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.measurementResult, measurementResult) ||
                other.measurementResult == measurementResult));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, sex, age, measurementResult);

  @override
  String toString() {
    return 'IntergrowthVeryPretermNewbornBirthWeightForAge(sex: $sex, age: $age, measurementResult: $measurementResult)';
  }
}

/// @nodoc
abstract mixin class $IntergrowthVeryPretermNewbornBirthWeightForAgeCopyWith<
    $Res> {
  factory $IntergrowthVeryPretermNewbornBirthWeightForAgeCopyWith(
          IntergrowthVeryPretermNewbornBirthWeightForAge value,
          $Res Function(IntergrowthVeryPretermNewbornBirthWeightForAge) _then) =
      _$IntergrowthVeryPretermNewbornBirthWeightForAgeCopyWithImpl;
  @useResult
  $Res call({Sex sex, Age age, Mass measurementResult});

  $AgeCopyWith<$Res> get age;
}

/// @nodoc
class _$IntergrowthVeryPretermNewbornBirthWeightForAgeCopyWithImpl<$Res>
    implements $IntergrowthVeryPretermNewbornBirthWeightForAgeCopyWith<$Res> {
  _$IntergrowthVeryPretermNewbornBirthWeightForAgeCopyWithImpl(
      this._self, this._then);

  final IntergrowthVeryPretermNewbornBirthWeightForAge _self;
  final $Res Function(IntergrowthVeryPretermNewbornBirthWeightForAge) _then;

  /// Create a copy of IntergrowthVeryPretermNewbornBirthWeightForAge
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sex = null,
    Object? age = null,
    Object? measurementResult = null,
  }) {
    return _then(_self.copyWith(
      sex: null == sex
          ? _self.sex
          : sex // ignore: cast_nullable_to_non_nullable
              as Sex,
      age: null == age
          ? _self.age
          : age // ignore: cast_nullable_to_non_nullable
              as Age,
      measurementResult: null == measurementResult
          ? _self.measurementResult
          : measurementResult // ignore: cast_nullable_to_non_nullable
              as Mass,
    ));
  }

  /// Create a copy of IntergrowthVeryPretermNewbornBirthWeightForAge
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
@JsonSerializable()
class _IntergrowthVeryPretermNewbornBirthWeightForAge
    extends IntergrowthVeryPretermNewbornBirthWeightForAge {
  _IntergrowthVeryPretermNewbornBirthWeightForAge(
      {required this.sex, required this.age, required this.measurementResult})
      : super._();
  factory _IntergrowthVeryPretermNewbornBirthWeightForAge.fromJson(
          Map<String, dynamic> json) =>
      _$IntergrowthVeryPretermNewbornBirthWeightForAgeFromJson(json);

  @override
  final Sex sex;
  @override
  final Age age;
  @override
  final Mass measurementResult;

  /// Create a copy of IntergrowthVeryPretermNewbornBirthWeightForAge
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$IntergrowthVeryPretermNewbornBirthWeightForAgeCopyWith<
          _IntergrowthVeryPretermNewbornBirthWeightForAge>
      get copyWith =>
          __$IntergrowthVeryPretermNewbornBirthWeightForAgeCopyWithImpl<
                  _IntergrowthVeryPretermNewbornBirthWeightForAge>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$IntergrowthVeryPretermNewbornBirthWeightForAgeToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _IntergrowthVeryPretermNewbornBirthWeightForAge &&
            (identical(other.sex, sex) || other.sex == sex) &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.measurementResult, measurementResult) ||
                other.measurementResult == measurementResult));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, sex, age, measurementResult);

  @override
  String toString() {
    return 'IntergrowthVeryPretermNewbornBirthWeightForAge(sex: $sex, age: $age, measurementResult: $measurementResult)';
  }
}

/// @nodoc
abstract mixin class _$IntergrowthVeryPretermNewbornBirthWeightForAgeCopyWith<
        $Res>
    implements $IntergrowthVeryPretermNewbornBirthWeightForAgeCopyWith<$Res> {
  factory _$IntergrowthVeryPretermNewbornBirthWeightForAgeCopyWith(
          _IntergrowthVeryPretermNewbornBirthWeightForAge value,
          $Res Function(_IntergrowthVeryPretermNewbornBirthWeightForAge)
              _then) =
      __$IntergrowthVeryPretermNewbornBirthWeightForAgeCopyWithImpl;
  @override
  @useResult
  $Res call({Sex sex, Age age, Mass measurementResult});

  @override
  $AgeCopyWith<$Res> get age;
}

/// @nodoc
class __$IntergrowthVeryPretermNewbornBirthWeightForAgeCopyWithImpl<$Res>
    implements _$IntergrowthVeryPretermNewbornBirthWeightForAgeCopyWith<$Res> {
  __$IntergrowthVeryPretermNewbornBirthWeightForAgeCopyWithImpl(
      this._self, this._then);

  final _IntergrowthVeryPretermNewbornBirthWeightForAge _self;
  final $Res Function(_IntergrowthVeryPretermNewbornBirthWeightForAge) _then;

  /// Create a copy of IntergrowthVeryPretermNewbornBirthWeightForAge
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? sex = null,
    Object? age = null,
    Object? measurementResult = null,
  }) {
    return _then(_IntergrowthVeryPretermNewbornBirthWeightForAge(
      sex: null == sex
          ? _self.sex
          : sex // ignore: cast_nullable_to_non_nullable
              as Sex,
      age: null == age
          ? _self.age
          : age // ignore: cast_nullable_to_non_nullable
              as Age,
      measurementResult: null == measurementResult
          ? _self.measurementResult
          : measurementResult // ignore: cast_nullable_to_non_nullable
              as Mass,
    ));
  }

  /// Create a copy of IntergrowthVeryPretermNewbornBirthWeightForAge
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
mixin _$IntergrowthVeryPretermNewbornBirthHeadCircumferenceForAge {
  Sex get sex;
  Age get age;
  Length get measurementResult;

  /// Create a copy of IntergrowthVeryPretermNewbornBirthHeadCircumferenceForAge
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $IntergrowthVeryPretermNewbornBirthHeadCircumferenceForAgeCopyWith<
          IntergrowthVeryPretermNewbornBirthHeadCircumferenceForAge>
      get copyWith =>
          _$IntergrowthVeryPretermNewbornBirthHeadCircumferenceForAgeCopyWithImpl<
                  IntergrowthVeryPretermNewbornBirthHeadCircumferenceForAge>(
              this as IntergrowthVeryPretermNewbornBirthHeadCircumferenceForAge,
              _$identity);

  /// Serializes this IntergrowthVeryPretermNewbornBirthHeadCircumferenceForAge to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other
                is IntergrowthVeryPretermNewbornBirthHeadCircumferenceForAge &&
            (identical(other.sex, sex) || other.sex == sex) &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.measurementResult, measurementResult) ||
                other.measurementResult == measurementResult));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, sex, age, measurementResult);

  @override
  String toString() {
    return 'IntergrowthVeryPretermNewbornBirthHeadCircumferenceForAge(sex: $sex, age: $age, measurementResult: $measurementResult)';
  }
}

/// @nodoc
abstract mixin class $IntergrowthVeryPretermNewbornBirthHeadCircumferenceForAgeCopyWith<
    $Res> {
  factory $IntergrowthVeryPretermNewbornBirthHeadCircumferenceForAgeCopyWith(
          IntergrowthVeryPretermNewbornBirthHeadCircumferenceForAge value,
          $Res Function(
                  IntergrowthVeryPretermNewbornBirthHeadCircumferenceForAge)
              _then) =
      _$IntergrowthVeryPretermNewbornBirthHeadCircumferenceForAgeCopyWithImpl;
  @useResult
  $Res call({Sex sex, Age age, Length measurementResult});

  $AgeCopyWith<$Res> get age;
}

/// @nodoc
class _$IntergrowthVeryPretermNewbornBirthHeadCircumferenceForAgeCopyWithImpl<
        $Res>
    implements
        $IntergrowthVeryPretermNewbornBirthHeadCircumferenceForAgeCopyWith<
            $Res> {
  _$IntergrowthVeryPretermNewbornBirthHeadCircumferenceForAgeCopyWithImpl(
      this._self, this._then);

  final IntergrowthVeryPretermNewbornBirthHeadCircumferenceForAge _self;
  final $Res Function(IntergrowthVeryPretermNewbornBirthHeadCircumferenceForAge)
      _then;

  /// Create a copy of IntergrowthVeryPretermNewbornBirthHeadCircumferenceForAge
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sex = null,
    Object? age = null,
    Object? measurementResult = null,
  }) {
    return _then(_self.copyWith(
      sex: null == sex
          ? _self.sex
          : sex // ignore: cast_nullable_to_non_nullable
              as Sex,
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

  /// Create a copy of IntergrowthVeryPretermNewbornBirthHeadCircumferenceForAge
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
@JsonSerializable()
class _IntergrowthVeryPretermNewbornBirthHeadCircumferenceForAge
    extends IntergrowthVeryPretermNewbornBirthHeadCircumferenceForAge {
  _IntergrowthVeryPretermNewbornBirthHeadCircumferenceForAge(
      {required this.sex, required this.age, required this.measurementResult})
      : super._();
  factory _IntergrowthVeryPretermNewbornBirthHeadCircumferenceForAge.fromJson(
          Map<String, dynamic> json) =>
      _$IntergrowthVeryPretermNewbornBirthHeadCircumferenceForAgeFromJson(json);

  @override
  final Sex sex;
  @override
  final Age age;
  @override
  final Length measurementResult;

  /// Create a copy of IntergrowthVeryPretermNewbornBirthHeadCircumferenceForAge
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$IntergrowthVeryPretermNewbornBirthHeadCircumferenceForAgeCopyWith<
          _IntergrowthVeryPretermNewbornBirthHeadCircumferenceForAge>
      get copyWith =>
          __$IntergrowthVeryPretermNewbornBirthHeadCircumferenceForAgeCopyWithImpl<
                  _IntergrowthVeryPretermNewbornBirthHeadCircumferenceForAge>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$IntergrowthVeryPretermNewbornBirthHeadCircumferenceForAgeToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other
                is _IntergrowthVeryPretermNewbornBirthHeadCircumferenceForAge &&
            (identical(other.sex, sex) || other.sex == sex) &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.measurementResult, measurementResult) ||
                other.measurementResult == measurementResult));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, sex, age, measurementResult);

  @override
  String toString() {
    return 'IntergrowthVeryPretermNewbornBirthHeadCircumferenceForAge(sex: $sex, age: $age, measurementResult: $measurementResult)';
  }
}

/// @nodoc
abstract mixin class _$IntergrowthVeryPretermNewbornBirthHeadCircumferenceForAgeCopyWith<
        $Res>
    implements
        $IntergrowthVeryPretermNewbornBirthHeadCircumferenceForAgeCopyWith<
            $Res> {
  factory _$IntergrowthVeryPretermNewbornBirthHeadCircumferenceForAgeCopyWith(
          _IntergrowthVeryPretermNewbornBirthHeadCircumferenceForAge value,
          $Res Function(
                  _IntergrowthVeryPretermNewbornBirthHeadCircumferenceForAge)
              _then) =
      __$IntergrowthVeryPretermNewbornBirthHeadCircumferenceForAgeCopyWithImpl;
  @override
  @useResult
  $Res call({Sex sex, Age age, Length measurementResult});

  @override
  $AgeCopyWith<$Res> get age;
}

/// @nodoc
class __$IntergrowthVeryPretermNewbornBirthHeadCircumferenceForAgeCopyWithImpl<
        $Res>
    implements
        _$IntergrowthVeryPretermNewbornBirthHeadCircumferenceForAgeCopyWith<
            $Res> {
  __$IntergrowthVeryPretermNewbornBirthHeadCircumferenceForAgeCopyWithImpl(
      this._self, this._then);

  final _IntergrowthVeryPretermNewbornBirthHeadCircumferenceForAge _self;
  final $Res Function(
      _IntergrowthVeryPretermNewbornBirthHeadCircumferenceForAge) _then;

  /// Create a copy of IntergrowthVeryPretermNewbornBirthHeadCircumferenceForAge
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? sex = null,
    Object? age = null,
    Object? measurementResult = null,
  }) {
    return _then(_IntergrowthVeryPretermNewbornBirthHeadCircumferenceForAge(
      sex: null == sex
          ? _self.sex
          : sex // ignore: cast_nullable_to_non_nullable
              as Sex,
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

  /// Create a copy of IntergrowthVeryPretermNewbornBirthHeadCircumferenceForAge
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
mixin _$IntergrowthVeryPretermNewbornBirthLengthForAge {
  Sex get sex;
  Age get age;
  Length get measurementResult;

  /// Create a copy of IntergrowthVeryPretermNewbornBirthLengthForAge
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $IntergrowthVeryPretermNewbornBirthLengthForAgeCopyWith<
          IntergrowthVeryPretermNewbornBirthLengthForAge>
      get copyWith =>
          _$IntergrowthVeryPretermNewbornBirthLengthForAgeCopyWithImpl<
                  IntergrowthVeryPretermNewbornBirthLengthForAge>(
              this as IntergrowthVeryPretermNewbornBirthLengthForAge,
              _$identity);

  /// Serializes this IntergrowthVeryPretermNewbornBirthLengthForAge to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is IntergrowthVeryPretermNewbornBirthLengthForAge &&
            (identical(other.sex, sex) || other.sex == sex) &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.measurementResult, measurementResult) ||
                other.measurementResult == measurementResult));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, sex, age, measurementResult);

  @override
  String toString() {
    return 'IntergrowthVeryPretermNewbornBirthLengthForAge(sex: $sex, age: $age, measurementResult: $measurementResult)';
  }
}

/// @nodoc
abstract mixin class $IntergrowthVeryPretermNewbornBirthLengthForAgeCopyWith<
    $Res> {
  factory $IntergrowthVeryPretermNewbornBirthLengthForAgeCopyWith(
          IntergrowthVeryPretermNewbornBirthLengthForAge value,
          $Res Function(IntergrowthVeryPretermNewbornBirthLengthForAge) _then) =
      _$IntergrowthVeryPretermNewbornBirthLengthForAgeCopyWithImpl;
  @useResult
  $Res call({Sex sex, Age age, Length measurementResult});

  $AgeCopyWith<$Res> get age;
}

/// @nodoc
class _$IntergrowthVeryPretermNewbornBirthLengthForAgeCopyWithImpl<$Res>
    implements $IntergrowthVeryPretermNewbornBirthLengthForAgeCopyWith<$Res> {
  _$IntergrowthVeryPretermNewbornBirthLengthForAgeCopyWithImpl(
      this._self, this._then);

  final IntergrowthVeryPretermNewbornBirthLengthForAge _self;
  final $Res Function(IntergrowthVeryPretermNewbornBirthLengthForAge) _then;

  /// Create a copy of IntergrowthVeryPretermNewbornBirthLengthForAge
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sex = null,
    Object? age = null,
    Object? measurementResult = null,
  }) {
    return _then(_self.copyWith(
      sex: null == sex
          ? _self.sex
          : sex // ignore: cast_nullable_to_non_nullable
              as Sex,
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

  /// Create a copy of IntergrowthVeryPretermNewbornBirthLengthForAge
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
@JsonSerializable()
class _IntergrowthVeryPretermNewbornBirthLengthForAge
    extends IntergrowthVeryPretermNewbornBirthLengthForAge {
  _IntergrowthVeryPretermNewbornBirthLengthForAge(
      {required this.sex, required this.age, required this.measurementResult})
      : super._();
  factory _IntergrowthVeryPretermNewbornBirthLengthForAge.fromJson(
          Map<String, dynamic> json) =>
      _$IntergrowthVeryPretermNewbornBirthLengthForAgeFromJson(json);

  @override
  final Sex sex;
  @override
  final Age age;
  @override
  final Length measurementResult;

  /// Create a copy of IntergrowthVeryPretermNewbornBirthLengthForAge
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$IntergrowthVeryPretermNewbornBirthLengthForAgeCopyWith<
          _IntergrowthVeryPretermNewbornBirthLengthForAge>
      get copyWith =>
          __$IntergrowthVeryPretermNewbornBirthLengthForAgeCopyWithImpl<
                  _IntergrowthVeryPretermNewbornBirthLengthForAge>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$IntergrowthVeryPretermNewbornBirthLengthForAgeToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _IntergrowthVeryPretermNewbornBirthLengthForAge &&
            (identical(other.sex, sex) || other.sex == sex) &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.measurementResult, measurementResult) ||
                other.measurementResult == measurementResult));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, sex, age, measurementResult);

  @override
  String toString() {
    return 'IntergrowthVeryPretermNewbornBirthLengthForAge(sex: $sex, age: $age, measurementResult: $measurementResult)';
  }
}

/// @nodoc
abstract mixin class _$IntergrowthVeryPretermNewbornBirthLengthForAgeCopyWith<
        $Res>
    implements $IntergrowthVeryPretermNewbornBirthLengthForAgeCopyWith<$Res> {
  factory _$IntergrowthVeryPretermNewbornBirthLengthForAgeCopyWith(
          _IntergrowthVeryPretermNewbornBirthLengthForAge value,
          $Res Function(_IntergrowthVeryPretermNewbornBirthLengthForAge)
              _then) =
      __$IntergrowthVeryPretermNewbornBirthLengthForAgeCopyWithImpl;
  @override
  @useResult
  $Res call({Sex sex, Age age, Length measurementResult});

  @override
  $AgeCopyWith<$Res> get age;
}

/// @nodoc
class __$IntergrowthVeryPretermNewbornBirthLengthForAgeCopyWithImpl<$Res>
    implements _$IntergrowthVeryPretermNewbornBirthLengthForAgeCopyWith<$Res> {
  __$IntergrowthVeryPretermNewbornBirthLengthForAgeCopyWithImpl(
      this._self, this._then);

  final _IntergrowthVeryPretermNewbornBirthLengthForAge _self;
  final $Res Function(_IntergrowthVeryPretermNewbornBirthLengthForAge) _then;

  /// Create a copy of IntergrowthVeryPretermNewbornBirthLengthForAge
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? sex = null,
    Object? age = null,
    Object? measurementResult = null,
  }) {
    return _then(_IntergrowthVeryPretermNewbornBirthLengthForAge(
      sex: null == sex
          ? _self.sex
          : sex // ignore: cast_nullable_to_non_nullable
              as Sex,
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

  /// Create a copy of IntergrowthVeryPretermNewbornBirthLengthForAge
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
mixin _$NewbornWeightLengthRatioMeasurement {
  num get value;

  /// Create a copy of NewbornWeightLengthRatioMeasurement
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $NewbornWeightLengthRatioMeasurementCopyWith<
          NewbornWeightLengthRatioMeasurement>
      get copyWith => _$NewbornWeightLengthRatioMeasurementCopyWithImpl<
              NewbornWeightLengthRatioMeasurement>(
          this as NewbornWeightLengthRatioMeasurement, _$identity);

  /// Serializes this NewbornWeightLengthRatioMeasurement to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is NewbornWeightLengthRatioMeasurement &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, value);

  @override
  String toString() {
    return 'NewbornWeightLengthRatioMeasurement(value: $value)';
  }
}

/// @nodoc
abstract mixin class $NewbornWeightLengthRatioMeasurementCopyWith<$Res> {
  factory $NewbornWeightLengthRatioMeasurementCopyWith(
          NewbornWeightLengthRatioMeasurement value,
          $Res Function(NewbornWeightLengthRatioMeasurement) _then) =
      _$NewbornWeightLengthRatioMeasurementCopyWithImpl;
  @useResult
  $Res call({num value});
}

/// @nodoc
class _$NewbornWeightLengthRatioMeasurementCopyWithImpl<$Res>
    implements $NewbornWeightLengthRatioMeasurementCopyWith<$Res> {
  _$NewbornWeightLengthRatioMeasurementCopyWithImpl(this._self, this._then);

  final NewbornWeightLengthRatioMeasurement _self;
  final $Res Function(NewbornWeightLengthRatioMeasurement) _then;

  /// Create a copy of NewbornWeightLengthRatioMeasurement
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_self.copyWith(
      value: null == value
          ? _self.value
          : value // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _NewbornWeightLengthRatioMeasurement
    extends NewbornWeightLengthRatioMeasurement {
  _NewbornWeightLengthRatioMeasurement(this.value) : super._();
  factory _NewbornWeightLengthRatioMeasurement.fromJson(
          Map<String, dynamic> json) =>
      _$NewbornWeightLengthRatioMeasurementFromJson(json);

  @override
  final num value;

  /// Create a copy of NewbornWeightLengthRatioMeasurement
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$NewbornWeightLengthRatioMeasurementCopyWith<
          _NewbornWeightLengthRatioMeasurement>
      get copyWith => __$NewbornWeightLengthRatioMeasurementCopyWithImpl<
          _NewbornWeightLengthRatioMeasurement>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$NewbornWeightLengthRatioMeasurementToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NewbornWeightLengthRatioMeasurement &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, value);

  @override
  String toString() {
    return 'NewbornWeightLengthRatioMeasurement(value: $value)';
  }
}

/// @nodoc
abstract mixin class _$NewbornWeightLengthRatioMeasurementCopyWith<$Res>
    implements $NewbornWeightLengthRatioMeasurementCopyWith<$Res> {
  factory _$NewbornWeightLengthRatioMeasurementCopyWith(
          _NewbornWeightLengthRatioMeasurement value,
          $Res Function(_NewbornWeightLengthRatioMeasurement) _then) =
      __$NewbornWeightLengthRatioMeasurementCopyWithImpl;
  @override
  @useResult
  $Res call({num value});
}

/// @nodoc
class __$NewbornWeightLengthRatioMeasurementCopyWithImpl<$Res>
    implements _$NewbornWeightLengthRatioMeasurementCopyWith<$Res> {
  __$NewbornWeightLengthRatioMeasurementCopyWithImpl(this._self, this._then);

  final _NewbornWeightLengthRatioMeasurement _self;
  final $Res Function(_NewbornWeightLengthRatioMeasurement) _then;

  /// Create a copy of NewbornWeightLengthRatioMeasurement
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? value = null,
  }) {
    return _then(_NewbornWeightLengthRatioMeasurement(
      null == value
          ? _self.value
          : value // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// @nodoc
mixin _$IntergrowthVeryPretermNewbornBirthWeightForLengthRatioForAge {
  Sex get sex;
  Age get age;
  NewbornWeightLengthRatioMeasurement get measurementResult;

  /// Create a copy of IntergrowthVeryPretermNewbornBirthWeightForLengthRatioForAge
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $IntergrowthVeryPretermNewbornBirthWeightForLengthRatioForAgeCopyWith<
          IntergrowthVeryPretermNewbornBirthWeightForLengthRatioForAge>
      get copyWith =>
          _$IntergrowthVeryPretermNewbornBirthWeightForLengthRatioForAgeCopyWithImpl<
                  IntergrowthVeryPretermNewbornBirthWeightForLengthRatioForAge>(
              this
                  as IntergrowthVeryPretermNewbornBirthWeightForLengthRatioForAge,
              _$identity);

  /// Serializes this IntergrowthVeryPretermNewbornBirthWeightForLengthRatioForAge to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other
                is IntergrowthVeryPretermNewbornBirthWeightForLengthRatioForAge &&
            (identical(other.sex, sex) || other.sex == sex) &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.measurementResult, measurementResult) ||
                other.measurementResult == measurementResult));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, sex, age, measurementResult);

  @override
  String toString() {
    return 'IntergrowthVeryPretermNewbornBirthWeightForLengthRatioForAge(sex: $sex, age: $age, measurementResult: $measurementResult)';
  }
}

/// @nodoc
abstract mixin class $IntergrowthVeryPretermNewbornBirthWeightForLengthRatioForAgeCopyWith<
    $Res> {
  factory $IntergrowthVeryPretermNewbornBirthWeightForLengthRatioForAgeCopyWith(
          IntergrowthVeryPretermNewbornBirthWeightForLengthRatioForAge value,
          $Res Function(
                  IntergrowthVeryPretermNewbornBirthWeightForLengthRatioForAge)
              _then) =
      _$IntergrowthVeryPretermNewbornBirthWeightForLengthRatioForAgeCopyWithImpl;
  @useResult
  $Res call(
      {Sex sex,
      Age age,
      NewbornWeightLengthRatioMeasurement measurementResult});

  $AgeCopyWith<$Res> get age;
  $NewbornWeightLengthRatioMeasurementCopyWith<$Res> get measurementResult;
}

/// @nodoc
class _$IntergrowthVeryPretermNewbornBirthWeightForLengthRatioForAgeCopyWithImpl<
        $Res>
    implements
        $IntergrowthVeryPretermNewbornBirthWeightForLengthRatioForAgeCopyWith<
            $Res> {
  _$IntergrowthVeryPretermNewbornBirthWeightForLengthRatioForAgeCopyWithImpl(
      this._self, this._then);

  final IntergrowthVeryPretermNewbornBirthWeightForLengthRatioForAge _self;
  final $Res Function(
      IntergrowthVeryPretermNewbornBirthWeightForLengthRatioForAge) _then;

  /// Create a copy of IntergrowthVeryPretermNewbornBirthWeightForLengthRatioForAge
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sex = null,
    Object? age = null,
    Object? measurementResult = null,
  }) {
    return _then(_self.copyWith(
      sex: null == sex
          ? _self.sex
          : sex // ignore: cast_nullable_to_non_nullable
              as Sex,
      age: null == age
          ? _self.age
          : age // ignore: cast_nullable_to_non_nullable
              as Age,
      measurementResult: null == measurementResult
          ? _self.measurementResult
          : measurementResult // ignore: cast_nullable_to_non_nullable
              as NewbornWeightLengthRatioMeasurement,
    ));
  }

  /// Create a copy of IntergrowthVeryPretermNewbornBirthWeightForLengthRatioForAge
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AgeCopyWith<$Res> get age {
    return $AgeCopyWith<$Res>(_self.age, (value) {
      return _then(_self.copyWith(age: value));
    });
  }

  /// Create a copy of IntergrowthVeryPretermNewbornBirthWeightForLengthRatioForAge
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $NewbornWeightLengthRatioMeasurementCopyWith<$Res> get measurementResult {
    return $NewbornWeightLengthRatioMeasurementCopyWith<$Res>(
        _self.measurementResult, (value) {
      return _then(_self.copyWith(measurementResult: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _IntergrowthVeryPretermNewbornBirthWeightForLengthRatioForAge
    extends IntergrowthVeryPretermNewbornBirthWeightForLengthRatioForAge {
  _IntergrowthVeryPretermNewbornBirthWeightForLengthRatioForAge(
      {required this.sex, required this.age, required this.measurementResult})
      : super._();
  factory _IntergrowthVeryPretermNewbornBirthWeightForLengthRatioForAge.fromJson(
          Map<String, dynamic> json) =>
      _$IntergrowthVeryPretermNewbornBirthWeightForLengthRatioForAgeFromJson(
          json);

  @override
  final Sex sex;
  @override
  final Age age;
  @override
  final NewbornWeightLengthRatioMeasurement measurementResult;

  /// Create a copy of IntergrowthVeryPretermNewbornBirthWeightForLengthRatioForAge
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$IntergrowthVeryPretermNewbornBirthWeightForLengthRatioForAgeCopyWith<
          _IntergrowthVeryPretermNewbornBirthWeightForLengthRatioForAge>
      get copyWith =>
          __$IntergrowthVeryPretermNewbornBirthWeightForLengthRatioForAgeCopyWithImpl<
                  _IntergrowthVeryPretermNewbornBirthWeightForLengthRatioForAge>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$IntergrowthVeryPretermNewbornBirthWeightForLengthRatioForAgeToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other
                is _IntergrowthVeryPretermNewbornBirthWeightForLengthRatioForAge &&
            (identical(other.sex, sex) || other.sex == sex) &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.measurementResult, measurementResult) ||
                other.measurementResult == measurementResult));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, sex, age, measurementResult);

  @override
  String toString() {
    return 'IntergrowthVeryPretermNewbornBirthWeightForLengthRatioForAge(sex: $sex, age: $age, measurementResult: $measurementResult)';
  }
}

/// @nodoc
abstract mixin class _$IntergrowthVeryPretermNewbornBirthWeightForLengthRatioForAgeCopyWith<
        $Res>
    implements
        $IntergrowthVeryPretermNewbornBirthWeightForLengthRatioForAgeCopyWith<
            $Res> {
  factory _$IntergrowthVeryPretermNewbornBirthWeightForLengthRatioForAgeCopyWith(
          _IntergrowthVeryPretermNewbornBirthWeightForLengthRatioForAge value,
          $Res Function(
                  _IntergrowthVeryPretermNewbornBirthWeightForLengthRatioForAge)
              _then) =
      __$IntergrowthVeryPretermNewbornBirthWeightForLengthRatioForAgeCopyWithImpl;
  @override
  @useResult
  $Res call(
      {Sex sex,
      Age age,
      NewbornWeightLengthRatioMeasurement measurementResult});

  @override
  $AgeCopyWith<$Res> get age;
  @override
  $NewbornWeightLengthRatioMeasurementCopyWith<$Res> get measurementResult;
}

/// @nodoc
class __$IntergrowthVeryPretermNewbornBirthWeightForLengthRatioForAgeCopyWithImpl<
        $Res>
    implements
        _$IntergrowthVeryPretermNewbornBirthWeightForLengthRatioForAgeCopyWith<
            $Res> {
  __$IntergrowthVeryPretermNewbornBirthWeightForLengthRatioForAgeCopyWithImpl(
      this._self, this._then);

  final _IntergrowthVeryPretermNewbornBirthWeightForLengthRatioForAge _self;
  final $Res Function(
      _IntergrowthVeryPretermNewbornBirthWeightForLengthRatioForAge) _then;

  /// Create a copy of IntergrowthVeryPretermNewbornBirthWeightForLengthRatioForAge
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? sex = null,
    Object? age = null,
    Object? measurementResult = null,
  }) {
    return _then(_IntergrowthVeryPretermNewbornBirthWeightForLengthRatioForAge(
      sex: null == sex
          ? _self.sex
          : sex // ignore: cast_nullable_to_non_nullable
              as Sex,
      age: null == age
          ? _self.age
          : age // ignore: cast_nullable_to_non_nullable
              as Age,
      measurementResult: null == measurementResult
          ? _self.measurementResult
          : measurementResult // ignore: cast_nullable_to_non_nullable
              as NewbornWeightLengthRatioMeasurement,
    ));
  }

  /// Create a copy of IntergrowthVeryPretermNewbornBirthWeightForLengthRatioForAge
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AgeCopyWith<$Res> get age {
    return $AgeCopyWith<$Res>(_self.age, (value) {
      return _then(_self.copyWith(age: value));
    });
  }

  /// Create a copy of IntergrowthVeryPretermNewbornBirthWeightForLengthRatioForAge
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $NewbornWeightLengthRatioMeasurementCopyWith<$Res> get measurementResult {
    return $NewbornWeightLengthRatioMeasurementCopyWith<$Res>(
        _self.measurementResult, (value) {
      return _then(_self.copyWith(measurementResult: value));
    });
  }
}

/// @nodoc
mixin _$IntergrowthEarlyPregnancyDatingForCRL {
  Age get age;
  Length get length;

  /// Create a copy of IntergrowthEarlyPregnancyDatingForCRL
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $IntergrowthEarlyPregnancyDatingForCRLCopyWith<
          IntergrowthEarlyPregnancyDatingForCRL>
      get copyWith => _$IntergrowthEarlyPregnancyDatingForCRLCopyWithImpl<
              IntergrowthEarlyPregnancyDatingForCRL>(
          this as IntergrowthEarlyPregnancyDatingForCRL, _$identity);

  /// Serializes this IntergrowthEarlyPregnancyDatingForCRL to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is IntergrowthEarlyPregnancyDatingForCRL &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.length, length) || other.length == length));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, age, length);

  @override
  String toString() {
    return 'IntergrowthEarlyPregnancyDatingForCRL(age: $age, length: $length)';
  }
}

/// @nodoc
abstract mixin class $IntergrowthEarlyPregnancyDatingForCRLCopyWith<$Res> {
  factory $IntergrowthEarlyPregnancyDatingForCRLCopyWith(
          IntergrowthEarlyPregnancyDatingForCRL value,
          $Res Function(IntergrowthEarlyPregnancyDatingForCRL) _then) =
      _$IntergrowthEarlyPregnancyDatingForCRLCopyWithImpl;
  @useResult
  $Res call({Age age, Length length});

  $AgeCopyWith<$Res> get age;
}

/// @nodoc
class _$IntergrowthEarlyPregnancyDatingForCRLCopyWithImpl<$Res>
    implements $IntergrowthEarlyPregnancyDatingForCRLCopyWith<$Res> {
  _$IntergrowthEarlyPregnancyDatingForCRLCopyWithImpl(this._self, this._then);

  final IntergrowthEarlyPregnancyDatingForCRL _self;
  final $Res Function(IntergrowthEarlyPregnancyDatingForCRL) _then;

  /// Create a copy of IntergrowthEarlyPregnancyDatingForCRL
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? age = null,
    Object? length = null,
  }) {
    return _then(_self.copyWith(
      age: null == age
          ? _self.age
          : age // ignore: cast_nullable_to_non_nullable
              as Age,
      length: null == length
          ? _self.length
          : length // ignore: cast_nullable_to_non_nullable
              as Length,
    ));
  }

  /// Create a copy of IntergrowthEarlyPregnancyDatingForCRL
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
@JsonSerializable()
class _IntergrowthEarlyPregnancyDatingForCRL
    extends IntergrowthEarlyPregnancyDatingForCRL {
  _IntergrowthEarlyPregnancyDatingForCRL(
      {required this.age, required this.length})
      : super._();
  factory _IntergrowthEarlyPregnancyDatingForCRL.fromJson(
          Map<String, dynamic> json) =>
      _$IntergrowthEarlyPregnancyDatingForCRLFromJson(json);

  @override
  final Age age;
  @override
  final Length length;

  /// Create a copy of IntergrowthEarlyPregnancyDatingForCRL
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$IntergrowthEarlyPregnancyDatingForCRLCopyWith<
          _IntergrowthEarlyPregnancyDatingForCRL>
      get copyWith => __$IntergrowthEarlyPregnancyDatingForCRLCopyWithImpl<
          _IntergrowthEarlyPregnancyDatingForCRL>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$IntergrowthEarlyPregnancyDatingForCRLToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _IntergrowthEarlyPregnancyDatingForCRL &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.length, length) || other.length == length));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, age, length);

  @override
  String toString() {
    return 'IntergrowthEarlyPregnancyDatingForCRL(age: $age, length: $length)';
  }
}

/// @nodoc
abstract mixin class _$IntergrowthEarlyPregnancyDatingForCRLCopyWith<$Res>
    implements $IntergrowthEarlyPregnancyDatingForCRLCopyWith<$Res> {
  factory _$IntergrowthEarlyPregnancyDatingForCRLCopyWith(
          _IntergrowthEarlyPregnancyDatingForCRL value,
          $Res Function(_IntergrowthEarlyPregnancyDatingForCRL) _then) =
      __$IntergrowthEarlyPregnancyDatingForCRLCopyWithImpl;
  @override
  @useResult
  $Res call({Age age, Length length});

  @override
  $AgeCopyWith<$Res> get age;
}

/// @nodoc
class __$IntergrowthEarlyPregnancyDatingForCRLCopyWithImpl<$Res>
    implements _$IntergrowthEarlyPregnancyDatingForCRLCopyWith<$Res> {
  __$IntergrowthEarlyPregnancyDatingForCRLCopyWithImpl(this._self, this._then);

  final _IntergrowthEarlyPregnancyDatingForCRL _self;
  final $Res Function(_IntergrowthEarlyPregnancyDatingForCRL) _then;

  /// Create a copy of IntergrowthEarlyPregnancyDatingForCRL
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? age = null,
    Object? length = null,
  }) {
    return _then(_IntergrowthEarlyPregnancyDatingForCRL(
      age: null == age
          ? _self.age
          : age // ignore: cast_nullable_to_non_nullable
              as Age,
      length: null == length
          ? _self.length
          : length // ignore: cast_nullable_to_non_nullable
              as Length,
    ));
  }

  /// Create a copy of IntergrowthEarlyPregnancyDatingForCRL
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
mixin _$IntergrowthFetalGrowtAbdominalCircumferenceForAge {
  Age get age;
  Length get measurementResult;

  /// Create a copy of IntergrowthFetalGrowtAbdominalCircumferenceForAge
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $IntergrowthFetalGrowtAbdominalCircumferenceForAgeCopyWith<
          IntergrowthFetalGrowtAbdominalCircumferenceForAge>
      get copyWith =>
          _$IntergrowthFetalGrowtAbdominalCircumferenceForAgeCopyWithImpl<
                  IntergrowthFetalGrowtAbdominalCircumferenceForAge>(
              this as IntergrowthFetalGrowtAbdominalCircumferenceForAge,
              _$identity);

  /// Serializes this IntergrowthFetalGrowtAbdominalCircumferenceForAge to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is IntergrowthFetalGrowtAbdominalCircumferenceForAge &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.measurementResult, measurementResult) ||
                other.measurementResult == measurementResult));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, age, measurementResult);

  @override
  String toString() {
    return 'IntergrowthFetalGrowtAbdominalCircumferenceForAge(age: $age, measurementResult: $measurementResult)';
  }
}

/// @nodoc
abstract mixin class $IntergrowthFetalGrowtAbdominalCircumferenceForAgeCopyWith<
    $Res> {
  factory $IntergrowthFetalGrowtAbdominalCircumferenceForAgeCopyWith(
          IntergrowthFetalGrowtAbdominalCircumferenceForAge value,
          $Res Function(IntergrowthFetalGrowtAbdominalCircumferenceForAge)
              _then) =
      _$IntergrowthFetalGrowtAbdominalCircumferenceForAgeCopyWithImpl;
  @useResult
  $Res call({Age age, Length measurementResult});

  $AgeCopyWith<$Res> get age;
}

/// @nodoc
class _$IntergrowthFetalGrowtAbdominalCircumferenceForAgeCopyWithImpl<$Res>
    implements
        $IntergrowthFetalGrowtAbdominalCircumferenceForAgeCopyWith<$Res> {
  _$IntergrowthFetalGrowtAbdominalCircumferenceForAgeCopyWithImpl(
      this._self, this._then);

  final IntergrowthFetalGrowtAbdominalCircumferenceForAge _self;
  final $Res Function(IntergrowthFetalGrowtAbdominalCircumferenceForAge) _then;

  /// Create a copy of IntergrowthFetalGrowtAbdominalCircumferenceForAge
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

  /// Create a copy of IntergrowthFetalGrowtAbdominalCircumferenceForAge
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
@JsonSerializable()
class _IntergrowthFetalGrowtAbdominalCircumferenceForAge
    extends IntergrowthFetalGrowtAbdominalCircumferenceForAge {
  _IntergrowthFetalGrowtAbdominalCircumferenceForAge(
      {required this.age, required this.measurementResult})
      : super._();
  factory _IntergrowthFetalGrowtAbdominalCircumferenceForAge.fromJson(
          Map<String, dynamic> json) =>
      _$IntergrowthFetalGrowtAbdominalCircumferenceForAgeFromJson(json);

  @override
  final Age age;
  @override
  final Length measurementResult;

  /// Create a copy of IntergrowthFetalGrowtAbdominalCircumferenceForAge
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$IntergrowthFetalGrowtAbdominalCircumferenceForAgeCopyWith<
          _IntergrowthFetalGrowtAbdominalCircumferenceForAge>
      get copyWith =>
          __$IntergrowthFetalGrowtAbdominalCircumferenceForAgeCopyWithImpl<
                  _IntergrowthFetalGrowtAbdominalCircumferenceForAge>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$IntergrowthFetalGrowtAbdominalCircumferenceForAgeToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _IntergrowthFetalGrowtAbdominalCircumferenceForAge &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.measurementResult, measurementResult) ||
                other.measurementResult == measurementResult));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, age, measurementResult);

  @override
  String toString() {
    return 'IntergrowthFetalGrowtAbdominalCircumferenceForAge(age: $age, measurementResult: $measurementResult)';
  }
}

/// @nodoc
abstract mixin class _$IntergrowthFetalGrowtAbdominalCircumferenceForAgeCopyWith<
        $Res>
    implements
        $IntergrowthFetalGrowtAbdominalCircumferenceForAgeCopyWith<$Res> {
  factory _$IntergrowthFetalGrowtAbdominalCircumferenceForAgeCopyWith(
          _IntergrowthFetalGrowtAbdominalCircumferenceForAge value,
          $Res Function(_IntergrowthFetalGrowtAbdominalCircumferenceForAge)
              _then) =
      __$IntergrowthFetalGrowtAbdominalCircumferenceForAgeCopyWithImpl;
  @override
  @useResult
  $Res call({Age age, Length measurementResult});

  @override
  $AgeCopyWith<$Res> get age;
}

/// @nodoc
class __$IntergrowthFetalGrowtAbdominalCircumferenceForAgeCopyWithImpl<$Res>
    implements
        _$IntergrowthFetalGrowtAbdominalCircumferenceForAgeCopyWith<$Res> {
  __$IntergrowthFetalGrowtAbdominalCircumferenceForAgeCopyWithImpl(
      this._self, this._then);

  final _IntergrowthFetalGrowtAbdominalCircumferenceForAge _self;
  final $Res Function(_IntergrowthFetalGrowtAbdominalCircumferenceForAge) _then;

  /// Create a copy of IntergrowthFetalGrowtAbdominalCircumferenceForAge
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? age = null,
    Object? measurementResult = null,
  }) {
    return _then(_IntergrowthFetalGrowtAbdominalCircumferenceForAge(
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

  /// Create a copy of IntergrowthFetalGrowtAbdominalCircumferenceForAge
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
mixin _$IntergrowthFetalGrowtBiparietalDiameterForAge {
  Age get age;
  Length get measurementResult;

  /// Create a copy of IntergrowthFetalGrowtBiparietalDiameterForAge
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $IntergrowthFetalGrowtBiparietalDiameterForAgeCopyWith<
          IntergrowthFetalGrowtBiparietalDiameterForAge>
      get copyWith =>
          _$IntergrowthFetalGrowtBiparietalDiameterForAgeCopyWithImpl<
                  IntergrowthFetalGrowtBiparietalDiameterForAge>(
              this as IntergrowthFetalGrowtBiparietalDiameterForAge,
              _$identity);

  /// Serializes this IntergrowthFetalGrowtBiparietalDiameterForAge to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is IntergrowthFetalGrowtBiparietalDiameterForAge &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.measurementResult, measurementResult) ||
                other.measurementResult == measurementResult));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, age, measurementResult);

  @override
  String toString() {
    return 'IntergrowthFetalGrowtBiparietalDiameterForAge(age: $age, measurementResult: $measurementResult)';
  }
}

/// @nodoc
abstract mixin class $IntergrowthFetalGrowtBiparietalDiameterForAgeCopyWith<
    $Res> {
  factory $IntergrowthFetalGrowtBiparietalDiameterForAgeCopyWith(
          IntergrowthFetalGrowtBiparietalDiameterForAge value,
          $Res Function(IntergrowthFetalGrowtBiparietalDiameterForAge) _then) =
      _$IntergrowthFetalGrowtBiparietalDiameterForAgeCopyWithImpl;
  @useResult
  $Res call({Age age, Length measurementResult});

  $AgeCopyWith<$Res> get age;
}

/// @nodoc
class _$IntergrowthFetalGrowtBiparietalDiameterForAgeCopyWithImpl<$Res>
    implements $IntergrowthFetalGrowtBiparietalDiameterForAgeCopyWith<$Res> {
  _$IntergrowthFetalGrowtBiparietalDiameterForAgeCopyWithImpl(
      this._self, this._then);

  final IntergrowthFetalGrowtBiparietalDiameterForAge _self;
  final $Res Function(IntergrowthFetalGrowtBiparietalDiameterForAge) _then;

  /// Create a copy of IntergrowthFetalGrowtBiparietalDiameterForAge
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

  /// Create a copy of IntergrowthFetalGrowtBiparietalDiameterForAge
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
@JsonSerializable()
class _IntergrowthFetalGrowtBiparietalDiameterForAge
    extends IntergrowthFetalGrowtBiparietalDiameterForAge {
  _IntergrowthFetalGrowtBiparietalDiameterForAge(
      {required this.age, required this.measurementResult})
      : super._();
  factory _IntergrowthFetalGrowtBiparietalDiameterForAge.fromJson(
          Map<String, dynamic> json) =>
      _$IntergrowthFetalGrowtBiparietalDiameterForAgeFromJson(json);

  @override
  final Age age;
  @override
  final Length measurementResult;

  /// Create a copy of IntergrowthFetalGrowtBiparietalDiameterForAge
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$IntergrowthFetalGrowtBiparietalDiameterForAgeCopyWith<
          _IntergrowthFetalGrowtBiparietalDiameterForAge>
      get copyWith =>
          __$IntergrowthFetalGrowtBiparietalDiameterForAgeCopyWithImpl<
              _IntergrowthFetalGrowtBiparietalDiameterForAge>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$IntergrowthFetalGrowtBiparietalDiameterForAgeToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _IntergrowthFetalGrowtBiparietalDiameterForAge &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.measurementResult, measurementResult) ||
                other.measurementResult == measurementResult));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, age, measurementResult);

  @override
  String toString() {
    return 'IntergrowthFetalGrowtBiparietalDiameterForAge(age: $age, measurementResult: $measurementResult)';
  }
}

/// @nodoc
abstract mixin class _$IntergrowthFetalGrowtBiparietalDiameterForAgeCopyWith<
        $Res>
    implements $IntergrowthFetalGrowtBiparietalDiameterForAgeCopyWith<$Res> {
  factory _$IntergrowthFetalGrowtBiparietalDiameterForAgeCopyWith(
          _IntergrowthFetalGrowtBiparietalDiameterForAge value,
          $Res Function(_IntergrowthFetalGrowtBiparietalDiameterForAge) _then) =
      __$IntergrowthFetalGrowtBiparietalDiameterForAgeCopyWithImpl;
  @override
  @useResult
  $Res call({Age age, Length measurementResult});

  @override
  $AgeCopyWith<$Res> get age;
}

/// @nodoc
class __$IntergrowthFetalGrowtBiparietalDiameterForAgeCopyWithImpl<$Res>
    implements _$IntergrowthFetalGrowtBiparietalDiameterForAgeCopyWith<$Res> {
  __$IntergrowthFetalGrowtBiparietalDiameterForAgeCopyWithImpl(
      this._self, this._then);

  final _IntergrowthFetalGrowtBiparietalDiameterForAge _self;
  final $Res Function(_IntergrowthFetalGrowtBiparietalDiameterForAge) _then;

  /// Create a copy of IntergrowthFetalGrowtBiparietalDiameterForAge
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? age = null,
    Object? measurementResult = null,
  }) {
    return _then(_IntergrowthFetalGrowtBiparietalDiameterForAge(
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

  /// Create a copy of IntergrowthFetalGrowtBiparietalDiameterForAge
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
mixin _$IntergrowthFetalGrowtHeadCircumferenceForAge {
  Age get age;
  Length get measurementResult;

  /// Create a copy of IntergrowthFetalGrowtHeadCircumferenceForAge
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $IntergrowthFetalGrowtHeadCircumferenceForAgeCopyWith<
          IntergrowthFetalGrowtHeadCircumferenceForAge>
      get copyWith =>
          _$IntergrowthFetalGrowtHeadCircumferenceForAgeCopyWithImpl<
                  IntergrowthFetalGrowtHeadCircumferenceForAge>(
              this as IntergrowthFetalGrowtHeadCircumferenceForAge, _$identity);

  /// Serializes this IntergrowthFetalGrowtHeadCircumferenceForAge to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is IntergrowthFetalGrowtHeadCircumferenceForAge &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.measurementResult, measurementResult) ||
                other.measurementResult == measurementResult));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, age, measurementResult);

  @override
  String toString() {
    return 'IntergrowthFetalGrowtHeadCircumferenceForAge(age: $age, measurementResult: $measurementResult)';
  }
}

/// @nodoc
abstract mixin class $IntergrowthFetalGrowtHeadCircumferenceForAgeCopyWith<
    $Res> {
  factory $IntergrowthFetalGrowtHeadCircumferenceForAgeCopyWith(
          IntergrowthFetalGrowtHeadCircumferenceForAge value,
          $Res Function(IntergrowthFetalGrowtHeadCircumferenceForAge) _then) =
      _$IntergrowthFetalGrowtHeadCircumferenceForAgeCopyWithImpl;
  @useResult
  $Res call({Age age, Length measurementResult});

  $AgeCopyWith<$Res> get age;
}

/// @nodoc
class _$IntergrowthFetalGrowtHeadCircumferenceForAgeCopyWithImpl<$Res>
    implements $IntergrowthFetalGrowtHeadCircumferenceForAgeCopyWith<$Res> {
  _$IntergrowthFetalGrowtHeadCircumferenceForAgeCopyWithImpl(
      this._self, this._then);

  final IntergrowthFetalGrowtHeadCircumferenceForAge _self;
  final $Res Function(IntergrowthFetalGrowtHeadCircumferenceForAge) _then;

  /// Create a copy of IntergrowthFetalGrowtHeadCircumferenceForAge
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

  /// Create a copy of IntergrowthFetalGrowtHeadCircumferenceForAge
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
@JsonSerializable()
class _IntergrowthFetalGrowtHeadCircumferenceForAge
    extends IntergrowthFetalGrowtHeadCircumferenceForAge {
  _IntergrowthFetalGrowtHeadCircumferenceForAge(
      {required this.age, required this.measurementResult})
      : super._();
  factory _IntergrowthFetalGrowtHeadCircumferenceForAge.fromJson(
          Map<String, dynamic> json) =>
      _$IntergrowthFetalGrowtHeadCircumferenceForAgeFromJson(json);

  @override
  final Age age;
  @override
  final Length measurementResult;

  /// Create a copy of IntergrowthFetalGrowtHeadCircumferenceForAge
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$IntergrowthFetalGrowtHeadCircumferenceForAgeCopyWith<
          _IntergrowthFetalGrowtHeadCircumferenceForAge>
      get copyWith =>
          __$IntergrowthFetalGrowtHeadCircumferenceForAgeCopyWithImpl<
              _IntergrowthFetalGrowtHeadCircumferenceForAge>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$IntergrowthFetalGrowtHeadCircumferenceForAgeToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _IntergrowthFetalGrowtHeadCircumferenceForAge &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.measurementResult, measurementResult) ||
                other.measurementResult == measurementResult));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, age, measurementResult);

  @override
  String toString() {
    return 'IntergrowthFetalGrowtHeadCircumferenceForAge(age: $age, measurementResult: $measurementResult)';
  }
}

/// @nodoc
abstract mixin class _$IntergrowthFetalGrowtHeadCircumferenceForAgeCopyWith<
        $Res>
    implements $IntergrowthFetalGrowtHeadCircumferenceForAgeCopyWith<$Res> {
  factory _$IntergrowthFetalGrowtHeadCircumferenceForAgeCopyWith(
          _IntergrowthFetalGrowtHeadCircumferenceForAge value,
          $Res Function(_IntergrowthFetalGrowtHeadCircumferenceForAge) _then) =
      __$IntergrowthFetalGrowtHeadCircumferenceForAgeCopyWithImpl;
  @override
  @useResult
  $Res call({Age age, Length measurementResult});

  @override
  $AgeCopyWith<$Res> get age;
}

/// @nodoc
class __$IntergrowthFetalGrowtHeadCircumferenceForAgeCopyWithImpl<$Res>
    implements _$IntergrowthFetalGrowtHeadCircumferenceForAgeCopyWith<$Res> {
  __$IntergrowthFetalGrowtHeadCircumferenceForAgeCopyWithImpl(
      this._self, this._then);

  final _IntergrowthFetalGrowtHeadCircumferenceForAge _self;
  final $Res Function(_IntergrowthFetalGrowtHeadCircumferenceForAge) _then;

  /// Create a copy of IntergrowthFetalGrowtHeadCircumferenceForAge
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? age = null,
    Object? measurementResult = null,
  }) {
    return _then(_IntergrowthFetalGrowtHeadCircumferenceForAge(
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

  /// Create a copy of IntergrowthFetalGrowtHeadCircumferenceForAge
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
mixin _$IntergrowthFetalGrowtFemurLengthForAge {
  Age get age;
  Length get measurementResult;

  /// Create a copy of IntergrowthFetalGrowtFemurLengthForAge
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $IntergrowthFetalGrowtFemurLengthForAgeCopyWith<
          IntergrowthFetalGrowtFemurLengthForAge>
      get copyWith => _$IntergrowthFetalGrowtFemurLengthForAgeCopyWithImpl<
              IntergrowthFetalGrowtFemurLengthForAge>(
          this as IntergrowthFetalGrowtFemurLengthForAge, _$identity);

  /// Serializes this IntergrowthFetalGrowtFemurLengthForAge to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is IntergrowthFetalGrowtFemurLengthForAge &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.measurementResult, measurementResult) ||
                other.measurementResult == measurementResult));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, age, measurementResult);

  @override
  String toString() {
    return 'IntergrowthFetalGrowtFemurLengthForAge(age: $age, measurementResult: $measurementResult)';
  }
}

/// @nodoc
abstract mixin class $IntergrowthFetalGrowtFemurLengthForAgeCopyWith<$Res> {
  factory $IntergrowthFetalGrowtFemurLengthForAgeCopyWith(
          IntergrowthFetalGrowtFemurLengthForAge value,
          $Res Function(IntergrowthFetalGrowtFemurLengthForAge) _then) =
      _$IntergrowthFetalGrowtFemurLengthForAgeCopyWithImpl;
  @useResult
  $Res call({Age age, Length measurementResult});

  $AgeCopyWith<$Res> get age;
}

/// @nodoc
class _$IntergrowthFetalGrowtFemurLengthForAgeCopyWithImpl<$Res>
    implements $IntergrowthFetalGrowtFemurLengthForAgeCopyWith<$Res> {
  _$IntergrowthFetalGrowtFemurLengthForAgeCopyWithImpl(this._self, this._then);

  final IntergrowthFetalGrowtFemurLengthForAge _self;
  final $Res Function(IntergrowthFetalGrowtFemurLengthForAge) _then;

  /// Create a copy of IntergrowthFetalGrowtFemurLengthForAge
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

  /// Create a copy of IntergrowthFetalGrowtFemurLengthForAge
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
@JsonSerializable()
class _IntergrowthFetalGrowtFemurLengthForAge
    extends IntergrowthFetalGrowtFemurLengthForAge {
  _IntergrowthFetalGrowtFemurLengthForAge(
      {required this.age, required this.measurementResult})
      : super._();
  factory _IntergrowthFetalGrowtFemurLengthForAge.fromJson(
          Map<String, dynamic> json) =>
      _$IntergrowthFetalGrowtFemurLengthForAgeFromJson(json);

  @override
  final Age age;
  @override
  final Length measurementResult;

  /// Create a copy of IntergrowthFetalGrowtFemurLengthForAge
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$IntergrowthFetalGrowtFemurLengthForAgeCopyWith<
          _IntergrowthFetalGrowtFemurLengthForAge>
      get copyWith => __$IntergrowthFetalGrowtFemurLengthForAgeCopyWithImpl<
          _IntergrowthFetalGrowtFemurLengthForAge>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$IntergrowthFetalGrowtFemurLengthForAgeToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _IntergrowthFetalGrowtFemurLengthForAge &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.measurementResult, measurementResult) ||
                other.measurementResult == measurementResult));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, age, measurementResult);

  @override
  String toString() {
    return 'IntergrowthFetalGrowtFemurLengthForAge(age: $age, measurementResult: $measurementResult)';
  }
}

/// @nodoc
abstract mixin class _$IntergrowthFetalGrowtFemurLengthForAgeCopyWith<$Res>
    implements $IntergrowthFetalGrowtFemurLengthForAgeCopyWith<$Res> {
  factory _$IntergrowthFetalGrowtFemurLengthForAgeCopyWith(
          _IntergrowthFetalGrowtFemurLengthForAge value,
          $Res Function(_IntergrowthFetalGrowtFemurLengthForAge) _then) =
      __$IntergrowthFetalGrowtFemurLengthForAgeCopyWithImpl;
  @override
  @useResult
  $Res call({Age age, Length measurementResult});

  @override
  $AgeCopyWith<$Res> get age;
}

/// @nodoc
class __$IntergrowthFetalGrowtFemurLengthForAgeCopyWithImpl<$Res>
    implements _$IntergrowthFetalGrowtFemurLengthForAgeCopyWith<$Res> {
  __$IntergrowthFetalGrowtFemurLengthForAgeCopyWithImpl(this._self, this._then);

  final _IntergrowthFetalGrowtFemurLengthForAge _self;
  final $Res Function(_IntergrowthFetalGrowtFemurLengthForAge) _then;

  /// Create a copy of IntergrowthFetalGrowtFemurLengthForAge
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? age = null,
    Object? measurementResult = null,
  }) {
    return _then(_IntergrowthFetalGrowtFemurLengthForAge(
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

  /// Create a copy of IntergrowthFetalGrowtFemurLengthForAge
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
mixin _$IntergrowthFetalGrowtOccipitoFrontalDiameterForAge {
  Age get age;
  Length get measurementResult;

  /// Create a copy of IntergrowthFetalGrowtOccipitoFrontalDiameterForAge
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $IntergrowthFetalGrowtOccipitoFrontalDiameterForAgeCopyWith<
          IntergrowthFetalGrowtOccipitoFrontalDiameterForAge>
      get copyWith =>
          _$IntergrowthFetalGrowtOccipitoFrontalDiameterForAgeCopyWithImpl<
                  IntergrowthFetalGrowtOccipitoFrontalDiameterForAge>(
              this as IntergrowthFetalGrowtOccipitoFrontalDiameterForAge,
              _$identity);

  /// Serializes this IntergrowthFetalGrowtOccipitoFrontalDiameterForAge to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is IntergrowthFetalGrowtOccipitoFrontalDiameterForAge &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.measurementResult, measurementResult) ||
                other.measurementResult == measurementResult));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, age, measurementResult);

  @override
  String toString() {
    return 'IntergrowthFetalGrowtOccipitoFrontalDiameterForAge(age: $age, measurementResult: $measurementResult)';
  }
}

/// @nodoc
abstract mixin class $IntergrowthFetalGrowtOccipitoFrontalDiameterForAgeCopyWith<
    $Res> {
  factory $IntergrowthFetalGrowtOccipitoFrontalDiameterForAgeCopyWith(
          IntergrowthFetalGrowtOccipitoFrontalDiameterForAge value,
          $Res Function(IntergrowthFetalGrowtOccipitoFrontalDiameterForAge)
              _then) =
      _$IntergrowthFetalGrowtOccipitoFrontalDiameterForAgeCopyWithImpl;
  @useResult
  $Res call({Age age, Length measurementResult});

  $AgeCopyWith<$Res> get age;
}

/// @nodoc
class _$IntergrowthFetalGrowtOccipitoFrontalDiameterForAgeCopyWithImpl<$Res>
    implements
        $IntergrowthFetalGrowtOccipitoFrontalDiameterForAgeCopyWith<$Res> {
  _$IntergrowthFetalGrowtOccipitoFrontalDiameterForAgeCopyWithImpl(
      this._self, this._then);

  final IntergrowthFetalGrowtOccipitoFrontalDiameterForAge _self;
  final $Res Function(IntergrowthFetalGrowtOccipitoFrontalDiameterForAge) _then;

  /// Create a copy of IntergrowthFetalGrowtOccipitoFrontalDiameterForAge
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

  /// Create a copy of IntergrowthFetalGrowtOccipitoFrontalDiameterForAge
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
@JsonSerializable()
class _IntergrowthFetalGrowtOccipitoFrontalDiameterForAge
    extends IntergrowthFetalGrowtOccipitoFrontalDiameterForAge {
  _IntergrowthFetalGrowtOccipitoFrontalDiameterForAge(
      {required this.age, required this.measurementResult})
      : super._();
  factory _IntergrowthFetalGrowtOccipitoFrontalDiameterForAge.fromJson(
          Map<String, dynamic> json) =>
      _$IntergrowthFetalGrowtOccipitoFrontalDiameterForAgeFromJson(json);

  @override
  final Age age;
  @override
  final Length measurementResult;

  /// Create a copy of IntergrowthFetalGrowtOccipitoFrontalDiameterForAge
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$IntergrowthFetalGrowtOccipitoFrontalDiameterForAgeCopyWith<
          _IntergrowthFetalGrowtOccipitoFrontalDiameterForAge>
      get copyWith =>
          __$IntergrowthFetalGrowtOccipitoFrontalDiameterForAgeCopyWithImpl<
                  _IntergrowthFetalGrowtOccipitoFrontalDiameterForAge>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$IntergrowthFetalGrowtOccipitoFrontalDiameterForAgeToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _IntergrowthFetalGrowtOccipitoFrontalDiameterForAge &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.measurementResult, measurementResult) ||
                other.measurementResult == measurementResult));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, age, measurementResult);

  @override
  String toString() {
    return 'IntergrowthFetalGrowtOccipitoFrontalDiameterForAge(age: $age, measurementResult: $measurementResult)';
  }
}

/// @nodoc
abstract mixin class _$IntergrowthFetalGrowtOccipitoFrontalDiameterForAgeCopyWith<
        $Res>
    implements
        $IntergrowthFetalGrowtOccipitoFrontalDiameterForAgeCopyWith<$Res> {
  factory _$IntergrowthFetalGrowtOccipitoFrontalDiameterForAgeCopyWith(
          _IntergrowthFetalGrowtOccipitoFrontalDiameterForAge value,
          $Res Function(_IntergrowthFetalGrowtOccipitoFrontalDiameterForAge)
              _then) =
      __$IntergrowthFetalGrowtOccipitoFrontalDiameterForAgeCopyWithImpl;
  @override
  @useResult
  $Res call({Age age, Length measurementResult});

  @override
  $AgeCopyWith<$Res> get age;
}

/// @nodoc
class __$IntergrowthFetalGrowtOccipitoFrontalDiameterForAgeCopyWithImpl<$Res>
    implements
        _$IntergrowthFetalGrowtOccipitoFrontalDiameterForAgeCopyWith<$Res> {
  __$IntergrowthFetalGrowtOccipitoFrontalDiameterForAgeCopyWithImpl(
      this._self, this._then);

  final _IntergrowthFetalGrowtOccipitoFrontalDiameterForAge _self;
  final $Res Function(_IntergrowthFetalGrowtOccipitoFrontalDiameterForAge)
      _then;

  /// Create a copy of IntergrowthFetalGrowtOccipitoFrontalDiameterForAge
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? age = null,
    Object? measurementResult = null,
  }) {
    return _then(_IntergrowthFetalGrowtOccipitoFrontalDiameterForAge(
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

  /// Create a copy of IntergrowthFetalGrowtOccipitoFrontalDiameterForAge
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
mixin _$IntergrowthPretermInfantsPostnatalGrowthHeadCircumferenceForAge {
  Sex get sex;
  Age get age;
  Length get measurementResult;

  /// Create a copy of IntergrowthPretermInfantsPostnatalGrowthHeadCircumferenceForAge
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $IntergrowthPretermInfantsPostnatalGrowthHeadCircumferenceForAgeCopyWith<
          IntergrowthPretermInfantsPostnatalGrowthHeadCircumferenceForAge>
      get copyWith =>
          _$IntergrowthPretermInfantsPostnatalGrowthHeadCircumferenceForAgeCopyWithImpl<
                  IntergrowthPretermInfantsPostnatalGrowthHeadCircumferenceForAge>(
              this
                  as IntergrowthPretermInfantsPostnatalGrowthHeadCircumferenceForAge,
              _$identity);

  /// Serializes this IntergrowthPretermInfantsPostnatalGrowthHeadCircumferenceForAge to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other
                is IntergrowthPretermInfantsPostnatalGrowthHeadCircumferenceForAge &&
            (identical(other.sex, sex) || other.sex == sex) &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.measurementResult, measurementResult) ||
                other.measurementResult == measurementResult));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, sex, age, measurementResult);

  @override
  String toString() {
    return 'IntergrowthPretermInfantsPostnatalGrowthHeadCircumferenceForAge(sex: $sex, age: $age, measurementResult: $measurementResult)';
  }
}

/// @nodoc
abstract mixin class $IntergrowthPretermInfantsPostnatalGrowthHeadCircumferenceForAgeCopyWith<
    $Res> {
  factory $IntergrowthPretermInfantsPostnatalGrowthHeadCircumferenceForAgeCopyWith(
          IntergrowthPretermInfantsPostnatalGrowthHeadCircumferenceForAge value,
          $Res Function(
                  IntergrowthPretermInfantsPostnatalGrowthHeadCircumferenceForAge)
              _then) =
      _$IntergrowthPretermInfantsPostnatalGrowthHeadCircumferenceForAgeCopyWithImpl;
  @useResult
  $Res call({Sex sex, Age age, Length measurementResult});

  $AgeCopyWith<$Res> get age;
}

/// @nodoc
class _$IntergrowthPretermInfantsPostnatalGrowthHeadCircumferenceForAgeCopyWithImpl<
        $Res>
    implements
        $IntergrowthPretermInfantsPostnatalGrowthHeadCircumferenceForAgeCopyWith<
            $Res> {
  _$IntergrowthPretermInfantsPostnatalGrowthHeadCircumferenceForAgeCopyWithImpl(
      this._self, this._then);

  final IntergrowthPretermInfantsPostnatalGrowthHeadCircumferenceForAge _self;
  final $Res Function(
      IntergrowthPretermInfantsPostnatalGrowthHeadCircumferenceForAge) _then;

  /// Create a copy of IntergrowthPretermInfantsPostnatalGrowthHeadCircumferenceForAge
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sex = null,
    Object? age = null,
    Object? measurementResult = null,
  }) {
    return _then(_self.copyWith(
      sex: null == sex
          ? _self.sex
          : sex // ignore: cast_nullable_to_non_nullable
              as Sex,
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

  /// Create a copy of IntergrowthPretermInfantsPostnatalGrowthHeadCircumferenceForAge
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
@JsonSerializable()
class _IntergrowthPretermInfantsPostnatalGrowthHeadCircumferenceForAge
    extends IntergrowthPretermInfantsPostnatalGrowthHeadCircumferenceForAge {
  _IntergrowthPretermInfantsPostnatalGrowthHeadCircumferenceForAge(
      {required this.sex, required this.age, required this.measurementResult})
      : super._();
  factory _IntergrowthPretermInfantsPostnatalGrowthHeadCircumferenceForAge.fromJson(
          Map<String, dynamic> json) =>
      _$IntergrowthPretermInfantsPostnatalGrowthHeadCircumferenceForAgeFromJson(
          json);

  @override
  final Sex sex;
  @override
  final Age age;
  @override
  final Length measurementResult;

  /// Create a copy of IntergrowthPretermInfantsPostnatalGrowthHeadCircumferenceForAge
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$IntergrowthPretermInfantsPostnatalGrowthHeadCircumferenceForAgeCopyWith<
          _IntergrowthPretermInfantsPostnatalGrowthHeadCircumferenceForAge>
      get copyWith =>
          __$IntergrowthPretermInfantsPostnatalGrowthHeadCircumferenceForAgeCopyWithImpl<
                  _IntergrowthPretermInfantsPostnatalGrowthHeadCircumferenceForAge>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$IntergrowthPretermInfantsPostnatalGrowthHeadCircumferenceForAgeToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other
                is _IntergrowthPretermInfantsPostnatalGrowthHeadCircumferenceForAge &&
            (identical(other.sex, sex) || other.sex == sex) &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.measurementResult, measurementResult) ||
                other.measurementResult == measurementResult));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, sex, age, measurementResult);

  @override
  String toString() {
    return 'IntergrowthPretermInfantsPostnatalGrowthHeadCircumferenceForAge(sex: $sex, age: $age, measurementResult: $measurementResult)';
  }
}

/// @nodoc
abstract mixin class _$IntergrowthPretermInfantsPostnatalGrowthHeadCircumferenceForAgeCopyWith<
        $Res>
    implements
        $IntergrowthPretermInfantsPostnatalGrowthHeadCircumferenceForAgeCopyWith<
            $Res> {
  factory _$IntergrowthPretermInfantsPostnatalGrowthHeadCircumferenceForAgeCopyWith(
          _IntergrowthPretermInfantsPostnatalGrowthHeadCircumferenceForAge value,
          $Res Function(
                  _IntergrowthPretermInfantsPostnatalGrowthHeadCircumferenceForAge)
              _then) =
      __$IntergrowthPretermInfantsPostnatalGrowthHeadCircumferenceForAgeCopyWithImpl;
  @override
  @useResult
  $Res call({Sex sex, Age age, Length measurementResult});

  @override
  $AgeCopyWith<$Res> get age;
}

/// @nodoc
class __$IntergrowthPretermInfantsPostnatalGrowthHeadCircumferenceForAgeCopyWithImpl<
        $Res>
    implements
        _$IntergrowthPretermInfantsPostnatalGrowthHeadCircumferenceForAgeCopyWith<
            $Res> {
  __$IntergrowthPretermInfantsPostnatalGrowthHeadCircumferenceForAgeCopyWithImpl(
      this._self, this._then);

  final _IntergrowthPretermInfantsPostnatalGrowthHeadCircumferenceForAge _self;
  final $Res Function(
      _IntergrowthPretermInfantsPostnatalGrowthHeadCircumferenceForAge) _then;

  /// Create a copy of IntergrowthPretermInfantsPostnatalGrowthHeadCircumferenceForAge
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? sex = null,
    Object? age = null,
    Object? measurementResult = null,
  }) {
    return _then(
        _IntergrowthPretermInfantsPostnatalGrowthHeadCircumferenceForAge(
      sex: null == sex
          ? _self.sex
          : sex // ignore: cast_nullable_to_non_nullable
              as Sex,
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

  /// Create a copy of IntergrowthPretermInfantsPostnatalGrowthHeadCircumferenceForAge
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
mixin _$IntergrowthPretermInfantsPostnatalGrowthLengthForAge {
  Sex get sex;
  Age get age;
  Length get measurementResult;

  /// Create a copy of IntergrowthPretermInfantsPostnatalGrowthLengthForAge
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $IntergrowthPretermInfantsPostnatalGrowthLengthForAgeCopyWith<
          IntergrowthPretermInfantsPostnatalGrowthLengthForAge>
      get copyWith =>
          _$IntergrowthPretermInfantsPostnatalGrowthLengthForAgeCopyWithImpl<
                  IntergrowthPretermInfantsPostnatalGrowthLengthForAge>(
              this as IntergrowthPretermInfantsPostnatalGrowthLengthForAge,
              _$identity);

  /// Serializes this IntergrowthPretermInfantsPostnatalGrowthLengthForAge to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is IntergrowthPretermInfantsPostnatalGrowthLengthForAge &&
            (identical(other.sex, sex) || other.sex == sex) &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.measurementResult, measurementResult) ||
                other.measurementResult == measurementResult));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, sex, age, measurementResult);

  @override
  String toString() {
    return 'IntergrowthPretermInfantsPostnatalGrowthLengthForAge(sex: $sex, age: $age, measurementResult: $measurementResult)';
  }
}

/// @nodoc
abstract mixin class $IntergrowthPretermInfantsPostnatalGrowthLengthForAgeCopyWith<
    $Res> {
  factory $IntergrowthPretermInfantsPostnatalGrowthLengthForAgeCopyWith(
          IntergrowthPretermInfantsPostnatalGrowthLengthForAge value,
          $Res Function(IntergrowthPretermInfantsPostnatalGrowthLengthForAge)
              _then) =
      _$IntergrowthPretermInfantsPostnatalGrowthLengthForAgeCopyWithImpl;
  @useResult
  $Res call({Sex sex, Age age, Length measurementResult});

  $AgeCopyWith<$Res> get age;
}

/// @nodoc
class _$IntergrowthPretermInfantsPostnatalGrowthLengthForAgeCopyWithImpl<$Res>
    implements
        $IntergrowthPretermInfantsPostnatalGrowthLengthForAgeCopyWith<$Res> {
  _$IntergrowthPretermInfantsPostnatalGrowthLengthForAgeCopyWithImpl(
      this._self, this._then);

  final IntergrowthPretermInfantsPostnatalGrowthLengthForAge _self;
  final $Res Function(IntergrowthPretermInfantsPostnatalGrowthLengthForAge)
      _then;

  /// Create a copy of IntergrowthPretermInfantsPostnatalGrowthLengthForAge
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sex = null,
    Object? age = null,
    Object? measurementResult = null,
  }) {
    return _then(_self.copyWith(
      sex: null == sex
          ? _self.sex
          : sex // ignore: cast_nullable_to_non_nullable
              as Sex,
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

  /// Create a copy of IntergrowthPretermInfantsPostnatalGrowthLengthForAge
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
@JsonSerializable()
class _IntergrowthPretermInfantsPostnatalGrowthLengthForAge
    extends IntergrowthPretermInfantsPostnatalGrowthLengthForAge {
  _IntergrowthPretermInfantsPostnatalGrowthLengthForAge(
      {required this.sex, required this.age, required this.measurementResult})
      : super._();
  factory _IntergrowthPretermInfantsPostnatalGrowthLengthForAge.fromJson(
          Map<String, dynamic> json) =>
      _$IntergrowthPretermInfantsPostnatalGrowthLengthForAgeFromJson(json);

  @override
  final Sex sex;
  @override
  final Age age;
  @override
  final Length measurementResult;

  /// Create a copy of IntergrowthPretermInfantsPostnatalGrowthLengthForAge
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$IntergrowthPretermInfantsPostnatalGrowthLengthForAgeCopyWith<
          _IntergrowthPretermInfantsPostnatalGrowthLengthForAge>
      get copyWith =>
          __$IntergrowthPretermInfantsPostnatalGrowthLengthForAgeCopyWithImpl<
                  _IntergrowthPretermInfantsPostnatalGrowthLengthForAge>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$IntergrowthPretermInfantsPostnatalGrowthLengthForAgeToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _IntergrowthPretermInfantsPostnatalGrowthLengthForAge &&
            (identical(other.sex, sex) || other.sex == sex) &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.measurementResult, measurementResult) ||
                other.measurementResult == measurementResult));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, sex, age, measurementResult);

  @override
  String toString() {
    return 'IntergrowthPretermInfantsPostnatalGrowthLengthForAge(sex: $sex, age: $age, measurementResult: $measurementResult)';
  }
}

/// @nodoc
abstract mixin class _$IntergrowthPretermInfantsPostnatalGrowthLengthForAgeCopyWith<
        $Res>
    implements
        $IntergrowthPretermInfantsPostnatalGrowthLengthForAgeCopyWith<$Res> {
  factory _$IntergrowthPretermInfantsPostnatalGrowthLengthForAgeCopyWith(
          _IntergrowthPretermInfantsPostnatalGrowthLengthForAge value,
          $Res Function(_IntergrowthPretermInfantsPostnatalGrowthLengthForAge)
              _then) =
      __$IntergrowthPretermInfantsPostnatalGrowthLengthForAgeCopyWithImpl;
  @override
  @useResult
  $Res call({Sex sex, Age age, Length measurementResult});

  @override
  $AgeCopyWith<$Res> get age;
}

/// @nodoc
class __$IntergrowthPretermInfantsPostnatalGrowthLengthForAgeCopyWithImpl<$Res>
    implements
        _$IntergrowthPretermInfantsPostnatalGrowthLengthForAgeCopyWith<$Res> {
  __$IntergrowthPretermInfantsPostnatalGrowthLengthForAgeCopyWithImpl(
      this._self, this._then);

  final _IntergrowthPretermInfantsPostnatalGrowthLengthForAge _self;
  final $Res Function(_IntergrowthPretermInfantsPostnatalGrowthLengthForAge)
      _then;

  /// Create a copy of IntergrowthPretermInfantsPostnatalGrowthLengthForAge
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? sex = null,
    Object? age = null,
    Object? measurementResult = null,
  }) {
    return _then(_IntergrowthPretermInfantsPostnatalGrowthLengthForAge(
      sex: null == sex
          ? _self.sex
          : sex // ignore: cast_nullable_to_non_nullable
              as Sex,
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

  /// Create a copy of IntergrowthPretermInfantsPostnatalGrowthLengthForAge
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
mixin _$IntergrowthPretermInfantsPostnatalGrowthWeightForAge {
  Sex get sex;
  Age get age;
  Mass get measurementResult;

  /// Create a copy of IntergrowthPretermInfantsPostnatalGrowthWeightForAge
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $IntergrowthPretermInfantsPostnatalGrowthWeightForAgeCopyWith<
          IntergrowthPretermInfantsPostnatalGrowthWeightForAge>
      get copyWith =>
          _$IntergrowthPretermInfantsPostnatalGrowthWeightForAgeCopyWithImpl<
                  IntergrowthPretermInfantsPostnatalGrowthWeightForAge>(
              this as IntergrowthPretermInfantsPostnatalGrowthWeightForAge,
              _$identity);

  /// Serializes this IntergrowthPretermInfantsPostnatalGrowthWeightForAge to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is IntergrowthPretermInfantsPostnatalGrowthWeightForAge &&
            (identical(other.sex, sex) || other.sex == sex) &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.measurementResult, measurementResult) ||
                other.measurementResult == measurementResult));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, sex, age, measurementResult);

  @override
  String toString() {
    return 'IntergrowthPretermInfantsPostnatalGrowthWeightForAge(sex: $sex, age: $age, measurementResult: $measurementResult)';
  }
}

/// @nodoc
abstract mixin class $IntergrowthPretermInfantsPostnatalGrowthWeightForAgeCopyWith<
    $Res> {
  factory $IntergrowthPretermInfantsPostnatalGrowthWeightForAgeCopyWith(
          IntergrowthPretermInfantsPostnatalGrowthWeightForAge value,
          $Res Function(IntergrowthPretermInfantsPostnatalGrowthWeightForAge)
              _then) =
      _$IntergrowthPretermInfantsPostnatalGrowthWeightForAgeCopyWithImpl;
  @useResult
  $Res call({Sex sex, Age age, Mass measurementResult});

  $AgeCopyWith<$Res> get age;
}

/// @nodoc
class _$IntergrowthPretermInfantsPostnatalGrowthWeightForAgeCopyWithImpl<$Res>
    implements
        $IntergrowthPretermInfantsPostnatalGrowthWeightForAgeCopyWith<$Res> {
  _$IntergrowthPretermInfantsPostnatalGrowthWeightForAgeCopyWithImpl(
      this._self, this._then);

  final IntergrowthPretermInfantsPostnatalGrowthWeightForAge _self;
  final $Res Function(IntergrowthPretermInfantsPostnatalGrowthWeightForAge)
      _then;

  /// Create a copy of IntergrowthPretermInfantsPostnatalGrowthWeightForAge
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sex = null,
    Object? age = null,
    Object? measurementResult = null,
  }) {
    return _then(_self.copyWith(
      sex: null == sex
          ? _self.sex
          : sex // ignore: cast_nullable_to_non_nullable
              as Sex,
      age: null == age
          ? _self.age
          : age // ignore: cast_nullable_to_non_nullable
              as Age,
      measurementResult: null == measurementResult
          ? _self.measurementResult
          : measurementResult // ignore: cast_nullable_to_non_nullable
              as Mass,
    ));
  }

  /// Create a copy of IntergrowthPretermInfantsPostnatalGrowthWeightForAge
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
@JsonSerializable()
class _IntergrowthPretermInfantsPostnatalGrowthWeightForAge
    extends IntergrowthPretermInfantsPostnatalGrowthWeightForAge {
  _IntergrowthPretermInfantsPostnatalGrowthWeightForAge(
      {required this.sex, required this.age, required this.measurementResult})
      : super._();
  factory _IntergrowthPretermInfantsPostnatalGrowthWeightForAge.fromJson(
          Map<String, dynamic> json) =>
      _$IntergrowthPretermInfantsPostnatalGrowthWeightForAgeFromJson(json);

  @override
  final Sex sex;
  @override
  final Age age;
  @override
  final Mass measurementResult;

  /// Create a copy of IntergrowthPretermInfantsPostnatalGrowthWeightForAge
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$IntergrowthPretermInfantsPostnatalGrowthWeightForAgeCopyWith<
          _IntergrowthPretermInfantsPostnatalGrowthWeightForAge>
      get copyWith =>
          __$IntergrowthPretermInfantsPostnatalGrowthWeightForAgeCopyWithImpl<
                  _IntergrowthPretermInfantsPostnatalGrowthWeightForAge>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$IntergrowthPretermInfantsPostnatalGrowthWeightForAgeToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _IntergrowthPretermInfantsPostnatalGrowthWeightForAge &&
            (identical(other.sex, sex) || other.sex == sex) &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.measurementResult, measurementResult) ||
                other.measurementResult == measurementResult));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, sex, age, measurementResult);

  @override
  String toString() {
    return 'IntergrowthPretermInfantsPostnatalGrowthWeightForAge(sex: $sex, age: $age, measurementResult: $measurementResult)';
  }
}

/// @nodoc
abstract mixin class _$IntergrowthPretermInfantsPostnatalGrowthWeightForAgeCopyWith<
        $Res>
    implements
        $IntergrowthPretermInfantsPostnatalGrowthWeightForAgeCopyWith<$Res> {
  factory _$IntergrowthPretermInfantsPostnatalGrowthWeightForAgeCopyWith(
          _IntergrowthPretermInfantsPostnatalGrowthWeightForAge value,
          $Res Function(_IntergrowthPretermInfantsPostnatalGrowthWeightForAge)
              _then) =
      __$IntergrowthPretermInfantsPostnatalGrowthWeightForAgeCopyWithImpl;
  @override
  @useResult
  $Res call({Sex sex, Age age, Mass measurementResult});

  @override
  $AgeCopyWith<$Res> get age;
}

/// @nodoc
class __$IntergrowthPretermInfantsPostnatalGrowthWeightForAgeCopyWithImpl<$Res>
    implements
        _$IntergrowthPretermInfantsPostnatalGrowthWeightForAgeCopyWith<$Res> {
  __$IntergrowthPretermInfantsPostnatalGrowthWeightForAgeCopyWithImpl(
      this._self, this._then);

  final _IntergrowthPretermInfantsPostnatalGrowthWeightForAge _self;
  final $Res Function(_IntergrowthPretermInfantsPostnatalGrowthWeightForAge)
      _then;

  /// Create a copy of IntergrowthPretermInfantsPostnatalGrowthWeightForAge
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? sex = null,
    Object? age = null,
    Object? measurementResult = null,
  }) {
    return _then(_IntergrowthPretermInfantsPostnatalGrowthWeightForAge(
      sex: null == sex
          ? _self.sex
          : sex // ignore: cast_nullable_to_non_nullable
              as Sex,
      age: null == age
          ? _self.age
          : age // ignore: cast_nullable_to_non_nullable
              as Age,
      measurementResult: null == measurementResult
          ? _self.measurementResult
          : measurementResult // ignore: cast_nullable_to_non_nullable
              as Mass,
    ));
  }

  /// Create a copy of IntergrowthPretermInfantsPostnatalGrowthWeightForAge
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
mixin _$IntergrowthSymphysisFundalHeightForAge {
  Age get age;
  Length get length;

  /// Create a copy of IntergrowthSymphysisFundalHeightForAge
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $IntergrowthSymphysisFundalHeightForAgeCopyWith<
          IntergrowthSymphysisFundalHeightForAge>
      get copyWith => _$IntergrowthSymphysisFundalHeightForAgeCopyWithImpl<
              IntergrowthSymphysisFundalHeightForAge>(
          this as IntergrowthSymphysisFundalHeightForAge, _$identity);

  /// Serializes this IntergrowthSymphysisFundalHeightForAge to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is IntergrowthSymphysisFundalHeightForAge &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.length, length) || other.length == length));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, age, length);

  @override
  String toString() {
    return 'IntergrowthSymphysisFundalHeightForAge(age: $age, length: $length)';
  }
}

/// @nodoc
abstract mixin class $IntergrowthSymphysisFundalHeightForAgeCopyWith<$Res> {
  factory $IntergrowthSymphysisFundalHeightForAgeCopyWith(
          IntergrowthSymphysisFundalHeightForAge value,
          $Res Function(IntergrowthSymphysisFundalHeightForAge) _then) =
      _$IntergrowthSymphysisFundalHeightForAgeCopyWithImpl;
  @useResult
  $Res call({Age age, Length length});

  $AgeCopyWith<$Res> get age;
}

/// @nodoc
class _$IntergrowthSymphysisFundalHeightForAgeCopyWithImpl<$Res>
    implements $IntergrowthSymphysisFundalHeightForAgeCopyWith<$Res> {
  _$IntergrowthSymphysisFundalHeightForAgeCopyWithImpl(this._self, this._then);

  final IntergrowthSymphysisFundalHeightForAge _self;
  final $Res Function(IntergrowthSymphysisFundalHeightForAge) _then;

  /// Create a copy of IntergrowthSymphysisFundalHeightForAge
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? age = null,
    Object? length = null,
  }) {
    return _then(_self.copyWith(
      age: null == age
          ? _self.age
          : age // ignore: cast_nullable_to_non_nullable
              as Age,
      length: null == length
          ? _self.length
          : length // ignore: cast_nullable_to_non_nullable
              as Length,
    ));
  }

  /// Create a copy of IntergrowthSymphysisFundalHeightForAge
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
@JsonSerializable()
class _IntergrowthSymphysisFundalHeightForAge
    extends IntergrowthSymphysisFundalHeightForAge {
  _IntergrowthSymphysisFundalHeightForAge(
      {required this.age, required this.length})
      : super._();
  factory _IntergrowthSymphysisFundalHeightForAge.fromJson(
          Map<String, dynamic> json) =>
      _$IntergrowthSymphysisFundalHeightForAgeFromJson(json);

  @override
  final Age age;
  @override
  final Length length;

  /// Create a copy of IntergrowthSymphysisFundalHeightForAge
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$IntergrowthSymphysisFundalHeightForAgeCopyWith<
          _IntergrowthSymphysisFundalHeightForAge>
      get copyWith => __$IntergrowthSymphysisFundalHeightForAgeCopyWithImpl<
          _IntergrowthSymphysisFundalHeightForAge>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$IntergrowthSymphysisFundalHeightForAgeToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _IntergrowthSymphysisFundalHeightForAge &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.length, length) || other.length == length));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, age, length);

  @override
  String toString() {
    return 'IntergrowthSymphysisFundalHeightForAge(age: $age, length: $length)';
  }
}

/// @nodoc
abstract mixin class _$IntergrowthSymphysisFundalHeightForAgeCopyWith<$Res>
    implements $IntergrowthSymphysisFundalHeightForAgeCopyWith<$Res> {
  factory _$IntergrowthSymphysisFundalHeightForAgeCopyWith(
          _IntergrowthSymphysisFundalHeightForAge value,
          $Res Function(_IntergrowthSymphysisFundalHeightForAge) _then) =
      __$IntergrowthSymphysisFundalHeightForAgeCopyWithImpl;
  @override
  @useResult
  $Res call({Age age, Length length});

  @override
  $AgeCopyWith<$Res> get age;
}

/// @nodoc
class __$IntergrowthSymphysisFundalHeightForAgeCopyWithImpl<$Res>
    implements _$IntergrowthSymphysisFundalHeightForAgeCopyWith<$Res> {
  __$IntergrowthSymphysisFundalHeightForAgeCopyWithImpl(this._self, this._then);

  final _IntergrowthSymphysisFundalHeightForAge _self;
  final $Res Function(_IntergrowthSymphysisFundalHeightForAge) _then;

  /// Create a copy of IntergrowthSymphysisFundalHeightForAge
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? age = null,
    Object? length = null,
  }) {
    return _then(_IntergrowthSymphysisFundalHeightForAge(
      age: null == age
          ? _self.age
          : age // ignore: cast_nullable_to_non_nullable
              as Age,
      length: null == length
          ? _self.length
          : length // ignore: cast_nullable_to_non_nullable
              as Length,
    ));
  }

  /// Create a copy of IntergrowthSymphysisFundalHeightForAge
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
mixin _$IntergrowthGestationalWeightGainForAge {
  Sex get sex;
  Age get age;
  Mass get measurementResult;

  /// Create a copy of IntergrowthGestationalWeightGainForAge
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $IntergrowthGestationalWeightGainForAgeCopyWith<
          IntergrowthGestationalWeightGainForAge>
      get copyWith => _$IntergrowthGestationalWeightGainForAgeCopyWithImpl<
              IntergrowthGestationalWeightGainForAge>(
          this as IntergrowthGestationalWeightGainForAge, _$identity);

  /// Serializes this IntergrowthGestationalWeightGainForAge to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is IntergrowthGestationalWeightGainForAge &&
            (identical(other.sex, sex) || other.sex == sex) &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.measurementResult, measurementResult) ||
                other.measurementResult == measurementResult));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, sex, age, measurementResult);

  @override
  String toString() {
    return 'IntergrowthGestationalWeightGainForAge(sex: $sex, age: $age, measurementResult: $measurementResult)';
  }
}

/// @nodoc
abstract mixin class $IntergrowthGestationalWeightGainForAgeCopyWith<$Res> {
  factory $IntergrowthGestationalWeightGainForAgeCopyWith(
          IntergrowthGestationalWeightGainForAge value,
          $Res Function(IntergrowthGestationalWeightGainForAge) _then) =
      _$IntergrowthGestationalWeightGainForAgeCopyWithImpl;
  @useResult
  $Res call({Sex sex, Age age, Mass measurementResult});

  $AgeCopyWith<$Res> get age;
}

/// @nodoc
class _$IntergrowthGestationalWeightGainForAgeCopyWithImpl<$Res>
    implements $IntergrowthGestationalWeightGainForAgeCopyWith<$Res> {
  _$IntergrowthGestationalWeightGainForAgeCopyWithImpl(this._self, this._then);

  final IntergrowthGestationalWeightGainForAge _self;
  final $Res Function(IntergrowthGestationalWeightGainForAge) _then;

  /// Create a copy of IntergrowthGestationalWeightGainForAge
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sex = null,
    Object? age = null,
    Object? measurementResult = null,
  }) {
    return _then(_self.copyWith(
      sex: null == sex
          ? _self.sex
          : sex // ignore: cast_nullable_to_non_nullable
              as Sex,
      age: null == age
          ? _self.age
          : age // ignore: cast_nullable_to_non_nullable
              as Age,
      measurementResult: null == measurementResult
          ? _self.measurementResult
          : measurementResult // ignore: cast_nullable_to_non_nullable
              as Mass,
    ));
  }

  /// Create a copy of IntergrowthGestationalWeightGainForAge
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
@JsonSerializable()
class _IntergrowthGestationalWeightGainForAge
    extends IntergrowthGestationalWeightGainForAge {
  _IntergrowthGestationalWeightGainForAge(
      {required this.sex, required this.age, required this.measurementResult})
      : super._();
  factory _IntergrowthGestationalWeightGainForAge.fromJson(
          Map<String, dynamic> json) =>
      _$IntergrowthGestationalWeightGainForAgeFromJson(json);

  @override
  final Sex sex;
  @override
  final Age age;
  @override
  final Mass measurementResult;

  /// Create a copy of IntergrowthGestationalWeightGainForAge
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$IntergrowthGestationalWeightGainForAgeCopyWith<
          _IntergrowthGestationalWeightGainForAge>
      get copyWith => __$IntergrowthGestationalWeightGainForAgeCopyWithImpl<
          _IntergrowthGestationalWeightGainForAge>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$IntergrowthGestationalWeightGainForAgeToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _IntergrowthGestationalWeightGainForAge &&
            (identical(other.sex, sex) || other.sex == sex) &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.measurementResult, measurementResult) ||
                other.measurementResult == measurementResult));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, sex, age, measurementResult);

  @override
  String toString() {
    return 'IntergrowthGestationalWeightGainForAge(sex: $sex, age: $age, measurementResult: $measurementResult)';
  }
}

/// @nodoc
abstract mixin class _$IntergrowthGestationalWeightGainForAgeCopyWith<$Res>
    implements $IntergrowthGestationalWeightGainForAgeCopyWith<$Res> {
  factory _$IntergrowthGestationalWeightGainForAgeCopyWith(
          _IntergrowthGestationalWeightGainForAge value,
          $Res Function(_IntergrowthGestationalWeightGainForAge) _then) =
      __$IntergrowthGestationalWeightGainForAgeCopyWithImpl;
  @override
  @useResult
  $Res call({Sex sex, Age age, Mass measurementResult});

  @override
  $AgeCopyWith<$Res> get age;
}

/// @nodoc
class __$IntergrowthGestationalWeightGainForAgeCopyWithImpl<$Res>
    implements _$IntergrowthGestationalWeightGainForAgeCopyWith<$Res> {
  __$IntergrowthGestationalWeightGainForAgeCopyWithImpl(this._self, this._then);

  final _IntergrowthGestationalWeightGainForAge _self;
  final $Res Function(_IntergrowthGestationalWeightGainForAge) _then;

  /// Create a copy of IntergrowthGestationalWeightGainForAge
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? sex = null,
    Object? age = null,
    Object? measurementResult = null,
  }) {
    return _then(_IntergrowthGestationalWeightGainForAge(
      sex: null == sex
          ? _self.sex
          : sex // ignore: cast_nullable_to_non_nullable
              as Sex,
      age: null == age
          ? _self.age
          : age // ignore: cast_nullable_to_non_nullable
              as Age,
      measurementResult: null == measurementResult
          ? _self.measurementResult
          : measurementResult // ignore: cast_nullable_to_non_nullable
              as Mass,
    ));
  }

  /// Create a copy of IntergrowthGestationalWeightGainForAge
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
mixin _$IntergrowthFetalCrownRumpLengthForAge {
  Age get age;
  Length get length;

  /// Create a copy of IntergrowthFetalCrownRumpLengthForAge
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $IntergrowthFetalCrownRumpLengthForAgeCopyWith<
          IntergrowthFetalCrownRumpLengthForAge>
      get copyWith => _$IntergrowthFetalCrownRumpLengthForAgeCopyWithImpl<
              IntergrowthFetalCrownRumpLengthForAge>(
          this as IntergrowthFetalCrownRumpLengthForAge, _$identity);

  /// Serializes this IntergrowthFetalCrownRumpLengthForAge to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is IntergrowthFetalCrownRumpLengthForAge &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.length, length) || other.length == length));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, age, length);

  @override
  String toString() {
    return 'IntergrowthFetalCrownRumpLengthForAge(age: $age, length: $length)';
  }
}

/// @nodoc
abstract mixin class $IntergrowthFetalCrownRumpLengthForAgeCopyWith<$Res> {
  factory $IntergrowthFetalCrownRumpLengthForAgeCopyWith(
          IntergrowthFetalCrownRumpLengthForAge value,
          $Res Function(IntergrowthFetalCrownRumpLengthForAge) _then) =
      _$IntergrowthFetalCrownRumpLengthForAgeCopyWithImpl;
  @useResult
  $Res call({Age age, Length length});

  $AgeCopyWith<$Res> get age;
}

/// @nodoc
class _$IntergrowthFetalCrownRumpLengthForAgeCopyWithImpl<$Res>
    implements $IntergrowthFetalCrownRumpLengthForAgeCopyWith<$Res> {
  _$IntergrowthFetalCrownRumpLengthForAgeCopyWithImpl(this._self, this._then);

  final IntergrowthFetalCrownRumpLengthForAge _self;
  final $Res Function(IntergrowthFetalCrownRumpLengthForAge) _then;

  /// Create a copy of IntergrowthFetalCrownRumpLengthForAge
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? age = null,
    Object? length = null,
  }) {
    return _then(_self.copyWith(
      age: null == age
          ? _self.age
          : age // ignore: cast_nullable_to_non_nullable
              as Age,
      length: null == length
          ? _self.length
          : length // ignore: cast_nullable_to_non_nullable
              as Length,
    ));
  }

  /// Create a copy of IntergrowthFetalCrownRumpLengthForAge
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
@JsonSerializable()
class _IntergrowthFetalCrownRumpLengthForAge
    extends IntergrowthFetalCrownRumpLengthForAge {
  _IntergrowthFetalCrownRumpLengthForAge(
      {required this.age, required this.length})
      : super._();
  factory _IntergrowthFetalCrownRumpLengthForAge.fromJson(
          Map<String, dynamic> json) =>
      _$IntergrowthFetalCrownRumpLengthForAgeFromJson(json);

  @override
  final Age age;
  @override
  final Length length;

  /// Create a copy of IntergrowthFetalCrownRumpLengthForAge
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$IntergrowthFetalCrownRumpLengthForAgeCopyWith<
          _IntergrowthFetalCrownRumpLengthForAge>
      get copyWith => __$IntergrowthFetalCrownRumpLengthForAgeCopyWithImpl<
          _IntergrowthFetalCrownRumpLengthForAge>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$IntergrowthFetalCrownRumpLengthForAgeToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _IntergrowthFetalCrownRumpLengthForAge &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.length, length) || other.length == length));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, age, length);

  @override
  String toString() {
    return 'IntergrowthFetalCrownRumpLengthForAge(age: $age, length: $length)';
  }
}

/// @nodoc
abstract mixin class _$IntergrowthFetalCrownRumpLengthForAgeCopyWith<$Res>
    implements $IntergrowthFetalCrownRumpLengthForAgeCopyWith<$Res> {
  factory _$IntergrowthFetalCrownRumpLengthForAgeCopyWith(
          _IntergrowthFetalCrownRumpLengthForAge value,
          $Res Function(_IntergrowthFetalCrownRumpLengthForAge) _then) =
      __$IntergrowthFetalCrownRumpLengthForAgeCopyWithImpl;
  @override
  @useResult
  $Res call({Age age, Length length});

  @override
  $AgeCopyWith<$Res> get age;
}

/// @nodoc
class __$IntergrowthFetalCrownRumpLengthForAgeCopyWithImpl<$Res>
    implements _$IntergrowthFetalCrownRumpLengthForAgeCopyWith<$Res> {
  __$IntergrowthFetalCrownRumpLengthForAgeCopyWithImpl(this._self, this._then);

  final _IntergrowthFetalCrownRumpLengthForAge _self;
  final $Res Function(_IntergrowthFetalCrownRumpLengthForAge) _then;

  /// Create a copy of IntergrowthFetalCrownRumpLengthForAge
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? age = null,
    Object? length = null,
  }) {
    return _then(_IntergrowthFetalCrownRumpLengthForAge(
      age: null == age
          ? _self.age
          : age // ignore: cast_nullable_to_non_nullable
              as Age,
      length: null == length
          ? _self.length
          : length // ignore: cast_nullable_to_non_nullable
              as Length,
    ));
  }

  /// Create a copy of IntergrowthFetalCrownRumpLengthForAge
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
