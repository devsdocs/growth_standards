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
mixin _$NewbornBirthWeightForAge {
  Sex get sex;
  Age get age;
  Mass get measurementResult;

  /// Create a copy of NewbornBirthWeightForAge
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $NewbornBirthWeightForAgeCopyWith<NewbornBirthWeightForAge> get copyWith =>
      _$NewbornBirthWeightForAgeCopyWithImpl<NewbornBirthWeightForAge>(
          this as NewbornBirthWeightForAge, _$identity);

  /// Serializes this NewbornBirthWeightForAge to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is NewbornBirthWeightForAge &&
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
    return 'NewbornBirthWeightForAge(sex: $sex, age: $age, measurementResult: $measurementResult)';
  }
}

/// @nodoc
abstract mixin class $NewbornBirthWeightForAgeCopyWith<$Res> {
  factory $NewbornBirthWeightForAgeCopyWith(NewbornBirthWeightForAge value,
          $Res Function(NewbornBirthWeightForAge) _then) =
      _$NewbornBirthWeightForAgeCopyWithImpl;
  @useResult
  $Res call({Sex sex, Age age, Mass measurementResult});

  $AgeCopyWith<$Res> get age;
}

/// @nodoc
class _$NewbornBirthWeightForAgeCopyWithImpl<$Res>
    implements $NewbornBirthWeightForAgeCopyWith<$Res> {
  _$NewbornBirthWeightForAgeCopyWithImpl(this._self, this._then);

  final NewbornBirthWeightForAge _self;
  final $Res Function(NewbornBirthWeightForAge) _then;

  /// Create a copy of NewbornBirthWeightForAge
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

  /// Create a copy of NewbornBirthWeightForAge
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
class _NewbornBirthWeightForAge extends NewbornBirthWeightForAge {
  _NewbornBirthWeightForAge(
      {required this.sex, required this.age, required this.measurementResult})
      : super._();
  factory _NewbornBirthWeightForAge.fromJson(Map<String, dynamic> json) =>
      _$NewbornBirthWeightForAgeFromJson(json);

  @override
  final Sex sex;
  @override
  final Age age;
  @override
  final Mass measurementResult;

  /// Create a copy of NewbornBirthWeightForAge
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$NewbornBirthWeightForAgeCopyWith<_NewbornBirthWeightForAge> get copyWith =>
      __$NewbornBirthWeightForAgeCopyWithImpl<_NewbornBirthWeightForAge>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$NewbornBirthWeightForAgeToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NewbornBirthWeightForAge &&
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
    return 'NewbornBirthWeightForAge(sex: $sex, age: $age, measurementResult: $measurementResult)';
  }
}

/// @nodoc
abstract mixin class _$NewbornBirthWeightForAgeCopyWith<$Res>
    implements $NewbornBirthWeightForAgeCopyWith<$Res> {
  factory _$NewbornBirthWeightForAgeCopyWith(_NewbornBirthWeightForAge value,
          $Res Function(_NewbornBirthWeightForAge) _then) =
      __$NewbornBirthWeightForAgeCopyWithImpl;
  @override
  @useResult
  $Res call({Sex sex, Age age, Mass measurementResult});

  @override
  $AgeCopyWith<$Res> get age;
}

