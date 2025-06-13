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
  NewbornWeightLengthRatioMeasurement get measurementResult;

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
  $Res call(
      {Sex sex,
      Age age,
      NewbornWeightLengthRatioMeasurement measurementResult});

  $AgeCopyWith<$Res> get age;
  $NewbornWeightLengthRatioMeasurementCopyWith<$Res> get measurementResult;
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
              as NewbornWeightLengthRatioMeasurement,
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

  /// Create a copy of NewbornBirthWeightForLengthRatioForAge
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
  final NewbornWeightLengthRatioMeasurement measurementResult;

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
              as NewbornWeightLengthRatioMeasurement,
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

  /// Create a copy of NewbornBirthWeightForLengthRatioForAge
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
mixin _$VeryPretermNewbornBirthWeightForLengthRatioForAge {
  Sex get sex;
  Age get age;
  NewbornWeightLengthRatioMeasurement get measurementResult;

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
  $Res call(
      {Sex sex,
      Age age,
      NewbornWeightLengthRatioMeasurement measurementResult});

  $AgeCopyWith<$Res> get age;
  $NewbornWeightLengthRatioMeasurementCopyWith<$Res> get measurementResult;
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
              as NewbornWeightLengthRatioMeasurement,
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

  /// Create a copy of VeryPretermNewbornBirthWeightForLengthRatioForAge
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
  final NewbornWeightLengthRatioMeasurement measurementResult;

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
              as NewbornWeightLengthRatioMeasurement,
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

  /// Create a copy of VeryPretermNewbornBirthWeightForLengthRatioForAge
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
mixin _$EarlyPregnancyDatingForCRL {
  Age get age;
  Length get length;

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
            (identical(other.length, length) || other.length == length));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, age, length);

  @override
  String toString() {
    return 'EarlyPregnancyDatingForCRL(age: $age, length: $length)';
  }
}

/// @nodoc
abstract mixin class $EarlyPregnancyDatingForCRLCopyWith<$Res> {
  factory $EarlyPregnancyDatingForCRLCopyWith(EarlyPregnancyDatingForCRL value,
          $Res Function(EarlyPregnancyDatingForCRL) _then) =
      _$EarlyPregnancyDatingForCRLCopyWithImpl;
  @useResult
  $Res call({Age age, Length length});

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
  _EarlyPregnancyDatingForCRL({required this.age, required this.length})
      : super._();
  factory _EarlyPregnancyDatingForCRL.fromJson(Map<String, dynamic> json) =>
      _$EarlyPregnancyDatingForCRLFromJson(json);

  @override
  final Age age;
  @override
  final Length length;

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
            (identical(other.length, length) || other.length == length));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, age, length);

  @override
  String toString() {
    return 'EarlyPregnancyDatingForCRL(age: $age, length: $length)';
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
  $Res call({Age age, Length length});

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
    Object? length = null,
  }) {
    return _then(_EarlyPregnancyDatingForCRL(
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
mixin _$FetalGrowtAbdominalCircumferenceForAge {
  Age get age;
  Length get measurementResult;

  /// Create a copy of FetalGrowtAbdominalCircumferenceForAge
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $FetalGrowtAbdominalCircumferenceForAgeCopyWith<
          FetalGrowtAbdominalCircumferenceForAge>
      get copyWith => _$FetalGrowtAbdominalCircumferenceForAgeCopyWithImpl<
              FetalGrowtAbdominalCircumferenceForAge>(
          this as FetalGrowtAbdominalCircumferenceForAge, _$identity);

  /// Serializes this FetalGrowtAbdominalCircumferenceForAge to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FetalGrowtAbdominalCircumferenceForAge &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.measurementResult, measurementResult) ||
                other.measurementResult == measurementResult));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, age, measurementResult);

  @override
  String toString() {
    return 'FetalGrowtAbdominalCircumferenceForAge(age: $age, measurementResult: $measurementResult)';
  }
}

/// @nodoc
abstract mixin class $FetalGrowtAbdominalCircumferenceForAgeCopyWith<$Res> {
  factory $FetalGrowtAbdominalCircumferenceForAgeCopyWith(
          FetalGrowtAbdominalCircumferenceForAge value,
          $Res Function(FetalGrowtAbdominalCircumferenceForAge) _then) =
      _$FetalGrowtAbdominalCircumferenceForAgeCopyWithImpl;
  @useResult
  $Res call({Age age, Length measurementResult});

  $AgeCopyWith<$Res> get age;
}

/// @nodoc
class _$FetalGrowtAbdominalCircumferenceForAgeCopyWithImpl<$Res>
    implements $FetalGrowtAbdominalCircumferenceForAgeCopyWith<$Res> {
  _$FetalGrowtAbdominalCircumferenceForAgeCopyWithImpl(this._self, this._then);

  final FetalGrowtAbdominalCircumferenceForAge _self;
  final $Res Function(FetalGrowtAbdominalCircumferenceForAge) _then;

  /// Create a copy of FetalGrowtAbdominalCircumferenceForAge
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

  /// Create a copy of FetalGrowtAbdominalCircumferenceForAge
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
class _FetalGrowtAbdominalCircumferenceForAge
    extends FetalGrowtAbdominalCircumferenceForAge {
  _FetalGrowtAbdominalCircumferenceForAge(
      {required this.age, required this.measurementResult})
      : super._();
  factory _FetalGrowtAbdominalCircumferenceForAge.fromJson(
          Map<String, dynamic> json) =>
      _$FetalGrowtAbdominalCircumferenceForAgeFromJson(json);

  @override
  final Age age;
  @override
  final Length measurementResult;

  /// Create a copy of FetalGrowtAbdominalCircumferenceForAge
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$FetalGrowtAbdominalCircumferenceForAgeCopyWith<
          _FetalGrowtAbdominalCircumferenceForAge>
      get copyWith => __$FetalGrowtAbdominalCircumferenceForAgeCopyWithImpl<
          _FetalGrowtAbdominalCircumferenceForAge>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$FetalGrowtAbdominalCircumferenceForAgeToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FetalGrowtAbdominalCircumferenceForAge &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.measurementResult, measurementResult) ||
                other.measurementResult == measurementResult));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, age, measurementResult);

  @override
  String toString() {
    return 'FetalGrowtAbdominalCircumferenceForAge(age: $age, measurementResult: $measurementResult)';
  }
}

