// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fenton.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FentonHeadCircumferenceForAge _$FentonHeadCircumferenceForAgeFromJson(
    Map<String, dynamic> json) {
  return _FentonHeadCircumferenceForAge.fromJson(json);
}

/// @nodoc
mixin _$FentonHeadCircumferenceForAge {
  Sex get sex => throw _privateConstructorUsedError;
  Age get age => throw _privateConstructorUsedError;
  Length get measurementResult => throw _privateConstructorUsedError;

  /// Serializes this FentonHeadCircumferenceForAge to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FentonHeadCircumferenceForAge
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FentonHeadCircumferenceForAgeCopyWith<FentonHeadCircumferenceForAge>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FentonHeadCircumferenceForAgeCopyWith<$Res> {
  factory $FentonHeadCircumferenceForAgeCopyWith(
          FentonHeadCircumferenceForAge value,
          $Res Function(FentonHeadCircumferenceForAge) then) =
      _$FentonHeadCircumferenceForAgeCopyWithImpl<$Res,
          FentonHeadCircumferenceForAge>;
  @useResult
  $Res call({Sex sex, Age age, Length measurementResult});

  $AgeCopyWith<$Res> get age;
}

/// @nodoc
class _$FentonHeadCircumferenceForAgeCopyWithImpl<$Res,
        $Val extends FentonHeadCircumferenceForAge>
    implements $FentonHeadCircumferenceForAgeCopyWith<$Res> {
  _$FentonHeadCircumferenceForAgeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FentonHeadCircumferenceForAge
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sex = null,
    Object? age = null,
    Object? measurementResult = null,
  }) {
    return _then(_value.copyWith(
      sex: null == sex
          ? _value.sex
          : sex // ignore: cast_nullable_to_non_nullable
              as Sex,
      age: null == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as Age,
      measurementResult: null == measurementResult
          ? _value.measurementResult
          : measurementResult // ignore: cast_nullable_to_non_nullable
              as Length,
    ) as $Val);
  }

  /// Create a copy of FentonHeadCircumferenceForAge
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AgeCopyWith<$Res> get age {
    return $AgeCopyWith<$Res>(_value.age, (value) {
      return _then(_value.copyWith(age: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FentonHeadCircumferenceForAgeImplCopyWith<$Res>
    implements $FentonHeadCircumferenceForAgeCopyWith<$Res> {
  factory _$$FentonHeadCircumferenceForAgeImplCopyWith(
          _$FentonHeadCircumferenceForAgeImpl value,
          $Res Function(_$FentonHeadCircumferenceForAgeImpl) then) =
      __$$FentonHeadCircumferenceForAgeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Sex sex, Age age, Length measurementResult});

  @override
  $AgeCopyWith<$Res> get age;
}

/// @nodoc
class __$$FentonHeadCircumferenceForAgeImplCopyWithImpl<$Res>
    extends _$FentonHeadCircumferenceForAgeCopyWithImpl<$Res,
        _$FentonHeadCircumferenceForAgeImpl>
    implements _$$FentonHeadCircumferenceForAgeImplCopyWith<$Res> {
  __$$FentonHeadCircumferenceForAgeImplCopyWithImpl(
      _$FentonHeadCircumferenceForAgeImpl _value,
      $Res Function(_$FentonHeadCircumferenceForAgeImpl) _then)
      : super(_value, _then);

  /// Create a copy of FentonHeadCircumferenceForAge
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sex = null,
    Object? age = null,
    Object? measurementResult = null,
  }) {
    return _then(_$FentonHeadCircumferenceForAgeImpl(
      sex: null == sex
          ? _value.sex
          : sex // ignore: cast_nullable_to_non_nullable
              as Sex,
      age: null == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as Age,
      measurementResult: null == measurementResult
          ? _value.measurementResult
          : measurementResult // ignore: cast_nullable_to_non_nullable
              as Length,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FentonHeadCircumferenceForAgeImpl
    extends _FentonHeadCircumferenceForAge {
  _$FentonHeadCircumferenceForAgeImpl(
      {required this.sex, required this.age, required this.measurementResult})
      : super._();

  factory _$FentonHeadCircumferenceForAgeImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$FentonHeadCircumferenceForAgeImplFromJson(json);

  @override
  final Sex sex;
  @override
  final Age age;
  @override
  final Length measurementResult;

  @override
  String toString() {
    return 'FentonHeadCircumferenceForAge(sex: $sex, age: $age, measurementResult: $measurementResult)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FentonHeadCircumferenceForAgeImpl &&
            (identical(other.sex, sex) || other.sex == sex) &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.measurementResult, measurementResult) ||
                other.measurementResult == measurementResult));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, sex, age, measurementResult);

  /// Create a copy of FentonHeadCircumferenceForAge
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FentonHeadCircumferenceForAgeImplCopyWith<
          _$FentonHeadCircumferenceForAgeImpl>
      get copyWith => __$$FentonHeadCircumferenceForAgeImplCopyWithImpl<
          _$FentonHeadCircumferenceForAgeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FentonHeadCircumferenceForAgeImplToJson(
      this,
    );
  }
}

abstract class _FentonHeadCircumferenceForAge
    extends FentonHeadCircumferenceForAge {
  factory _FentonHeadCircumferenceForAge(
          {required final Sex sex,
          required final Age age,
          required final Length measurementResult}) =
      _$FentonHeadCircumferenceForAgeImpl;
  _FentonHeadCircumferenceForAge._() : super._();

  factory _FentonHeadCircumferenceForAge.fromJson(Map<String, dynamic> json) =
      _$FentonHeadCircumferenceForAgeImpl.fromJson;

  @override
  Sex get sex;
  @override
  Age get age;
  @override
  Length get measurementResult;

  /// Create a copy of FentonHeadCircumferenceForAge
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FentonHeadCircumferenceForAgeImplCopyWith<
          _$FentonHeadCircumferenceForAgeImpl>
      get copyWith => throw _privateConstructorUsedError;
}

FentonLengthForAge _$FentonLengthForAgeFromJson(Map<String, dynamic> json) {
  return _FentonLengthForAge.fromJson(json);
}

/// @nodoc
mixin _$FentonLengthForAge {
  Sex get sex => throw _privateConstructorUsedError;
  Age get age => throw _privateConstructorUsedError;
  Length get lengthHeight => throw _privateConstructorUsedError;
  LengthHeightMeasurementPosition get measure =>
      throw _privateConstructorUsedError;

  /// Serializes this FentonLengthForAge to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FentonLengthForAge
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FentonLengthForAgeCopyWith<FentonLengthForAge> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FentonLengthForAgeCopyWith<$Res> {
  factory $FentonLengthForAgeCopyWith(
          FentonLengthForAge value, $Res Function(FentonLengthForAge) then) =
      _$FentonLengthForAgeCopyWithImpl<$Res, FentonLengthForAge>;
  @useResult
  $Res call(
      {Sex sex,
      Age age,
      Length lengthHeight,
      LengthHeightMeasurementPosition measure});

  $AgeCopyWith<$Res> get age;
}

/// @nodoc
class _$FentonLengthForAgeCopyWithImpl<$Res, $Val extends FentonLengthForAge>
    implements $FentonLengthForAgeCopyWith<$Res> {
  _$FentonLengthForAgeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FentonLengthForAge
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sex = null,
    Object? age = null,
    Object? lengthHeight = null,
    Object? measure = null,
  }) {
    return _then(_value.copyWith(
      sex: null == sex
          ? _value.sex
          : sex // ignore: cast_nullable_to_non_nullable
              as Sex,
      age: null == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as Age,
      lengthHeight: null == lengthHeight
          ? _value.lengthHeight
          : lengthHeight // ignore: cast_nullable_to_non_nullable
              as Length,
      measure: null == measure
          ? _value.measure
          : measure // ignore: cast_nullable_to_non_nullable
              as LengthHeightMeasurementPosition,
    ) as $Val);
  }

  /// Create a copy of FentonLengthForAge
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AgeCopyWith<$Res> get age {
    return $AgeCopyWith<$Res>(_value.age, (value) {
      return _then(_value.copyWith(age: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FentonLengthForAgeImplCopyWith<$Res>
    implements $FentonLengthForAgeCopyWith<$Res> {
  factory _$$FentonLengthForAgeImplCopyWith(_$FentonLengthForAgeImpl value,
          $Res Function(_$FentonLengthForAgeImpl) then) =
      __$$FentonLengthForAgeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Sex sex,
      Age age,
      Length lengthHeight,
      LengthHeightMeasurementPosition measure});

  @override
  $AgeCopyWith<$Res> get age;
}

/// @nodoc
class __$$FentonLengthForAgeImplCopyWithImpl<$Res>
    extends _$FentonLengthForAgeCopyWithImpl<$Res, _$FentonLengthForAgeImpl>
    implements _$$FentonLengthForAgeImplCopyWith<$Res> {
  __$$FentonLengthForAgeImplCopyWithImpl(_$FentonLengthForAgeImpl _value,
      $Res Function(_$FentonLengthForAgeImpl) _then)
      : super(_value, _then);

  /// Create a copy of FentonLengthForAge
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sex = null,
    Object? age = null,
    Object? lengthHeight = null,
    Object? measure = null,
  }) {
    return _then(_$FentonLengthForAgeImpl(
      sex: null == sex
          ? _value.sex
          : sex // ignore: cast_nullable_to_non_nullable
              as Sex,
      age: null == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as Age,
      lengthHeight: null == lengthHeight
          ? _value.lengthHeight
          : lengthHeight // ignore: cast_nullable_to_non_nullable
              as Length,
      measure: null == measure
          ? _value.measure
          : measure // ignore: cast_nullable_to_non_nullable
              as LengthHeightMeasurementPosition,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FentonLengthForAgeImpl extends _FentonLengthForAge {
  _$FentonLengthForAgeImpl(
      {required this.sex,
      required this.age,
      required this.lengthHeight,
      required this.measure})
      : super._();

  factory _$FentonLengthForAgeImpl.fromJson(Map<String, dynamic> json) =>
      _$$FentonLengthForAgeImplFromJson(json);

  @override
  final Sex sex;
  @override
  final Age age;
  @override
  final Length lengthHeight;
  @override
  final LengthHeightMeasurementPosition measure;

  @override
  String toString() {
    return 'FentonLengthForAge(sex: $sex, age: $age, lengthHeight: $lengthHeight, measure: $measure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FentonLengthForAgeImpl &&
            (identical(other.sex, sex) || other.sex == sex) &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.lengthHeight, lengthHeight) ||
                other.lengthHeight == lengthHeight) &&
            (identical(other.measure, measure) || other.measure == measure));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, sex, age, lengthHeight, measure);

  /// Create a copy of FentonLengthForAge
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FentonLengthForAgeImplCopyWith<_$FentonLengthForAgeImpl> get copyWith =>
      __$$FentonLengthForAgeImplCopyWithImpl<_$FentonLengthForAgeImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FentonLengthForAgeImplToJson(
      this,
    );
  }
}

abstract class _FentonLengthForAge extends FentonLengthForAge {
  factory _FentonLengthForAge(
          {required final Sex sex,
          required final Age age,
          required final Length lengthHeight,
          required final LengthHeightMeasurementPosition measure}) =
      _$FentonLengthForAgeImpl;
  _FentonLengthForAge._() : super._();

  factory _FentonLengthForAge.fromJson(Map<String, dynamic> json) =
      _$FentonLengthForAgeImpl.fromJson;

  @override
  Sex get sex;
  @override
  Age get age;
  @override
  Length get lengthHeight;
  @override
  LengthHeightMeasurementPosition get measure;

  /// Create a copy of FentonLengthForAge
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FentonLengthForAgeImplCopyWith<_$FentonLengthForAgeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FentonWeightForAge _$FentonWeightForAgeFromJson(Map<String, dynamic> json) {
  return _FentonWeightForAge.fromJson(json);
}

/// @nodoc
mixin _$FentonWeightForAge {
  Sex get sex => throw _privateConstructorUsedError;
  Age get age => throw _privateConstructorUsedError;
  Mass get weight => throw _privateConstructorUsedError;

  /// Serializes this FentonWeightForAge to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FentonWeightForAge
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FentonWeightForAgeCopyWith<FentonWeightForAge> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FentonWeightForAgeCopyWith<$Res> {
  factory $FentonWeightForAgeCopyWith(
          FentonWeightForAge value, $Res Function(FentonWeightForAge) then) =
      _$FentonWeightForAgeCopyWithImpl<$Res, FentonWeightForAge>;
  @useResult
  $Res call({Sex sex, Age age, Mass weight});

  $AgeCopyWith<$Res> get age;
}

/// @nodoc
class _$FentonWeightForAgeCopyWithImpl<$Res, $Val extends FentonWeightForAge>
    implements $FentonWeightForAgeCopyWith<$Res> {
  _$FentonWeightForAgeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FentonWeightForAge
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sex = null,
    Object? age = null,
    Object? weight = null,
  }) {
    return _then(_value.copyWith(
      sex: null == sex
          ? _value.sex
          : sex // ignore: cast_nullable_to_non_nullable
              as Sex,
      age: null == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as Age,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as Mass,
    ) as $Val);
  }

  /// Create a copy of FentonWeightForAge
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AgeCopyWith<$Res> get age {
    return $AgeCopyWith<$Res>(_value.age, (value) {
      return _then(_value.copyWith(age: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FentonWeightForAgeImplCopyWith<$Res>
    implements $FentonWeightForAgeCopyWith<$Res> {
  factory _$$FentonWeightForAgeImplCopyWith(_$FentonWeightForAgeImpl value,
          $Res Function(_$FentonWeightForAgeImpl) then) =
      __$$FentonWeightForAgeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Sex sex, Age age, Mass weight});

  @override
  $AgeCopyWith<$Res> get age;
}

/// @nodoc
class __$$FentonWeightForAgeImplCopyWithImpl<$Res>
    extends _$FentonWeightForAgeCopyWithImpl<$Res, _$FentonWeightForAgeImpl>
    implements _$$FentonWeightForAgeImplCopyWith<$Res> {
  __$$FentonWeightForAgeImplCopyWithImpl(_$FentonWeightForAgeImpl _value,
      $Res Function(_$FentonWeightForAgeImpl) _then)
      : super(_value, _then);

  /// Create a copy of FentonWeightForAge
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sex = null,
    Object? age = null,
    Object? weight = null,
  }) {
    return _then(_$FentonWeightForAgeImpl(
      sex: null == sex
          ? _value.sex
          : sex // ignore: cast_nullable_to_non_nullable
              as Sex,
      age: null == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as Age,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as Mass,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FentonWeightForAgeImpl extends _FentonWeightForAge {
  _$FentonWeightForAgeImpl(
      {required this.sex, required this.age, required this.weight})
      : super._();

  factory _$FentonWeightForAgeImpl.fromJson(Map<String, dynamic> json) =>
      _$$FentonWeightForAgeImplFromJson(json);

  @override
  final Sex sex;
  @override
  final Age age;
  @override
  final Mass weight;

  @override
  String toString() {
    return 'FentonWeightForAge(sex: $sex, age: $age, weight: $weight)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FentonWeightForAgeImpl &&
            (identical(other.sex, sex) || other.sex == sex) &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.weight, weight) || other.weight == weight));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, sex, age, weight);

  /// Create a copy of FentonWeightForAge
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FentonWeightForAgeImplCopyWith<_$FentonWeightForAgeImpl> get copyWith =>
      __$$FentonWeightForAgeImplCopyWithImpl<_$FentonWeightForAgeImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FentonWeightForAgeImplToJson(
      this,
    );
  }
}

abstract class _FentonWeightForAge extends FentonWeightForAge {
  factory _FentonWeightForAge(
      {required final Sex sex,
      required final Age age,
      required final Mass weight}) = _$FentonWeightForAgeImpl;
  _FentonWeightForAge._() : super._();

  factory _FentonWeightForAge.fromJson(Map<String, dynamic> json) =
      _$FentonWeightForAgeImpl.fromJson;

  @override
  Sex get sex;
  @override
  Age get age;
  @override
  Mass get weight;

  /// Create a copy of FentonWeightForAge
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FentonWeightForAgeImplCopyWith<_$FentonWeightForAgeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