/// @nodoc
class __$NewbornBirthWeightForAgeCopyWithImpl<$Res>
    implements _$NewbornBirthWeightForAgeCopyWith<$Res> {
  __$NewbornBirthWeightForAgeCopyWithImpl(this._self, this._then);

  final _NewbornBirthWeightForAge _self;
  final $Res Function(_NewbornBirthWeightForAge) _then;

  /// Create a copy of NewbornBirthWeightForAge
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? sex = null,
    Object? age = null,
    Object? measurementResult = null,
  }) {
    return _then(_NewbornBirthWeightForAge(
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

  /// Create a copy of NewbornBirthWeightForAge
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
mixin _$NewbornBirthHeadCircumferenceForAge {
  Sex get sex;
  Age get age;
  Length get measurementResult;

  /// Create a copy of NewbornBirthHeadCircumferenceForAge
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $NewbornBirthHeadCircumferenceForAgeCopyWith<
          NewbornBirthHeadCircumferenceForAge>
      get copyWith => _$NewbornBirthHeadCircumferenceForAgeCopyWithImpl<
              NewbornBirthHeadCircumferenceForAge>(
          this as NewbornBirthHeadCircumferenceForAge, _$identity);

  /// Serializes this NewbornBirthHeadCircumferenceForAge to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is NewbornBirthHeadCircumferenceForAge &&
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
    return 'NewbornBirthHeadCircumferenceForAge(sex: $sex, age: $age, measurementResult: $measurementResult)';
  }
}

/// @nodoc
abstract mixin class $NewbornBirthHeadCircumferenceForAgeCopyWith<$Res> {
  factory $NewbornBirthHeadCircumferenceForAgeCopyWith(
          NewbornBirthHeadCircumferenceForAge value,
          $Res Function(NewbornBirthHeadCircumferenceForAge) _then) =
      _$NewbornBirthHeadCircumferenceForAgeCopyWithImpl;
  @useResult
  $Res call({Sex sex, Age age, Length measurementResult});

  $AgeCopyWith<$Res> get age;
}

/// @nodoc
class _$NewbornBirthHeadCircumferenceForAgeCopyWithImpl<$Res>
    implements $NewbornBirthHeadCircumferenceForAgeCopyWith<$Res> {
  _$NewbornBirthHeadCircumferenceForAgeCopyWithImpl(this._self, this._then);

  final NewbornBirthHeadCircumferenceForAge _self;
  final $Res Function(NewbornBirthHeadCircumferenceForAge) _then;

  /// Create a copy of NewbornBirthHeadCircumferenceForAge
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

  /// Create a copy of NewbornBirthHeadCircumferenceForAge
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
class _NewbornBirthHeadCircumferenceForAge
    extends NewbornBirthHeadCircumferenceForAge {
  _NewbornBirthHeadCircumferenceForAge(
      {required this.sex, required this.age, required this.measurementResult})
      : super._();
  factory _NewbornBirthHeadCircumferenceForAge.fromJson(
          Map<String, dynamic> json) =>
      _$NewbornBirthHeadCircumferenceForAgeFromJson(json);

  @override
  final Sex sex;
  @override
  final Age age;
  @override
  final Length measurementResult;

  /// Create a copy of NewbornBirthHeadCircumferenceForAge
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$NewbornBirthHeadCircumferenceForAgeCopyWith<
          _NewbornBirthHeadCircumferenceForAge>
      get copyWith => __$NewbornBirthHeadCircumferenceForAgeCopyWithImpl<
          _NewbornBirthHeadCircumferenceForAge>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$NewbornBirthHeadCircumferenceForAgeToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NewbornBirthHeadCircumferenceForAge &&
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
    return 'NewbornBirthHeadCircumferenceForAge(sex: $sex, age: $age, measurementResult: $measurementResult)';
  }
}

/// @nodoc
abstract mixin class _$NewbornBirthHeadCircumferenceForAgeCopyWith<$Res>
    implements $NewbornBirthHeadCircumferenceForAgeCopyWith<$Res> {
  factory _$NewbornBirthHeadCircumferenceForAgeCopyWith(
          _NewbornBirthHeadCircumferenceForAge value,
          $Res Function(_NewbornBirthHeadCircumferenceForAge) _then) =
      __$NewbornBirthHeadCircumferenceForAgeCopyWithImpl;
  @override
  @useResult
  $Res call({Sex sex, Age age, Length measurementResult});

  @override
  $AgeCopyWith<$Res> get age;
}

/// @nodoc
class __$NewbornBirthHeadCircumferenceForAgeCopyWithImpl<$Res>
    implements _$NewbornBirthHeadCircumferenceForAgeCopyWith<$Res> {
  __$NewbornBirthHeadCircumferenceForAgeCopyWithImpl(this._self, this._then);

  final _NewbornBirthHeadCircumferenceForAge _self;
  final $Res Function(_NewbornBirthHeadCircumferenceForAge) _then;

  /// Create a copy of NewbornBirthHeadCircumferenceForAge
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? sex = null,
    Object? age = null,
    Object? measurementResult = null,
  }) {
    return _then(_NewbornBirthHeadCircumferenceForAge(
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

  /// Create a copy of NewbornBirthHeadCircumferenceForAge
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
mixin _$NewbornBirthLengthForAge {
  Sex get sex;
  Age get age;
  Length get measurementResult;

  /// Create a copy of NewbornBirthLengthForAge
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $NewbornBirthLengthForAgeCopyWith<NewbornBirthLengthForAge> get copyWith =>
      _$NewbornBirthLengthForAgeCopyWithImpl<NewbornBirthLengthForAge>(
          this as NewbornBirthLengthForAge, _$identity);

  /// Serializes this NewbornBirthLengthForAge to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is NewbornBirthLengthForAge &&
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
    return 'NewbornBirthLengthForAge(sex: $sex, age: $age, measurementResult: $measurementResult)';
  }
}

/// @nodoc
abstract mixin class $NewbornBirthLengthForAgeCopyWith<$Res> {
  factory $NewbornBirthLengthForAgeCopyWith(NewbornBirthLengthForAge value,
          $Res Function(NewbornBirthLengthForAge) _then) =
      _$NewbornBirthLengthForAgeCopyWithImpl;
  @useResult
  $Res call({Sex sex, Age age, Length measurementResult});

  $AgeCopyWith<$Res> get age;
}

/// @nodoc
class _$NewbornBirthLengthForAgeCopyWithImpl<$Res>
    implements $NewbornBirthLengthForAgeCopyWith<$Res> {
  _$NewbornBirthLengthForAgeCopyWithImpl(this._self, this._then);

  final NewbornBirthLengthForAge _self;
  final $Res Function(NewbornBirthLengthForAge) _then;

  /// Create a copy of NewbornBirthLengthForAge
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

  /// Create a copy of NewbornBirthLengthForAge
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
class _NewbornBirthLengthForAge extends NewbornBirthLengthForAge {
  _NewbornBirthLengthForAge(
      {required this.sex, required this.age, required this.measurementResult})
      : super._();
  factory _NewbornBirthLengthForAge.fromJson(Map<String, dynamic> json) =>
      _$NewbornBirthLengthForAgeFromJson(json);

  @override
  final Sex sex;
  @override
  final Age age;
  @override
  final Length measurementResult;

  /// Create a copy of NewbornBirthLengthForAge
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$NewbornBirthLengthForAgeCopyWith<_NewbornBirthLengthForAge> get copyWith =>
      __$NewbornBirthLengthForAgeCopyWithImpl<_NewbornBirthLengthForAge>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$NewbornBirthLengthForAgeToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NewbornBirthLengthForAge &&
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
    return 'NewbornBirthLengthForAge(sex: $sex, age: $age, measurementResult: $measurementResult)';
  }
}

/// @nodoc
abstract mixin class _$NewbornBirthLengthForAgeCopyWith<$Res>
    implements $NewbornBirthLengthForAgeCopyWith<$Res> {
  factory _$NewbornBirthLengthForAgeCopyWith(_NewbornBirthLengthForAge value,
          $Res Function(_NewbornBirthLengthForAge) _then) =
      __$NewbornBirthLengthForAgeCopyWithImpl;
  @override
  @useResult
  $Res call({Sex sex, Age age, Length measurementResult});

  @override
  $AgeCopyWith<$Res> get age;
}

/// @nodoc
class __$NewbornBirthLengthForAgeCopyWithImpl<$Res>
    implements _$NewbornBirthLengthForAgeCopyWith<$Res> {
  __$NewbornBirthLengthForAgeCopyWithImpl(this._self, this._then);

  final _NewbornBirthLengthForAge _self;
  final $Res Function(_NewbornBirthLengthForAge) _then;

  /// Create a copy of NewbornBirthLengthForAge
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? sex = null,
    Object? age = null,
    Object? measurementResult = null,
  }) {
    return _then(_NewbornBirthLengthForAge(
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

  /// Create a copy of NewbornBirthLengthForAge
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
mixin _$NewbornBirthWeightForLengthRatioForAge {
  Sex get sex;
  Age get age;
  Length get measurementResult;

  /// Create a copy of NewbornBirthWeightForLengthRatioForAge
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $NewbornBirthWeightForLengthRatioForAgeCopyWith<
          NewbornBirthWeightForLengthRatioForAge>
      get copyWith => _$NewbornBirthWeightForLengthRatioForAgeCopyWithImpl<
              NewbornBirthWeightForLengthRatioForAge>(
          this as NewbornBirthWeightForLengthRatioForAge, _$identity);

  /// Serializes this NewbornBirthWeightForLengthRatioForAge to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is NewbornBirthWeightForLengthRatioForAge &&
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
    return 'NewbornBirthWeightForLengthRatioForAge(sex: $sex, age: $age, measurementResult: $measurementResult)';
  }
}

/// @nodoc
abstract mixin class $NewbornBirthWeightForLengthRatioForAgeCopyWith<$Res> {
  factory $NewbornBirthWeightForLengthRatioForAgeCopyWith(
          NewbornBirthWeightForLengthRatioForAge value,
          $Res Function(NewbornBirthWeightForLengthRatioForAge) _then) =
      _$NewbornBirthWeightForLengthRatioForAgeCopyWithImpl;
  @useResult
  $Res call({Sex sex, Age age, Length measurementResult});

  $AgeCopyWith<$Res> get age;
}

/// @nodoc
class _$NewbornBirthWeightForLengthRatioForAgeCopyWithImpl<$Res>
    implements $NewbornBirthWeightForLengthRatioForAgeCopyWith<$Res> {
  _$NewbornBirthWeightForLengthRatioForAgeCopyWithImpl(this._self, this._then);

  final NewbornBirthWeightForLengthRatioForAge _self;
  final $Res Function(NewbornBirthWeightForLengthRatioForAge) _then;

  /// Create a copy of NewbornBirthWeightForLengthRatioForAge
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

  /// Create a copy of NewbornBirthWeightForLengthRatioForAge
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
class _NewbornBirthWeightForLengthRatioForAge
    extends NewbornBirthWeightForLengthRatioForAge {
  _NewbornBirthWeightForLengthRatioForAge(
      {required this.sex, required this.age, required this.measurementResult})
      : super._();
  factory _NewbornBirthWeightForLengthRatioForAge.fromJson(
          Map<String, dynamic> json) =>
      _$NewbornBirthWeightForLengthRatioForAgeFromJson(json);

  @override
  final Sex sex;
  @override
  final Age age;
  @override
  final Length measurementResult;

  /// Create a copy of NewbornBirthWeightForLengthRatioForAge
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$NewbornBirthWeightForLengthRatioForAgeCopyWith<
          _NewbornBirthWeightForLengthRatioForAge>
      get copyWith => __$NewbornBirthWeightForLengthRatioForAgeCopyWithImpl<
          _NewbornBirthWeightForLengthRatioForAge>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$NewbornBirthWeightForLengthRatioForAgeToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NewbornBirthWeightForLengthRatioForAge &&
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
    return 'NewbornBirthWeightForLengthRatioForAge(sex: $sex, age: $age, measurementResult: $measurementResult)';
  }
}

/// @nodoc
abstract mixin class _$NewbornBirthWeightForLengthRatioForAgeCopyWith<$Res>
    implements $NewbornBirthWeightForLengthRatioForAgeCopyWith<$Res> {
  factory _$NewbornBirthWeightForLengthRatioForAgeCopyWith(
          _NewbornBirthWeightForLengthRatioForAge value,
          $Res Function(_NewbornBirthWeightForLengthRatioForAge) _then) =
      __$NewbornBirthWeightForLengthRatioForAgeCopyWithImpl;
  @override
  @useResult
  $Res call({Sex sex, Age age, Length measurementResult});

  @override
  $AgeCopyWith<$Res> get age;
}

/// @nodoc
class __$NewbornBirthWeightForLengthRatioForAgeCopyWithImpl<$Res>
    implements _$NewbornBirthWeightForLengthRatioForAgeCopyWith<$Res> {
  __$NewbornBirthWeightForLengthRatioForAgeCopyWithImpl(this._self, this._then);

  final _NewbornBirthWeightForLengthRatioForAge _self;
  final $Res Function(_NewbornBirthWeightForLengthRatioForAge) _then;

  /// Create a copy of NewbornBirthWeightForLengthRatioForAge
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? sex = null,
    Object? age = null,
    Object? measurementResult = null,
  }) {
    return _then(_NewbornBirthWeightForLengthRatioForAge(
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

  /// Create a copy of NewbornBirthWeightForLengthRatioForAge
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
mixin _$VeryPretermNewbornBirthWeightForAge {
  Sex get sex;
  Age get age;
  Mass get measurementResult;

  /// Create a copy of VeryPretermNewbornBirthWeightForAge
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $VeryPretermNewbornBirthWeightForAgeCopyWith<
          VeryPretermNewbornBirthWeightForAge>
      get copyWith => _$VeryPretermNewbornBirthWeightForAgeCopyWithImpl<
              VeryPretermNewbornBirthWeightForAge>(
          this as VeryPretermNewbornBirthWeightForAge, _$identity);

  /// Serializes this VeryPretermNewbornBirthWeightForAge to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is VeryPretermNewbornBirthWeightForAge &&
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
    return 'VeryPretermNewbornBirthWeightForAge(sex: $sex, age: $age, measurementResult: $measurementResult)';
  }
}

/// @nodoc
abstract mixin class $VeryPretermNewbornBirthWeightForAgeCopyWith<$Res> {
  factory $VeryPretermNewbornBirthWeightForAgeCopyWith(
          VeryPretermNewbornBirthWeightForAge value,
          $Res Function(VeryPretermNewbornBirthWeightForAge) _then) =
      _$VeryPretermNewbornBirthWeightForAgeCopyWithImpl;
  @useResult
  $Res call({Sex sex, Age age, Mass measurementResult});

  $AgeCopyWith<$Res> get age;
}

/// @nodoc
class _$VeryPretermNewbornBirthWeightForAgeCopyWithImpl<$Res>
    implements $VeryPretermNewbornBirthWeightForAgeCopyWith<$Res> {
  _$VeryPretermNewbornBirthWeightForAgeCopyWithImpl(this._self, this._then);

  final VeryPretermNewbornBirthWeightForAge _self;
  final $Res Function(VeryPretermNewbornBirthWeightForAge) _then;

  /// Create a copy of VeryPretermNewbornBirthWeightForAge
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

  /// Create a copy of VeryPretermNewbornBirthWeightForAge
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
class _VeryPretermNewbornBirthWeightForAge
    extends VeryPretermNewbornBirthWeightForAge {
  _VeryPretermNewbornBirthWeightForAge(
      {required this.sex, required this.age, required this.measurementResult})
      : super._();
  factory _VeryPretermNewbornBirthWeightForAge.fromJson(
          Map<String, dynamic> json) =>
      _$VeryPretermNewbornBirthWeightForAgeFromJson(json);

  @override
  final Sex sex;
  @override
  final Age age;
  @override
  final Mass measurementResult;

  /// Create a copy of VeryPretermNewbornBirthWeightForAge
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$VeryPretermNewbornBirthWeightForAgeCopyWith<
          _VeryPretermNewbornBirthWeightForAge>
      get copyWith => __$VeryPretermNewbornBirthWeightForAgeCopyWithImpl<
          _VeryPretermNewbornBirthWeightForAge>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$VeryPretermNewbornBirthWeightForAgeToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _VeryPretermNewbornBirthWeightForAge &&
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
    return 'VeryPretermNewbornBirthWeightForAge(sex: $sex, age: $age, measurementResult: $measurementResult)';
  }
}

/// @nodoc
abstract mixin class _$VeryPretermNewbornBirthWeightForAgeCopyWith<$Res>
    implements $VeryPretermNewbornBirthWeightForAgeCopyWith<$Res> {
  factory _$VeryPretermNewbornBirthWeightForAgeCopyWith(
          _VeryPretermNewbornBirthWeightForAge value,
          $Res Function(_VeryPretermNewbornBirthWeightForAge) _then) =
      __$VeryPretermNewbornBirthWeightForAgeCopyWithImpl;
  @override
  @useResult
  $Res call({Sex sex, Age age, Mass measurementResult});

  @override
  $AgeCopyWith<$Res> get age;
}

/// @nodoc
class __$VeryPretermNewbornBirthWeightForAgeCopyWithImpl<$Res>
    implements _$VeryPretermNewbornBirthWeightForAgeCopyWith<$Res> {
  __$VeryPretermNewbornBirthWeightForAgeCopyWithImpl(this._self, this._then);

  final _VeryPretermNewbornBirthWeightForAge _self;
  final $Res Function(_VeryPretermNewbornBirthWeightForAge) _then;

  /// Create a copy of VeryPretermNewbornBirthWeightForAge
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? sex = null,
    Object? age = null,
    Object? measurementResult = null,
  }) {
    return _then(_VeryPretermNewbornBirthWeightForAge(
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

  /// Create a copy of VeryPretermNewbornBirthWeightForAge
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
mixin _$VeryPretermNewbornBirthHeadCircumferenceForAge {
  Sex get sex;
  Age get age;
  Length get measurementResult;

  /// Create a copy of VeryPretermNewbornBirthHeadCircumferenceForAge
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $VeryPretermNewbornBirthHeadCircumferenceForAgeCopyWith<
          VeryPretermNewbornBirthHeadCircumferenceForAge>
      get copyWith =>
          _$VeryPretermNewbornBirthHeadCircumferenceForAgeCopyWithImpl<
                  VeryPretermNewbornBirthHeadCircumferenceForAge>(
              this as VeryPretermNewbornBirthHeadCircumferenceForAge,
              _$identity);

  /// Serializes this VeryPretermNewbornBirthHeadCircumferenceForAge to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is VeryPretermNewbornBirthHeadCircumferenceForAge &&
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
    return 'VeryPretermNewbornBirthHeadCircumferenceForAge(sex: $sex, age: $age, measurementResult: $measurementResult)';
  }
}

/// @nodoc
abstract mixin class $VeryPretermNewbornBirthHeadCircumferenceForAgeCopyWith<
    $Res> {
  factory $VeryPretermNewbornBirthHeadCircumferenceForAgeCopyWith(
          VeryPretermNewbornBirthHeadCircumferenceForAge value,
          $Res Function(VeryPretermNewbornBirthHeadCircumferenceForAge) _then) =
      _$VeryPretermNewbornBirthHeadCircumferenceForAgeCopyWithImpl;
  @useResult
  $Res call({Sex sex, Age age, Length measurementResult});

  $AgeCopyWith<$Res> get age;
}

/// @nodoc
class _$VeryPretermNewbornBirthHeadCircumferenceForAgeCopyWithImpl<$Res>
    implements $VeryPretermNewbornBirthHeadCircumferenceForAgeCopyWith<$Res> {
  _$VeryPretermNewbornBirthHeadCircumferenceForAgeCopyWithImpl(
      this._self, this._then);

  final VeryPretermNewbornBirthHeadCircumferenceForAge _self;
  final $Res Function(VeryPretermNewbornBirthHeadCircumferenceForAge) _then;

  /// Create a copy of VeryPretermNewbornBirthHeadCircumferenceForAge
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

  /// Create a copy of VeryPretermNewbornBirthHeadCircumferenceForAge
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
class _VeryPretermNewbornBirthHeadCircumferenceForAge
    extends VeryPretermNewbornBirthHeadCircumferenceForAge {
  _VeryPretermNewbornBirthHeadCircumferenceForAge(
      {required this.sex, required this.age, required this.measurementResult})
      : super._();
  factory _VeryPretermNewbornBirthHeadCircumferenceForAge.fromJson(
          Map<String, dynamic> json) =>
      _$VeryPretermNewbornBirthHeadCircumferenceForAgeFromJson(json);

  @override
  final Sex sex;
  @override
  final Age age;
  @override
  final Length measurementResult;

  /// Create a copy of VeryPretermNewbornBirthHeadCircumferenceForAge
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$VeryPretermNewbornBirthHeadCircumferenceForAgeCopyWith<
          _VeryPretermNewbornBirthHeadCircumferenceForAge>
      get copyWith =>
          __$VeryPretermNewbornBirthHeadCircumferenceForAgeCopyWithImpl<
                  _VeryPretermNewbornBirthHeadCircumferenceForAge>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$VeryPretermNewbornBirthHeadCircumferenceForAgeToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _VeryPretermNewbornBirthHeadCircumferenceForAge &&
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
    return 'VeryPretermNewbornBirthHeadCircumferenceForAge(sex: $sex, age: $age, measurementResult: $measurementResult)';
  }
}

/// @nodoc
abstract mixin class _$VeryPretermNewbornBirthHeadCircumferenceForAgeCopyWith<
        $Res>
    implements $VeryPretermNewbornBirthHeadCircumferenceForAgeCopyWith<$Res> {
  factory _$VeryPretermNewbornBirthHeadCircumferenceForAgeCopyWith(
          _VeryPretermNewbornBirthHeadCircumferenceForAge value,
          $Res Function(_VeryPretermNewbornBirthHeadCircumferenceForAge)
              _then) =
      __$VeryPretermNewbornBirthHeadCircumferenceForAgeCopyWithImpl;
  @override
  @useResult
  $Res call({Sex sex, Age age, Length measurementResult});

  @override
  $AgeCopyWith<$Res> get age;
}

/// @nodoc
class __$VeryPretermNewbornBirthHeadCircumferenceForAgeCopyWithImpl<$Res>
    implements _$VeryPretermNewbornBirthHeadCircumferenceForAgeCopyWith<$Res> {
  __$VeryPretermNewbornBirthHeadCircumferenceForAgeCopyWithImpl(
      this._self, this._then);

  final _VeryPretermNewbornBirthHeadCircumferenceForAge _self;
  final $Res Function(_VeryPretermNewbornBirthHeadCircumferenceForAge) _then;

  /// Create a copy of VeryPretermNewbornBirthHeadCircumferenceForAge
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? sex = null,
    Object? age = null,
    Object? measurementResult = null,
  }) {
    return _then(_VeryPretermNewbornBirthHeadCircumferenceForAge(
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

  /// Create a copy of VeryPretermNewbornBirthHeadCircumferenceForAge
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
mixin _$VeryPretermNewbornBirthLengthForAge {
  Sex get sex;
  Age get age;
  Length get measurementResult;

  /// Create a copy of VeryPretermNewbornBirthLengthForAge
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $VeryPretermNewbornBirthLengthForAgeCopyWith<
          VeryPretermNewbornBirthLengthForAge>
      get copyWith => _$VeryPretermNewbornBirthLengthForAgeCopyWithImpl<
              VeryPretermNewbornBirthLengthForAge>(
          this as VeryPretermNewbornBirthLengthForAge, _$identity);

  /// Serializes this VeryPretermNewbornBirthLengthForAge to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is VeryPretermNewbornBirthLengthForAge &&
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
    return 'VeryPretermNewbornBirthLengthForAge(sex: $sex, age: $age, measurementResult: $measurementResult)';
  }
}

/// @nodoc
abstract mixin class $VeryPretermNewbornBirthLengthForAgeCopyWith<$Res> {
  factory $VeryPretermNewbornBirthLengthForAgeCopyWith(
          VeryPretermNewbornBirthLengthForAge value,
          $Res Function(VeryPretermNewbornBirthLengthForAge) _then) =
      _$VeryPretermNewbornBirthLengthForAgeCopyWithImpl;
  @useResult
  $Res call({Sex sex, Age age, Length measurementResult});

  $AgeCopyWith<$Res> get age;
}

/// @nodoc
class _$VeryPretermNewbornBirthLengthForAgeCopyWithImpl<$Res>
    implements $VeryPretermNewbornBirthLengthForAgeCopyWith<$Res> {
  _$VeryPretermNewbornBirthLengthForAgeCopyWithImpl(this._self, this._then);

  final VeryPretermNewbornBirthLengthForAge _self;
  final $Res Function(VeryPretermNewbornBirthLengthForAge) _then;

  /// Create a copy of VeryPretermNewbornBirthLengthForAge
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

  /// Create a copy of VeryPretermNewbornBirthLengthForAge
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
class _VeryPretermNewbornBirthLengthForAge
    extends VeryPretermNewbornBirthLengthForAge {
  _VeryPretermNewbornBirthLengthForAge(
      {required this.sex, required this.age, required this.measurementResult})
      : super._();
  factory _VeryPretermNewbornBirthLengthForAge.fromJson(
          Map<String, dynamic> json) =>
      _$VeryPretermNewbornBirthLengthForAgeFromJson(json);

  @override
  final Sex sex;
  @override
  final Age age;
  @override
  final Length measurementResult;

  /// Create a copy of VeryPretermNewbornBirthLengthForAge
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$VeryPretermNewbornBirthLengthForAgeCopyWith<
          _VeryPretermNewbornBirthLengthForAge>
      get copyWith => __$VeryPretermNewbornBirthLengthForAgeCopyWithImpl<
          _VeryPretermNewbornBirthLengthForAge>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$VeryPretermNewbornBirthLengthForAgeToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _VeryPretermNewbornBirthLengthForAge &&
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
    return 'VeryPretermNewbornBirthLengthForAge(sex: $sex, age: $age, measurementResult: $measurementResult)';
  }
}

/// @nodoc
abstract mixin class _$VeryPretermNewbornBirthLengthForAgeCopyWith<$Res>
    implements $VeryPretermNewbornBirthLengthForAgeCopyWith<$Res> {
  factory _$VeryPretermNewbornBirthLengthForAgeCopyWith(
          _VeryPretermNewbornBirthLengthForAge value,
          $Res Function(_VeryPretermNewbornBirthLengthForAge) _then) =
      __$VeryPretermNewbornBirthLengthForAgeCopyWithImpl;
  @override
  @useResult
  $Res call({Sex sex, Age age, Length measurementResult});

  @override
  $AgeCopyWith<$Res> get age;
}

/// @nodoc
class __$VeryPretermNewbornBirthLengthForAgeCopyWithImpl<$Res>
    implements _$VeryPretermNewbornBirthLengthForAgeCopyWith<$Res> {
  __$VeryPretermNewbornBirthLengthForAgeCopyWithImpl(this._self, this._then);

  final _VeryPretermNewbornBirthLengthForAge _self;
  final $Res Function(_VeryPretermNewbornBirthLengthForAge) _then;

  /// Create a copy of VeryPretermNewbornBirthLengthForAge
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? sex = null,
    Object? age = null,
    Object? measurementResult = null,
  }) {
    return _then(_VeryPretermNewbornBirthLengthForAge(
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

  /// Create a copy of VeryPretermNewbornBirthLengthForAge
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
mixin _$VeryPretermNewbornBirthWeightForLengthRatioForAge {
  Sex get sex;
  Age get age;
  Length get measurementResult;

  /// Create a copy of VeryPretermNewbornBirthWeightForLengthRatioForAge
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $VeryPretermNewbornBirthWeightForLengthRatioForAgeCopyWith<
          VeryPretermNewbornBirthWeightForLengthRatioForAge>
      get copyWith =>
          _$VeryPretermNewbornBirthWeightForLengthRatioForAgeCopyWithImpl<
                  VeryPretermNewbornBirthWeightForLengthRatioForAge>(
              this as VeryPretermNewbornBirthWeightForLengthRatioForAge,
              _$identity);

  /// Serializes this VeryPretermNewbornBirthWeightForLengthRatioForAge to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is VeryPretermNewbornBirthWeightForLengthRatioForAge &&
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
    return 'VeryPretermNewbornBirthWeightForLengthRatioForAge(sex: $sex, age: $age, measurementResult: $measurementResult)';
  }
}

/// @nodoc
abstract mixin class $VeryPretermNewbornBirthWeightForLengthRatioForAgeCopyWith<
    $Res> {
  factory $VeryPretermNewbornBirthWeightForLengthRatioForAgeCopyWith(
          VeryPretermNewbornBirthWeightForLengthRatioForAge value,
          $Res Function(VeryPretermNewbornBirthWeightForLengthRatioForAge)
              _then) =
      _$VeryPretermNewbornBirthWeightForLengthRatioForAgeCopyWithImpl;
  @useResult
  $Res call({Sex sex, Age age, Length measurementResult});

  $AgeCopyWith<$Res> get age;
}

/// @nodoc
class _$VeryPretermNewbornBirthWeightForLengthRatioForAgeCopyWithImpl<$Res>
    implements
        $VeryPretermNewbornBirthWeightForLengthRatioForAgeCopyWith<$Res> {
  _$VeryPretermNewbornBirthWeightForLengthRatioForAgeCopyWithImpl(
      this._self, this._then);

  final VeryPretermNewbornBirthWeightForLengthRatioForAge _self;
  final $Res Function(VeryPretermNewbornBirthWeightForLengthRatioForAge) _then;

  /// Create a copy of VeryPretermNewbornBirthWeightForLengthRatioForAge
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

  /// Create a copy of VeryPretermNewbornBirthWeightForLengthRatioForAge
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
class _VeryPretermNewbornBirthWeightForLengthRatioForAge
    extends VeryPretermNewbornBirthWeightForLengthRatioForAge {
  _VeryPretermNewbornBirthWeightForLengthRatioForAge(
      {required this.sex, required this.age, required this.measurementResult})
      : super._();
  factory _VeryPretermNewbornBirthWeightForLengthRatioForAge.fromJson(
          Map<String, dynamic> json) =>
      _$VeryPretermNewbornBirthWeightForLengthRatioForAgeFromJson(json);

  @override
  final Sex sex;
  @override
  final Age age;
  @override
  final Length measurementResult;

  /// Create a copy of VeryPretermNewbornBirthWeightForLengthRatioForAge
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$VeryPretermNewbornBirthWeightForLengthRatioForAgeCopyWith<
          _VeryPretermNewbornBirthWeightForLengthRatioForAge>
      get copyWith =>
          __$VeryPretermNewbornBirthWeightForLengthRatioForAgeCopyWithImpl<
                  _VeryPretermNewbornBirthWeightForLengthRatioForAge>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$VeryPretermNewbornBirthWeightForLengthRatioForAgeToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _VeryPretermNewbornBirthWeightForLengthRatioForAge &&
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
    return 'VeryPretermNewbornBirthWeightForLengthRatioForAge(sex: $sex, age: $age, measurementResult: $measurementResult)';
  }
}

/// @nodoc
abstract mixin class _$VeryPretermNewbornBirthWeightForLengthRatioForAgeCopyWith<
        $Res>
    implements
        $VeryPretermNewbornBirthWeightForLengthRatioForAgeCopyWith<$Res> {
  factory _$VeryPretermNewbornBirthWeightForLengthRatioForAgeCopyWith(
          _VeryPretermNewbornBirthWeightForLengthRatioForAge value,
          $Res Function(_VeryPretermNewbornBirthWeightForLengthRatioForAge)
              _then) =
      __$VeryPretermNewbornBirthWeightForLengthRatioForAgeCopyWithImpl;
  @override
  @useResult
  $Res call({Sex sex, Age age, Length measurementResult});

  @override
  $AgeCopyWith<$Res> get age;
}

/// @nodoc
class __$VeryPretermNewbornBirthWeightForLengthRatioForAgeCopyWithImpl<$Res>
    implements
        _$VeryPretermNewbornBirthWeightForLengthRatioForAgeCopyWith<$Res> {
  __$VeryPretermNewbornBirthWeightForLengthRatioForAgeCopyWithImpl(
      this._self, this._then);

  final _VeryPretermNewbornBirthWeightForLengthRatioForAge _self;
  final $Res Function(_VeryPretermNewbornBirthWeightForLengthRatioForAge) _then;

  /// Create a copy of VeryPretermNewbornBirthWeightForLengthRatioForAge
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? sex = null,
    Object? age = null,
    Object? measurementResult = null,
  }) {
    return _then(_VeryPretermNewbornBirthWeightForLengthRatioForAge(
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

  /// Create a copy of VeryPretermNewbornBirthWeightForLengthRatioForAge
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
mixin _$EarlyPregnancyDatingForCRL {
  Age get age;
  Length get height;

  /// Create a copy of EarlyPregnancyDatingForCRL
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $EarlyPregnancyDatingForCRLCopyWith<EarlyPregnancyDatingForCRL>
      get copyWith =>
          _$EarlyPregnancyDatingForCRLCopyWithImpl<EarlyPregnancyDatingForCRL>(
              this as EarlyPregnancyDatingForCRL, _$identity);

  /// Serializes this EarlyPregnancyDatingForCRL to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is EarlyPregnancyDatingForCRL &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.height, height) || other.height == height));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, age, height);

  @override
  String toString() {
    return 'EarlyPregnancyDatingForCRL(age: $age, height: $height)';
  }
}

/// @nodoc
abstract mixin class $EarlyPregnancyDatingForCRLCopyWith<$Res> {
  factory $EarlyPregnancyDatingForCRLCopyWith(EarlyPregnancyDatingForCRL value,
          $Res Function(EarlyPregnancyDatingForCRL) _then) =
      _$EarlyPregnancyDatingForCRLCopyWithImpl;
  @useResult
  $Res call({Age age, Length height});

  $AgeCopyWith<$Res> get age;
}

/// @nodoc
class _$EarlyPregnancyDatingForCRLCopyWithImpl<$Res>
    implements $EarlyPregnancyDatingForCRLCopyWith<$Res> {
  _$EarlyPregnancyDatingForCRLCopyWithImpl(this._self, this._then);

  final EarlyPregnancyDatingForCRL _self;
  final $Res Function(EarlyPregnancyDatingForCRL) _then;

  /// Create a copy of EarlyPregnancyDatingForCRL
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? age = null,
    Object? height = null,
  }) {
    return _then(_self.copyWith(
      age: null == age
          ? _self.age
          : age // ignore: cast_nullable_to_non_nullable
              as Age,
      height: null == height
          ? _self.height
          : height // ignore: cast_nullable_to_non_nullable
              as Length,
    ));
  }

  /// Create a copy of EarlyPregnancyDatingForCRL
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
class _EarlyPregnancyDatingForCRL extends EarlyPregnancyDatingForCRL {
  _EarlyPregnancyDatingForCRL({required this.age, required this.height})
      : super._();
  factory _EarlyPregnancyDatingForCRL.fromJson(Map<String, dynamic> json) =>
      _$EarlyPregnancyDatingForCRLFromJson(json);

  @override
  final Age age;
  @override
  final Length height;

  /// Create a copy of EarlyPregnancyDatingForCRL
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$EarlyPregnancyDatingForCRLCopyWith<_EarlyPregnancyDatingForCRL>
      get copyWith => __$EarlyPregnancyDatingForCRLCopyWithImpl<
          _EarlyPregnancyDatingForCRL>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$EarlyPregnancyDatingForCRLToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _EarlyPregnancyDatingForCRL &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.height, height) || other.height == height));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, age, height);

  @override
  String toString() {
    return 'EarlyPregnancyDatingForCRL(age: $age, height: $height)';
  }
}

/// @nodoc
abstract mixin class _$EarlyPregnancyDatingForCRLCopyWith<$Res>
    implements $EarlyPregnancyDatingForCRLCopyWith<$Res> {
  factory _$EarlyPregnancyDatingForCRLCopyWith(
          _EarlyPregnancyDatingForCRL value,
          $Res Function(_EarlyPregnancyDatingForCRL) _then) =
      __$EarlyPregnancyDatingForCRLCopyWithImpl;
  @override
  @useResult
  $Res call({Age age, Length height});

  @override
  $AgeCopyWith<$Res> get age;
}

/// @nodoc
class __$EarlyPregnancyDatingForCRLCopyWithImpl<$Res>
    implements _$EarlyPregnancyDatingForCRLCopyWith<$Res> {
  __$EarlyPregnancyDatingForCRLCopyWithImpl(this._self, this._then);

  final _EarlyPregnancyDatingForCRL _self;
  final $Res Function(_EarlyPregnancyDatingForCRL) _then;

  /// Create a copy of EarlyPregnancyDatingForCRL
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? age = null,
    Object? height = null,
  }) {
    return _then(_EarlyPregnancyDatingForCRL(
      age: null == age
          ? _self.age
          : age // ignore: cast_nullable_to_non_nullable
              as Age,
      height: null == height
          ? _self.height
          : height // ignore: cast_nullable_to_non_nullable
              as Length,
    ));
  }

  /// Create a copy of EarlyPregnancyDatingForCRL
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