/// @nodoc
abstract mixin class _$FetalGrowtAbdominalCircumferenceForAgeCopyWith<$Res>
    implements $FetalGrowtAbdominalCircumferenceForAgeCopyWith<$Res> {
  factory _$FetalGrowtAbdominalCircumferenceForAgeCopyWith(
          _FetalGrowtAbdominalCircumferenceForAge value,
          $Res Function(_FetalGrowtAbdominalCircumferenceForAge) _then) =
      __$FetalGrowtAbdominalCircumferenceForAgeCopyWithImpl;
  @override
  @useResult
  $Res call({Age age, Length measurementResult});

  @override
  $AgeCopyWith<$Res> get age;
}

/// @nodoc
class __$FetalGrowtAbdominalCircumferenceForAgeCopyWithImpl<$Res>
    implements _$FetalGrowtAbdominalCircumferenceForAgeCopyWith<$Res> {
  __$FetalGrowtAbdominalCircumferenceForAgeCopyWithImpl(this._self, this._then);

  final _FetalGrowtAbdominalCircumferenceForAge _self;
  final $Res Function(_FetalGrowtAbdominalCircumferenceForAge) _then;

  /// Create a copy of FetalGrowtAbdominalCircumferenceForAge
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? age = null,
    Object? measurementResult = null,
  }) {
    return _then(_FetalGrowtAbdominalCircumferenceForAge(
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

  /// Create a copy of FetalGrowtAbdominalCircumferenceForAge
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
mixin _$FetalGrowtBiparietalDiameterForAge {
  Age get age;
  Length get measurementResult;

  /// Create a copy of FetalGrowtBiparietalDiameterForAge
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $FetalGrowtBiparietalDiameterForAgeCopyWith<
          FetalGrowtBiparietalDiameterForAge>
      get copyWith => _$FetalGrowtBiparietalDiameterForAgeCopyWithImpl<
              FetalGrowtBiparietalDiameterForAge>(
          this as FetalGrowtBiparietalDiameterForAge, _$identity);

  /// Serializes this FetalGrowtBiparietalDiameterForAge to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FetalGrowtBiparietalDiameterForAge &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.measurementResult, measurementResult) ||
                other.measurementResult == measurementResult));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, age, measurementResult);

  @override
  String toString() {
    return 'FetalGrowtBiparietalDiameterForAge(age: $age, measurementResult: $measurementResult)';
  }
}

/// @nodoc
abstract mixin class $FetalGrowtBiparietalDiameterForAgeCopyWith<$Res> {
  factory $FetalGrowtBiparietalDiameterForAgeCopyWith(
          FetalGrowtBiparietalDiameterForAge value,
          $Res Function(FetalGrowtBiparietalDiameterForAge) _then) =
      _$FetalGrowtBiparietalDiameterForAgeCopyWithImpl;
  @useResult
  $Res call({Age age, Length measurementResult});

  $AgeCopyWith<$Res> get age;
}

/// @nodoc
class _$FetalGrowtBiparietalDiameterForAgeCopyWithImpl<$Res>
    implements $FetalGrowtBiparietalDiameterForAgeCopyWith<$Res> {
  _$FetalGrowtBiparietalDiameterForAgeCopyWithImpl(this._self, this._then);

  final FetalGrowtBiparietalDiameterForAge _self;
  final $Res Function(FetalGrowtBiparietalDiameterForAge) _then;

  /// Create a copy of FetalGrowtBiparietalDiameterForAge
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

  /// Create a copy of FetalGrowtBiparietalDiameterForAge
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
class _FetalGrowtBiparietalDiameterForAge
    extends FetalGrowtBiparietalDiameterForAge {
  _FetalGrowtBiparietalDiameterForAge(
      {required this.age, required this.measurementResult})
      : super._();
  factory _FetalGrowtBiparietalDiameterForAge.fromJson(
          Map<String, dynamic> json) =>
      _$FetalGrowtBiparietalDiameterForAgeFromJson(json);

  @override
  final Age age;
  @override
  final Length measurementResult;

  /// Create a copy of FetalGrowtBiparietalDiameterForAge
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$FetalGrowtBiparietalDiameterForAgeCopyWith<
          _FetalGrowtBiparietalDiameterForAge>
      get copyWith => __$FetalGrowtBiparietalDiameterForAgeCopyWithImpl<
          _FetalGrowtBiparietalDiameterForAge>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$FetalGrowtBiparietalDiameterForAgeToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FetalGrowtBiparietalDiameterForAge &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.measurementResult, measurementResult) ||
                other.measurementResult == measurementResult));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, age, measurementResult);

  @override
  String toString() {
    return 'FetalGrowtBiparietalDiameterForAge(age: $age, measurementResult: $measurementResult)';
  }
}

/// @nodoc
abstract mixin class _$FetalGrowtBiparietalDiameterForAgeCopyWith<$Res>
    implements $FetalGrowtBiparietalDiameterForAgeCopyWith<$Res> {
  factory _$FetalGrowtBiparietalDiameterForAgeCopyWith(
          _FetalGrowtBiparietalDiameterForAge value,
          $Res Function(_FetalGrowtBiparietalDiameterForAge) _then) =
      __$FetalGrowtBiparietalDiameterForAgeCopyWithImpl;
  @override
  @useResult
  $Res call({Age age, Length measurementResult});

  @override
  $AgeCopyWith<$Res> get age;
}

/// @nodoc
class __$FetalGrowtBiparietalDiameterForAgeCopyWithImpl<$Res>
    implements _$FetalGrowtBiparietalDiameterForAgeCopyWith<$Res> {
  __$FetalGrowtBiparietalDiameterForAgeCopyWithImpl(this._self, this._then);

  final _FetalGrowtBiparietalDiameterForAge _self;
  final $Res Function(_FetalGrowtBiparietalDiameterForAge) _then;

  /// Create a copy of FetalGrowtBiparietalDiameterForAge
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? age = null,
    Object? measurementResult = null,
  }) {
    return _then(_FetalGrowtBiparietalDiameterForAge(
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

  /// Create a copy of FetalGrowtBiparietalDiameterForAge
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
mixin _$FetalGrowtHeadCircumferenceForAge {
  Age get age;
  Length get measurementResult;

  /// Create a copy of FetalGrowtHeadCircumferenceForAge
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $FetalGrowtHeadCircumferenceForAgeCopyWith<FetalGrowtHeadCircumferenceForAge>
      get copyWith => _$FetalGrowtHeadCircumferenceForAgeCopyWithImpl<
              FetalGrowtHeadCircumferenceForAge>(
          this as FetalGrowtHeadCircumferenceForAge, _$identity);

  /// Serializes this FetalGrowtHeadCircumferenceForAge to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FetalGrowtHeadCircumferenceForAge &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.measurementResult, measurementResult) ||
                other.measurementResult == measurementResult));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, age, measurementResult);

  @override
  String toString() {
    return 'FetalGrowtHeadCircumferenceForAge(age: $age, measurementResult: $measurementResult)';
  }
}

/// @nodoc
abstract mixin class $FetalGrowtHeadCircumferenceForAgeCopyWith<$Res> {
  factory $FetalGrowtHeadCircumferenceForAgeCopyWith(
          FetalGrowtHeadCircumferenceForAge value,
          $Res Function(FetalGrowtHeadCircumferenceForAge) _then) =
      _$FetalGrowtHeadCircumferenceForAgeCopyWithImpl;
  @useResult
  $Res call({Age age, Length measurementResult});

  $AgeCopyWith<$Res> get age;
}

/// @nodoc
class _$FetalGrowtHeadCircumferenceForAgeCopyWithImpl<$Res>
    implements $FetalGrowtHeadCircumferenceForAgeCopyWith<$Res> {
  _$FetalGrowtHeadCircumferenceForAgeCopyWithImpl(this._self, this._then);

  final FetalGrowtHeadCircumferenceForAge _self;
  final $Res Function(FetalGrowtHeadCircumferenceForAge) _then;

  /// Create a copy of FetalGrowtHeadCircumferenceForAge
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

  /// Create a copy of FetalGrowtHeadCircumferenceForAge
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
class _FetalGrowtHeadCircumferenceForAge
    extends FetalGrowtHeadCircumferenceForAge {
  _FetalGrowtHeadCircumferenceForAge(
      {required this.age, required this.measurementResult})
      : super._();
  factory _FetalGrowtHeadCircumferenceForAge.fromJson(
          Map<String, dynamic> json) =>
      _$FetalGrowtHeadCircumferenceForAgeFromJson(json);

  @override
  final Age age;
  @override
  final Length measurementResult;

  /// Create a copy of FetalGrowtHeadCircumferenceForAge
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$FetalGrowtHeadCircumferenceForAgeCopyWith<
          _FetalGrowtHeadCircumferenceForAge>
      get copyWith => __$FetalGrowtHeadCircumferenceForAgeCopyWithImpl<
          _FetalGrowtHeadCircumferenceForAge>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$FetalGrowtHeadCircumferenceForAgeToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FetalGrowtHeadCircumferenceForAge &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.measurementResult, measurementResult) ||
                other.measurementResult == measurementResult));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, age, measurementResult);

  @override
  String toString() {
    return 'FetalGrowtHeadCircumferenceForAge(age: $age, measurementResult: $measurementResult)';
  }
}

/// @nodoc
abstract mixin class _$FetalGrowtHeadCircumferenceForAgeCopyWith<$Res>
    implements $FetalGrowtHeadCircumferenceForAgeCopyWith<$Res> {
  factory _$FetalGrowtHeadCircumferenceForAgeCopyWith(
          _FetalGrowtHeadCircumferenceForAge value,
          $Res Function(_FetalGrowtHeadCircumferenceForAge) _then) =
      __$FetalGrowtHeadCircumferenceForAgeCopyWithImpl;
  @override
  @useResult
  $Res call({Age age, Length measurementResult});

  @override
  $AgeCopyWith<$Res> get age;
}

/// @nodoc
class __$FetalGrowtHeadCircumferenceForAgeCopyWithImpl<$Res>
    implements _$FetalGrowtHeadCircumferenceForAgeCopyWith<$Res> {
  __$FetalGrowtHeadCircumferenceForAgeCopyWithImpl(this._self, this._then);

  final _FetalGrowtHeadCircumferenceForAge _self;
  final $Res Function(_FetalGrowtHeadCircumferenceForAge) _then;

  /// Create a copy of FetalGrowtHeadCircumferenceForAge
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? age = null,
    Object? measurementResult = null,
  }) {
    return _then(_FetalGrowtHeadCircumferenceForAge(
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

  /// Create a copy of FetalGrowtHeadCircumferenceForAge
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
mixin _$FetalGrowtFemurLengthForAge {
  Age get age;
  Length get measurementResult;

  /// Create a copy of FetalGrowtFemurLengthForAge
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $FetalGrowtFemurLengthForAgeCopyWith<FetalGrowtFemurLengthForAge>
      get copyWith => _$FetalGrowtFemurLengthForAgeCopyWithImpl<
              FetalGrowtFemurLengthForAge>(
          this as FetalGrowtFemurLengthForAge, _$identity);

  /// Serializes this FetalGrowtFemurLengthForAge to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FetalGrowtFemurLengthForAge &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.measurementResult, measurementResult) ||
                other.measurementResult == measurementResult));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, age, measurementResult);

  @override
  String toString() {
    return 'FetalGrowtFemurLengthForAge(age: $age, measurementResult: $measurementResult)';
  }
}

/// @nodoc
abstract mixin class $FetalGrowtFemurLengthForAgeCopyWith<$Res> {
  factory $FetalGrowtFemurLengthForAgeCopyWith(
          FetalGrowtFemurLengthForAge value,
          $Res Function(FetalGrowtFemurLengthForAge) _then) =
      _$FetalGrowtFemurLengthForAgeCopyWithImpl;
  @useResult
  $Res call({Age age, Length measurementResult});

  $AgeCopyWith<$Res> get age;
}

/// @nodoc
class _$FetalGrowtFemurLengthForAgeCopyWithImpl<$Res>
    implements $FetalGrowtFemurLengthForAgeCopyWith<$Res> {
  _$FetalGrowtFemurLengthForAgeCopyWithImpl(this._self, this._then);

  final FetalGrowtFemurLengthForAge _self;
  final $Res Function(FetalGrowtFemurLengthForAge) _then;

  /// Create a copy of FetalGrowtFemurLengthForAge
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

  /// Create a copy of FetalGrowtFemurLengthForAge
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
class _FetalGrowtFemurLengthForAge extends FetalGrowtFemurLengthForAge {
  _FetalGrowtFemurLengthForAge(
      {required this.age, required this.measurementResult})
      : super._();
  factory _FetalGrowtFemurLengthForAge.fromJson(Map<String, dynamic> json) =>
      _$FetalGrowtFemurLengthForAgeFromJson(json);

  @override
  final Age age;
  @override
  final Length measurementResult;

  /// Create a copy of FetalGrowtFemurLengthForAge
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$FetalGrowtFemurLengthForAgeCopyWith<_FetalGrowtFemurLengthForAge>
      get copyWith => __$FetalGrowtFemurLengthForAgeCopyWithImpl<
          _FetalGrowtFemurLengthForAge>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$FetalGrowtFemurLengthForAgeToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FetalGrowtFemurLengthForAge &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.measurementResult, measurementResult) ||
                other.measurementResult == measurementResult));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, age, measurementResult);

  @override
  String toString() {
    return 'FetalGrowtFemurLengthForAge(age: $age, measurementResult: $measurementResult)';
  }
}

/// @nodoc
abstract mixin class _$FetalGrowtFemurLengthForAgeCopyWith<$Res>
    implements $FetalGrowtFemurLengthForAgeCopyWith<$Res> {
  factory _$FetalGrowtFemurLengthForAgeCopyWith(
          _FetalGrowtFemurLengthForAge value,
          $Res Function(_FetalGrowtFemurLengthForAge) _then) =
      __$FetalGrowtFemurLengthForAgeCopyWithImpl;
  @override
  @useResult
  $Res call({Age age, Length measurementResult});

  @override
  $AgeCopyWith<$Res> get age;
}

/// @nodoc
class __$FetalGrowtFemurLengthForAgeCopyWithImpl<$Res>
    implements _$FetalGrowtFemurLengthForAgeCopyWith<$Res> {
  __$FetalGrowtFemurLengthForAgeCopyWithImpl(this._self, this._then);

  final _FetalGrowtFemurLengthForAge _self;
  final $Res Function(_FetalGrowtFemurLengthForAge) _then;

  /// Create a copy of FetalGrowtFemurLengthForAge
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? age = null,
    Object? measurementResult = null,
  }) {
    return _then(_FetalGrowtFemurLengthForAge(
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

  /// Create a copy of FetalGrowtFemurLengthForAge
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
mixin _$FetalGrowtOccipitoFrontalDiameterForAge {
  Age get age;
  Length get measurementResult;

  /// Create a copy of FetalGrowtOccipitoFrontalDiameterForAge
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $FetalGrowtOccipitoFrontalDiameterForAgeCopyWith<
          FetalGrowtOccipitoFrontalDiameterForAge>
      get copyWith => _$FetalGrowtOccipitoFrontalDiameterForAgeCopyWithImpl<
              FetalGrowtOccipitoFrontalDiameterForAge>(
          this as FetalGrowtOccipitoFrontalDiameterForAge, _$identity);

  /// Serializes this FetalGrowtOccipitoFrontalDiameterForAge to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FetalGrowtOccipitoFrontalDiameterForAge &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.measurementResult, measurementResult) ||
                other.measurementResult == measurementResult));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, age, measurementResult);

  @override
  String toString() {
    return 'FetalGrowtOccipitoFrontalDiameterForAge(age: $age, measurementResult: $measurementResult)';
  }
}

/// @nodoc
abstract mixin class $FetalGrowtOccipitoFrontalDiameterForAgeCopyWith<$Res> {
  factory $FetalGrowtOccipitoFrontalDiameterForAgeCopyWith(
          FetalGrowtOccipitoFrontalDiameterForAge value,
          $Res Function(FetalGrowtOccipitoFrontalDiameterForAge) _then) =
      _$FetalGrowtOccipitoFrontalDiameterForAgeCopyWithImpl;
  @useResult
  $Res call({Age age, Length measurementResult});

  $AgeCopyWith<$Res> get age;
}

/// @nodoc
class _$FetalGrowtOccipitoFrontalDiameterForAgeCopyWithImpl<$Res>
    implements $FetalGrowtOccipitoFrontalDiameterForAgeCopyWith<$Res> {
  _$FetalGrowtOccipitoFrontalDiameterForAgeCopyWithImpl(this._self, this._then);

  final FetalGrowtOccipitoFrontalDiameterForAge _self;
  final $Res Function(FetalGrowtOccipitoFrontalDiameterForAge) _then;

  /// Create a copy of FetalGrowtOccipitoFrontalDiameterForAge
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

  /// Create a copy of FetalGrowtOccipitoFrontalDiameterForAge
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
class _FetalGrowtOccipitoFrontalDiameterForAge
    extends FetalGrowtOccipitoFrontalDiameterForAge {
  _FetalGrowtOccipitoFrontalDiameterForAge(
      {required this.age, required this.measurementResult})
      : super._();
  factory _FetalGrowtOccipitoFrontalDiameterForAge.fromJson(
          Map<String, dynamic> json) =>
      _$FetalGrowtOccipitoFrontalDiameterForAgeFromJson(json);

  @override
  final Age age;
  @override
  final Length measurementResult;

  /// Create a copy of FetalGrowtOccipitoFrontalDiameterForAge
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$FetalGrowtOccipitoFrontalDiameterForAgeCopyWith<
          _FetalGrowtOccipitoFrontalDiameterForAge>
      get copyWith => __$FetalGrowtOccipitoFrontalDiameterForAgeCopyWithImpl<
          _FetalGrowtOccipitoFrontalDiameterForAge>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$FetalGrowtOccipitoFrontalDiameterForAgeToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FetalGrowtOccipitoFrontalDiameterForAge &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.measurementResult, measurementResult) ||
                other.measurementResult == measurementResult));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, age, measurementResult);

  @override
  String toString() {
    return 'FetalGrowtOccipitoFrontalDiameterForAge(age: $age, measurementResult: $measurementResult)';
  }
}

/// @nodoc
abstract mixin class _$FetalGrowtOccipitoFrontalDiameterForAgeCopyWith<$Res>
    implements $FetalGrowtOccipitoFrontalDiameterForAgeCopyWith<$Res> {
  factory _$FetalGrowtOccipitoFrontalDiameterForAgeCopyWith(
          _FetalGrowtOccipitoFrontalDiameterForAge value,
          $Res Function(_FetalGrowtOccipitoFrontalDiameterForAge) _then) =
      __$FetalGrowtOccipitoFrontalDiameterForAgeCopyWithImpl;
  @override
  @useResult
  $Res call({Age age, Length measurementResult});

  @override
  $AgeCopyWith<$Res> get age;
}

/// @nodoc
class __$FetalGrowtOccipitoFrontalDiameterForAgeCopyWithImpl<$Res>
    implements _$FetalGrowtOccipitoFrontalDiameterForAgeCopyWith<$Res> {
  __$FetalGrowtOccipitoFrontalDiameterForAgeCopyWithImpl(
      this._self, this._then);

  final _FetalGrowtOccipitoFrontalDiameterForAge _self;
  final $Res Function(_FetalGrowtOccipitoFrontalDiameterForAge) _then;

  /// Create a copy of FetalGrowtOccipitoFrontalDiameterForAge
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? age = null,
    Object? measurementResult = null,
  }) {
    return _then(_FetalGrowtOccipitoFrontalDiameterForAge(
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

  /// Create a copy of FetalGrowtOccipitoFrontalDiameterForAge
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
mixin _$PretermInfantsPostnatalGrowthHeadCircumferenceForAge {
  Sex get sex;
  Age get age;
  Length get measurementResult;

  /// Create a copy of PretermInfantsPostnatalGrowthHeadCircumferenceForAge
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PretermInfantsPostnatalGrowthHeadCircumferenceForAgeCopyWith<
          PretermInfantsPostnatalGrowthHeadCircumferenceForAge>
      get copyWith =>
          _$PretermInfantsPostnatalGrowthHeadCircumferenceForAgeCopyWithImpl<
                  PretermInfantsPostnatalGrowthHeadCircumferenceForAge>(
              this as PretermInfantsPostnatalGrowthHeadCircumferenceForAge,
              _$identity);

  /// Serializes this PretermInfantsPostnatalGrowthHeadCircumferenceForAge to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PretermInfantsPostnatalGrowthHeadCircumferenceForAge &&
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
    return 'PretermInfantsPostnatalGrowthHeadCircumferenceForAge(sex: $sex, age: $age, measurementResult: $measurementResult)';
  }
}

/// @nodoc
abstract mixin class $PretermInfantsPostnatalGrowthHeadCircumferenceForAgeCopyWith<
    $Res> {
  factory $PretermInfantsPostnatalGrowthHeadCircumferenceForAgeCopyWith(
          PretermInfantsPostnatalGrowthHeadCircumferenceForAge value,
          $Res Function(PretermInfantsPostnatalGrowthHeadCircumferenceForAge)
              _then) =
      _$PretermInfantsPostnatalGrowthHeadCircumferenceForAgeCopyWithImpl;
  @useResult
  $Res call({Sex sex, Age age, Length measurementResult});

  $AgeCopyWith<$Res> get age;
}

/// @nodoc
class _$PretermInfantsPostnatalGrowthHeadCircumferenceForAgeCopyWithImpl<$Res>
    implements
        $PretermInfantsPostnatalGrowthHeadCircumferenceForAgeCopyWith<$Res> {
  _$PretermInfantsPostnatalGrowthHeadCircumferenceForAgeCopyWithImpl(
      this._self, this._then);

  final PretermInfantsPostnatalGrowthHeadCircumferenceForAge _self;
  final $Res Function(PretermInfantsPostnatalGrowthHeadCircumferenceForAge)
      _then;

  /// Create a copy of PretermInfantsPostnatalGrowthHeadCircumferenceForAge
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

  /// Create a copy of PretermInfantsPostnatalGrowthHeadCircumferenceForAge
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
class _PretermInfantsPostnatalGrowthHeadCircumferenceForAge
    extends PretermInfantsPostnatalGrowthHeadCircumferenceForAge {
  _PretermInfantsPostnatalGrowthHeadCircumferenceForAge(
      {required this.sex, required this.age, required this.measurementResult})
      : super._();
  factory _PretermInfantsPostnatalGrowthHeadCircumferenceForAge.fromJson(
          Map<String, dynamic> json) =>
      _$PretermInfantsPostnatalGrowthHeadCircumferenceForAgeFromJson(json);

  @override
  final Sex sex;
  @override
  final Age age;
  @override
  final Length measurementResult;

  /// Create a copy of PretermInfantsPostnatalGrowthHeadCircumferenceForAge
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PretermInfantsPostnatalGrowthHeadCircumferenceForAgeCopyWith<
          _PretermInfantsPostnatalGrowthHeadCircumferenceForAge>
      get copyWith =>
          __$PretermInfantsPostnatalGrowthHeadCircumferenceForAgeCopyWithImpl<
                  _PretermInfantsPostnatalGrowthHeadCircumferenceForAge>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PretermInfantsPostnatalGrowthHeadCircumferenceForAgeToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PretermInfantsPostnatalGrowthHeadCircumferenceForAge &&
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
    return 'PretermInfantsPostnatalGrowthHeadCircumferenceForAge(sex: $sex, age: $age, measurementResult: $measurementResult)';
  }
}

/// @nodoc
abstract mixin class _$PretermInfantsPostnatalGrowthHeadCircumferenceForAgeCopyWith<
        $Res>
    implements
        $PretermInfantsPostnatalGrowthHeadCircumferenceForAgeCopyWith<$Res> {
  factory _$PretermInfantsPostnatalGrowthHeadCircumferenceForAgeCopyWith(
          _PretermInfantsPostnatalGrowthHeadCircumferenceForAge value,
          $Res Function(_PretermInfantsPostnatalGrowthHeadCircumferenceForAge)
              _then) =
      __$PretermInfantsPostnatalGrowthHeadCircumferenceForAgeCopyWithImpl;
  @override
  @useResult
  $Res call({Sex sex, Age age, Length measurementResult});

  @override
  $AgeCopyWith<$Res> get age;
}

/// @nodoc
class __$PretermInfantsPostnatalGrowthHeadCircumferenceForAgeCopyWithImpl<$Res>
    implements
        _$PretermInfantsPostnatalGrowthHeadCircumferenceForAgeCopyWith<$Res> {
  __$PretermInfantsPostnatalGrowthHeadCircumferenceForAgeCopyWithImpl(
      this._self, this._then);

  final _PretermInfantsPostnatalGrowthHeadCircumferenceForAge _self;
  final $Res Function(_PretermInfantsPostnatalGrowthHeadCircumferenceForAge)
      _then;

  /// Create a copy of PretermInfantsPostnatalGrowthHeadCircumferenceForAge
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? sex = null,
    Object? age = null,
    Object? measurementResult = null,
  }) {
    return _then(_PretermInfantsPostnatalGrowthHeadCircumferenceForAge(
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

  /// Create a copy of PretermInfantsPostnatalGrowthHeadCircumferenceForAge
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
mixin _$PretermInfantsPostnatalGrowthLengthForAge {
  Sex get sex;
  Age get age;
  Length get measurementResult;

  /// Create a copy of PretermInfantsPostnatalGrowthLengthForAge
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PretermInfantsPostnatalGrowthLengthForAgeCopyWith<
          PretermInfantsPostnatalGrowthLengthForAge>
      get copyWith => _$PretermInfantsPostnatalGrowthLengthForAgeCopyWithImpl<
              PretermInfantsPostnatalGrowthLengthForAge>(
          this as PretermInfantsPostnatalGrowthLengthForAge, _$identity);

  /// Serializes this PretermInfantsPostnatalGrowthLengthForAge to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PretermInfantsPostnatalGrowthLengthForAge &&
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
    return 'PretermInfantsPostnatalGrowthLengthForAge(sex: $sex, age: $age, measurementResult: $measurementResult)';
  }
}

/// @nodoc
abstract mixin class $PretermInfantsPostnatalGrowthLengthForAgeCopyWith<$Res> {
  factory $PretermInfantsPostnatalGrowthLengthForAgeCopyWith(
          PretermInfantsPostnatalGrowthLengthForAge value,
          $Res Function(PretermInfantsPostnatalGrowthLengthForAge) _then) =
      _$PretermInfantsPostnatalGrowthLengthForAgeCopyWithImpl;
  @useResult
  $Res call({Sex sex, Age age, Length measurementResult});

  $AgeCopyWith<$Res> get age;
}

/// @nodoc
class _$PretermInfantsPostnatalGrowthLengthForAgeCopyWithImpl<$Res>
    implements $PretermInfantsPostnatalGrowthLengthForAgeCopyWith<$Res> {
  _$PretermInfantsPostnatalGrowthLengthForAgeCopyWithImpl(
      this._self, this._then);

  final PretermInfantsPostnatalGrowthLengthForAge _self;
  final $Res Function(PretermInfantsPostnatalGrowthLengthForAge) _then;

  /// Create a copy of PretermInfantsPostnatalGrowthLengthForAge
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

  /// Create a copy of PretermInfantsPostnatalGrowthLengthForAge
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
class _PretermInfantsPostnatalGrowthLengthForAge
    extends PretermInfantsPostnatalGrowthLengthForAge {
  _PretermInfantsPostnatalGrowthLengthForAge(
      {required this.sex, required this.age, required this.measurementResult})
      : super._();
  factory _PretermInfantsPostnatalGrowthLengthForAge.fromJson(
          Map<String, dynamic> json) =>
      _$PretermInfantsPostnatalGrowthLengthForAgeFromJson(json);

  @override
  final Sex sex;
  @override
  final Age age;
  @override
  final Length measurementResult;

  /// Create a copy of PretermInfantsPostnatalGrowthLengthForAge
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PretermInfantsPostnatalGrowthLengthForAgeCopyWith<
          _PretermInfantsPostnatalGrowthLengthForAge>
      get copyWith => __$PretermInfantsPostnatalGrowthLengthForAgeCopyWithImpl<
          _PretermInfantsPostnatalGrowthLengthForAge>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PretermInfantsPostnatalGrowthLengthForAgeToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PretermInfantsPostnatalGrowthLengthForAge &&
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
    return 'PretermInfantsPostnatalGrowthLengthForAge(sex: $sex, age: $age, measurementResult: $measurementResult)';
  }
}

/// @nodoc
abstract mixin class _$PretermInfantsPostnatalGrowthLengthForAgeCopyWith<$Res>
    implements $PretermInfantsPostnatalGrowthLengthForAgeCopyWith<$Res> {
  factory _$PretermInfantsPostnatalGrowthLengthForAgeCopyWith(
          _PretermInfantsPostnatalGrowthLengthForAge value,
          $Res Function(_PretermInfantsPostnatalGrowthLengthForAge) _then) =
      __$PretermInfantsPostnatalGrowthLengthForAgeCopyWithImpl;
  @override
  @useResult
  $Res call({Sex sex, Age age, Length measurementResult});

  @override
  $AgeCopyWith<$Res> get age;
}

/// @nodoc
class __$PretermInfantsPostnatalGrowthLengthForAgeCopyWithImpl<$Res>
    implements _$PretermInfantsPostnatalGrowthLengthForAgeCopyWith<$Res> {
  __$PretermInfantsPostnatalGrowthLengthForAgeCopyWithImpl(
      this._self, this._then);

  final _PretermInfantsPostnatalGrowthLengthForAge _self;
  final $Res Function(_PretermInfantsPostnatalGrowthLengthForAge) _then;

  /// Create a copy of PretermInfantsPostnatalGrowthLengthForAge
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? sex = null,
    Object? age = null,
    Object? measurementResult = null,
  }) {
    return _then(_PretermInfantsPostnatalGrowthLengthForAge(
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

  /// Create a copy of PretermInfantsPostnatalGrowthLengthForAge
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
mixin _$PretermInfantsPostnatalGrowthWeightForAge {
  Sex get sex;
  Age get age;
  Mass get measurementResult;

  /// Create a copy of PretermInfantsPostnatalGrowthWeightForAge
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PretermInfantsPostnatalGrowthWeightForAgeCopyWith<
          PretermInfantsPostnatalGrowthWeightForAge>
      get copyWith => _$PretermInfantsPostnatalGrowthWeightForAgeCopyWithImpl<
              PretermInfantsPostnatalGrowthWeightForAge>(
          this as PretermInfantsPostnatalGrowthWeightForAge, _$identity);

  /// Serializes this PretermInfantsPostnatalGrowthWeightForAge to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PretermInfantsPostnatalGrowthWeightForAge &&
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
    return 'PretermInfantsPostnatalGrowthWeightForAge(sex: $sex, age: $age, measurementResult: $measurementResult)';
  }
}

/// @nodoc
abstract mixin class $PretermInfantsPostnatalGrowthWeightForAgeCopyWith<$Res> {
  factory $PretermInfantsPostnatalGrowthWeightForAgeCopyWith(
          PretermInfantsPostnatalGrowthWeightForAge value,
          $Res Function(PretermInfantsPostnatalGrowthWeightForAge) _then) =
      _$PretermInfantsPostnatalGrowthWeightForAgeCopyWithImpl;
  @useResult
  $Res call({Sex sex, Age age, Mass measurementResult});

  $AgeCopyWith<$Res> get age;
}

/// @nodoc
class _$PretermInfantsPostnatalGrowthWeightForAgeCopyWithImpl<$Res>
    implements $PretermInfantsPostnatalGrowthWeightForAgeCopyWith<$Res> {
  _$PretermInfantsPostnatalGrowthWeightForAgeCopyWithImpl(
      this._self, this._then);

  final PretermInfantsPostnatalGrowthWeightForAge _self;
  final $Res Function(PretermInfantsPostnatalGrowthWeightForAge) _then;

  /// Create a copy of PretermInfantsPostnatalGrowthWeightForAge
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

  /// Create a copy of PretermInfantsPostnatalGrowthWeightForAge
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
class _PretermInfantsPostnatalGrowthWeightForAge
    extends PretermInfantsPostnatalGrowthWeightForAge {
  _PretermInfantsPostnatalGrowthWeightForAge(
      {required this.sex, required this.age, required this.measurementResult})
      : super._();
  factory _PretermInfantsPostnatalGrowthWeightForAge.fromJson(
          Map<String, dynamic> json) =>
      _$PretermInfantsPostnatalGrowthWeightForAgeFromJson(json);

  @override
  final Sex sex;
  @override
  final Age age;
  @override
  final Mass measurementResult;

  /// Create a copy of PretermInfantsPostnatalGrowthWeightForAge
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PretermInfantsPostnatalGrowthWeightForAgeCopyWith<
          _PretermInfantsPostnatalGrowthWeightForAge>
      get copyWith => __$PretermInfantsPostnatalGrowthWeightForAgeCopyWithImpl<
          _PretermInfantsPostnatalGrowthWeightForAge>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PretermInfantsPostnatalGrowthWeightForAgeToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PretermInfantsPostnatalGrowthWeightForAge &&
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
    return 'PretermInfantsPostnatalGrowthWeightForAge(sex: $sex, age: $age, measurementResult: $measurementResult)';
  }
}

/// @nodoc
abstract mixin class _$PretermInfantsPostnatalGrowthWeightForAgeCopyWith<$Res>
    implements $PretermInfantsPostnatalGrowthWeightForAgeCopyWith<$Res> {
  factory _$PretermInfantsPostnatalGrowthWeightForAgeCopyWith(
          _PretermInfantsPostnatalGrowthWeightForAge value,
          $Res Function(_PretermInfantsPostnatalGrowthWeightForAge) _then) =
      __$PretermInfantsPostnatalGrowthWeightForAgeCopyWithImpl;
  @override
  @useResult
  $Res call({Sex sex, Age age, Mass measurementResult});

  @override
  $AgeCopyWith<$Res> get age;
}

/// @nodoc
class __$PretermInfantsPostnatalGrowthWeightForAgeCopyWithImpl<$Res>
    implements _$PretermInfantsPostnatalGrowthWeightForAgeCopyWith<$Res> {
  __$PretermInfantsPostnatalGrowthWeightForAgeCopyWithImpl(
      this._self, this._then);

  final _PretermInfantsPostnatalGrowthWeightForAge _self;
  final $Res Function(_PretermInfantsPostnatalGrowthWeightForAge) _then;

  /// Create a copy of PretermInfantsPostnatalGrowthWeightForAge
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? sex = null,
    Object? age = null,
    Object? measurementResult = null,
  }) {
    return _then(_PretermInfantsPostnatalGrowthWeightForAge(
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

  /// Create a copy of PretermInfantsPostnatalGrowthWeightForAge
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
mixin _$SymphysisFundalHeightForAge {
  Age get age;
  Length get length;

  /// Create a copy of SymphysisFundalHeightForAge
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SymphysisFundalHeightForAgeCopyWith<SymphysisFundalHeightForAge>
      get copyWith => _$SymphysisFundalHeightForAgeCopyWithImpl<
              SymphysisFundalHeightForAge>(
          this as SymphysisFundalHeightForAge, _$identity);

  /// Serializes this SymphysisFundalHeightForAge to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SymphysisFundalHeightForAge &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.length, length) || other.length == length));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, age, length);

  @override
  String toString() {
    return 'SymphysisFundalHeightForAge(age: $age, length: $length)';
  }
}

/// @nodoc
abstract mixin class $SymphysisFundalHeightForAgeCopyWith<$Res> {
  factory $SymphysisFundalHeightForAgeCopyWith(
          SymphysisFundalHeightForAge value,
          $Res Function(SymphysisFundalHeightForAge) _then) =
      _$SymphysisFundalHeightForAgeCopyWithImpl;
  @useResult
  $Res call({Age age, Length length});

  $AgeCopyWith<$Res> get age;
}

/// @nodoc
class _$SymphysisFundalHeightForAgeCopyWithImpl<$Res>
    implements $SymphysisFundalHeightForAgeCopyWith<$Res> {
  _$SymphysisFundalHeightForAgeCopyWithImpl(this._self, this._then);

  final SymphysisFundalHeightForAge _self;
  final $Res Function(SymphysisFundalHeightForAge) _then;

  /// Create a copy of SymphysisFundalHeightForAge
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

  /// Create a copy of SymphysisFundalHeightForAge
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
class _SymphysisFundalHeightForAge extends SymphysisFundalHeightForAge {
  _SymphysisFundalHeightForAge({required this.age, required this.length})
      : super._();
  factory _SymphysisFundalHeightForAge.fromJson(Map<String, dynamic> json) =>
      _$SymphysisFundalHeightForAgeFromJson(json);

  @override
  final Age age;
  @override
  final Length length;

  /// Create a copy of SymphysisFundalHeightForAge
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SymphysisFundalHeightForAgeCopyWith<_SymphysisFundalHeightForAge>
      get copyWith => __$SymphysisFundalHeightForAgeCopyWithImpl<
          _SymphysisFundalHeightForAge>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SymphysisFundalHeightForAgeToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SymphysisFundalHeightForAge &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.length, length) || other.length == length));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, age, length);

  @override
  String toString() {
    return 'SymphysisFundalHeightForAge(age: $age, length: $length)';
  }
}

/// @nodoc
abstract mixin class _$SymphysisFundalHeightForAgeCopyWith<$Res>
    implements $SymphysisFundalHeightForAgeCopyWith<$Res> {
  factory _$SymphysisFundalHeightForAgeCopyWith(
          _SymphysisFundalHeightForAge value,
          $Res Function(_SymphysisFundalHeightForAge) _then) =
      __$SymphysisFundalHeightForAgeCopyWithImpl;
  @override
  @useResult
  $Res call({Age age, Length length});

  @override
  $AgeCopyWith<$Res> get age;
}

/// @nodoc
class __$SymphysisFundalHeightForAgeCopyWithImpl<$Res>
    implements _$SymphysisFundalHeightForAgeCopyWith<$Res> {
  __$SymphysisFundalHeightForAgeCopyWithImpl(this._self, this._then);

  final _SymphysisFundalHeightForAge _self;
  final $Res Function(_SymphysisFundalHeightForAge) _then;

  /// Create a copy of SymphysisFundalHeightForAge
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? age = null,
    Object? length = null,
  }) {
    return _then(_SymphysisFundalHeightForAge(
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

  /// Create a copy of SymphysisFundalHeightForAge
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
mixin _$GestationalWeightGainForAge {
  Sex get sex;
  Age get age;
  Mass get measurementResult;

  /// Create a copy of GestationalWeightGainForAge
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $GestationalWeightGainForAgeCopyWith<GestationalWeightGainForAge>
      get copyWith => _$GestationalWeightGainForAgeCopyWithImpl<
              GestationalWeightGainForAge>(
          this as GestationalWeightGainForAge, _$identity);

  /// Serializes this GestationalWeightGainForAge to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GestationalWeightGainForAge &&
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
    return 'GestationalWeightGainForAge(sex: $sex, age: $age, measurementResult: $measurementResult)';
  }
}

/// @nodoc
abstract mixin class $GestationalWeightGainForAgeCopyWith<$Res> {
  factory $GestationalWeightGainForAgeCopyWith(
          GestationalWeightGainForAge value,
          $Res Function(GestationalWeightGainForAge) _then) =
      _$GestationalWeightGainForAgeCopyWithImpl;
  @useResult
  $Res call({Sex sex, Age age, Mass measurementResult});

  $AgeCopyWith<$Res> get age;
}

/// @nodoc
class _$GestationalWeightGainForAgeCopyWithImpl<$Res>
    implements $GestationalWeightGainForAgeCopyWith<$Res> {
  _$GestationalWeightGainForAgeCopyWithImpl(this._self, this._then);

  final GestationalWeightGainForAge _self;
  final $Res Function(GestationalWeightGainForAge) _then;

  /// Create a copy of GestationalWeightGainForAge
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

  /// Create a copy of GestationalWeightGainForAge
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
class _GestationalWeightGainForAge extends GestationalWeightGainForAge {
  _GestationalWeightGainForAge(
      {required this.sex, required this.age, required this.measurementResult})
      : super._();
  factory _GestationalWeightGainForAge.fromJson(Map<String, dynamic> json) =>
      _$GestationalWeightGainForAgeFromJson(json);

  @override
  final Sex sex;
  @override
  final Age age;
  @override
  final Mass measurementResult;

  /// Create a copy of GestationalWeightGainForAge
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$GestationalWeightGainForAgeCopyWith<_GestationalWeightGainForAge>
      get copyWith => __$GestationalWeightGainForAgeCopyWithImpl<
          _GestationalWeightGainForAge>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$GestationalWeightGainForAgeToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GestationalWeightGainForAge &&
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
    return 'GestationalWeightGainForAge(sex: $sex, age: $age, measurementResult: $measurementResult)';
  }
}

/// @nodoc
abstract mixin class _$GestationalWeightGainForAgeCopyWith<$Res>
    implements $GestationalWeightGainForAgeCopyWith<$Res> {
  factory _$GestationalWeightGainForAgeCopyWith(
          _GestationalWeightGainForAge value,
          $Res Function(_GestationalWeightGainForAge) _then) =
      __$GestationalWeightGainForAgeCopyWithImpl;
  @override
  @useResult
  $Res call({Sex sex, Age age, Mass measurementResult});

  @override
  $AgeCopyWith<$Res> get age;
}

/// @nodoc
class __$GestationalWeightGainForAgeCopyWithImpl<$Res>
    implements _$GestationalWeightGainForAgeCopyWith<$Res> {
  __$GestationalWeightGainForAgeCopyWithImpl(this._self, this._then);

  final _GestationalWeightGainForAge _self;
  final $Res Function(_GestationalWeightGainForAge) _then;

  /// Create a copy of GestationalWeightGainForAge
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? sex = null,
    Object? age = null,
    Object? measurementResult = null,
  }) {
    return _then(_GestationalWeightGainForAge(
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

  /// Create a copy of GestationalWeightGainForAge
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
mixin _$CrownRumpLengthForAge {
  Age get age;
  Length get length;

  /// Create a copy of CrownRumpLengthForAge
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CrownRumpLengthForAgeCopyWith<CrownRumpLengthForAge> get copyWith =>
      _$CrownRumpLengthForAgeCopyWithImpl<CrownRumpLengthForAge>(
          this as CrownRumpLengthForAge, _$identity);

  /// Serializes this CrownRumpLengthForAge to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CrownRumpLengthForAge &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.length, length) || other.length == length));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, age, length);

  @override
  String toString() {
    return 'CrownRumpLengthForAge(age: $age, length: $length)';
  }
}

/// @nodoc
abstract mixin class $CrownRumpLengthForAgeCopyWith<$Res> {
  factory $CrownRumpLengthForAgeCopyWith(CrownRumpLengthForAge value,
          $Res Function(CrownRumpLengthForAge) _then) =
      _$CrownRumpLengthForAgeCopyWithImpl;
  @useResult
  $Res call({Age age, Length length});

  $AgeCopyWith<$Res> get age;
}

/// @nodoc
class _$CrownRumpLengthForAgeCopyWithImpl<$Res>
    implements $CrownRumpLengthForAgeCopyWith<$Res> {
  _$CrownRumpLengthForAgeCopyWithImpl(this._self, this._then);

  final CrownRumpLengthForAge _self;
  final $Res Function(CrownRumpLengthForAge) _then;

  /// Create a copy of CrownRumpLengthForAge
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

  /// Create a copy of CrownRumpLengthForAge
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
class _CrownRumpLengthForAge extends CrownRumpLengthForAge {
  _CrownRumpLengthForAge({required this.age, required this.length}) : super._();
  factory _CrownRumpLengthForAge.fromJson(Map<String, dynamic> json) =>
      _$CrownRumpLengthForAgeFromJson(json);

  @override
  final Age age;
  @override
  final Length length;

  /// Create a copy of CrownRumpLengthForAge
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CrownRumpLengthForAgeCopyWith<_CrownRumpLengthForAge> get copyWith =>
      __$CrownRumpLengthForAgeCopyWithImpl<_CrownRumpLengthForAge>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CrownRumpLengthForAgeToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CrownRumpLengthForAge &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.length, length) || other.length == length));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, age, length);

  @override
  String toString() {
    return 'CrownRumpLengthForAge(age: $age, length: $length)';
  }
}

/// @nodoc
abstract mixin class _$CrownRumpLengthForAgeCopyWith<$Res>
    implements $CrownRumpLengthForAgeCopyWith<$Res> {
  factory _$CrownRumpLengthForAgeCopyWith(_CrownRumpLengthForAge value,
          $Res Function(_CrownRumpLengthForAge) _then) =
      __$CrownRumpLengthForAgeCopyWithImpl;
  @override
  @useResult
  $Res call({Age age, Length length});

  @override
  $AgeCopyWith<$Res> get age;
}

/// @nodoc
class __$CrownRumpLengthForAgeCopyWithImpl<$Res>
    implements _$CrownRumpLengthForAgeCopyWith<$Res> {
  __$CrownRumpLengthForAgeCopyWithImpl(this._self, this._then);

  final _CrownRumpLengthForAge _self;
  final $Res Function(_CrownRumpLengthForAge) _then;

  /// Create a copy of CrownRumpLengthForAge
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? age = null,
    Object? length = null,
  }) {
    return _then(_CrownRumpLengthForAge(
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

  /// Create a copy of CrownRumpLengthForAge
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
