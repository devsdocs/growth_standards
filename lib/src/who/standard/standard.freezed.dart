// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'standard.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ArmCircumferenceForAge _$ArmCircumferenceForAgeFromJson(
    Map<String, dynamic> json) {
  return _ArmCircumferenceForAge.fromJson(json);
}

/// @nodoc
mixin _$ArmCircumferenceForAge {
  Date? get observationDate => throw _privateConstructorUsedError;
  Sex get sex => throw _privateConstructorUsedError;
  Age get age => throw _privateConstructorUsedError;
  @LengthConverter()
  Length get measurementResult => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ArmCircumferenceForAgeCopyWith<ArmCircumferenceForAge> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArmCircumferenceForAgeCopyWith<$Res> {
  factory $ArmCircumferenceForAgeCopyWith(ArmCircumferenceForAge value,
          $Res Function(ArmCircumferenceForAge) then) =
      _$ArmCircumferenceForAgeCopyWithImpl<$Res, ArmCircumferenceForAge>;
  @useResult
  $Res call(
      {Date? observationDate,
      Sex sex,
      Age age,
      @LengthConverter() Length measurementResult});

  $DateCopyWith<$Res>? get observationDate;
  $AgeCopyWith<$Res> get age;
}

/// @nodoc
class _$ArmCircumferenceForAgeCopyWithImpl<$Res,
        $Val extends ArmCircumferenceForAge>
    implements $ArmCircumferenceForAgeCopyWith<$Res> {
  _$ArmCircumferenceForAgeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? observationDate = freezed,
    Object? sex = null,
    Object? age = null,
    Object? measurementResult = null,
  }) {
    return _then(_value.copyWith(
      observationDate: freezed == observationDate
          ? _value.observationDate
          : observationDate // ignore: cast_nullable_to_non_nullable
              as Date?,
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

  @override
  @pragma('vm:prefer-inline')
  $DateCopyWith<$Res>? get observationDate {
    if (_value.observationDate == null) {
      return null;
    }

    return $DateCopyWith<$Res>(_value.observationDate!, (value) {
      return _then(_value.copyWith(observationDate: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AgeCopyWith<$Res> get age {
    return $AgeCopyWith<$Res>(_value.age, (value) {
      return _then(_value.copyWith(age: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ArmCircumferenceForAgeImplCopyWith<$Res>
    implements $ArmCircumferenceForAgeCopyWith<$Res> {
  factory _$$ArmCircumferenceForAgeImplCopyWith(
          _$ArmCircumferenceForAgeImpl value,
          $Res Function(_$ArmCircumferenceForAgeImpl) then) =
      __$$ArmCircumferenceForAgeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Date? observationDate,
      Sex sex,
      Age age,
      @LengthConverter() Length measurementResult});

  @override
  $DateCopyWith<$Res>? get observationDate;
  @override
  $AgeCopyWith<$Res> get age;
}

/// @nodoc
class __$$ArmCircumferenceForAgeImplCopyWithImpl<$Res>
    extends _$ArmCircumferenceForAgeCopyWithImpl<$Res,
        _$ArmCircumferenceForAgeImpl>
    implements _$$ArmCircumferenceForAgeImplCopyWith<$Res> {
  __$$ArmCircumferenceForAgeImplCopyWithImpl(
      _$ArmCircumferenceForAgeImpl _value,
      $Res Function(_$ArmCircumferenceForAgeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? observationDate = freezed,
    Object? sex = null,
    Object? age = null,
    Object? measurementResult = null,
  }) {
    return _then(_$ArmCircumferenceForAgeImpl(
      observationDate: freezed == observationDate
          ? _value.observationDate
          : observationDate // ignore: cast_nullable_to_non_nullable
              as Date?,
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
class _$ArmCircumferenceForAgeImpl extends _ArmCircumferenceForAge {
  _$ArmCircumferenceForAgeImpl(
      {this.observationDate,
      required this.sex,
      required this.age,
      @LengthConverter() required this.measurementResult})
      : assert(age.ageInTotalDaysByNow >= 91 && age.ageInTotalDaysByNow <= 1856,
            'Age must be in range of 91 - 1856 days'),
        assert(
            observationDate == null ||
                observationDate.isSameOrBefore(Date.today()) ||
                observationDate.isSameOrAfter(age.dateOfBirth),
            'Observation date is impossible, because happen after today or before birth'),
        assert(
            observationDate == null ||
                observationDate.isSameOrAfter(age.dateAtDaysAfterBirth(91)),
            'Observation date is impossible, because happen after today or before birth'),
        super._();

  factory _$ArmCircumferenceForAgeImpl.fromJson(Map<String, dynamic> json) =>
      _$$ArmCircumferenceForAgeImplFromJson(json);

  @override
  final Date? observationDate;
  @override
  final Sex sex;
  @override
  final Age age;
  @override
  @LengthConverter()
  final Length measurementResult;

  @override
  String toString() {
    return 'ArmCircumferenceForAge(observationDate: $observationDate, sex: $sex, age: $age, measurementResult: $measurementResult)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArmCircumferenceForAgeImpl &&
            (identical(other.observationDate, observationDate) ||
                other.observationDate == observationDate) &&
            (identical(other.sex, sex) || other.sex == sex) &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.measurementResult, measurementResult) ||
                other.measurementResult == measurementResult));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, observationDate, sex, age, measurementResult);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ArmCircumferenceForAgeImplCopyWith<_$ArmCircumferenceForAgeImpl>
      get copyWith => __$$ArmCircumferenceForAgeImplCopyWithImpl<
          _$ArmCircumferenceForAgeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ArmCircumferenceForAgeImplToJson(
      this,
    );
  }
}

abstract class _ArmCircumferenceForAge extends ArmCircumferenceForAge {
  factory _ArmCircumferenceForAge(
          {final Date? observationDate,
          required final Sex sex,
          required final Age age,
          @LengthConverter() required final Length measurementResult}) =
      _$ArmCircumferenceForAgeImpl;
  _ArmCircumferenceForAge._() : super._();

  factory _ArmCircumferenceForAge.fromJson(Map<String, dynamic> json) =
      _$ArmCircumferenceForAgeImpl.fromJson;

  @override
  Date? get observationDate;
  @override
  Sex get sex;
  @override
  Age get age;
  @override
  @LengthConverter()
  Length get measurementResult;
  @override
  @JsonKey(ignore: true)
  _$$ArmCircumferenceForAgeImplCopyWith<_$ArmCircumferenceForAgeImpl>
      get copyWith => throw _privateConstructorUsedError;
}

BodyMassIndexMeasurement _$BodyMassIndexMeasurementFromJson(
    Map<String, dynamic> json) {
  return _BodyMassIndexMeasurement.fromJson(json);
}

/// @nodoc
mixin _$BodyMassIndexMeasurement {
  num get value => throw _privateConstructorUsedError;
  Age get age => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BodyMassIndexMeasurementCopyWith<BodyMassIndexMeasurement> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BodyMassIndexMeasurementCopyWith<$Res> {
  factory $BodyMassIndexMeasurementCopyWith(BodyMassIndexMeasurement value,
          $Res Function(BodyMassIndexMeasurement) then) =
      _$BodyMassIndexMeasurementCopyWithImpl<$Res, BodyMassIndexMeasurement>;
  @useResult
  $Res call({num value, Age age});

  $AgeCopyWith<$Res> get age;
}

/// @nodoc
class _$BodyMassIndexMeasurementCopyWithImpl<$Res,
        $Val extends BodyMassIndexMeasurement>
    implements $BodyMassIndexMeasurementCopyWith<$Res> {
  _$BodyMassIndexMeasurementCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
    Object? age = null,
  }) {
    return _then(_value.copyWith(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as num,
      age: null == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as Age,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AgeCopyWith<$Res> get age {
    return $AgeCopyWith<$Res>(_value.age, (value) {
      return _then(_value.copyWith(age: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BodyMassIndexMeasurementImplCopyWith<$Res>
    implements $BodyMassIndexMeasurementCopyWith<$Res> {
  factory _$$BodyMassIndexMeasurementImplCopyWith(
          _$BodyMassIndexMeasurementImpl value,
          $Res Function(_$BodyMassIndexMeasurementImpl) then) =
      __$$BodyMassIndexMeasurementImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({num value, Age age});

  @override
  $AgeCopyWith<$Res> get age;
}

/// @nodoc
class __$$BodyMassIndexMeasurementImplCopyWithImpl<$Res>
    extends _$BodyMassIndexMeasurementCopyWithImpl<$Res,
        _$BodyMassIndexMeasurementImpl>
    implements _$$BodyMassIndexMeasurementImplCopyWith<$Res> {
  __$$BodyMassIndexMeasurementImplCopyWithImpl(
      _$BodyMassIndexMeasurementImpl _value,
      $Res Function(_$BodyMassIndexMeasurementImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
    Object? age = null,
  }) {
    return _then(_$BodyMassIndexMeasurementImpl(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as num,
      age: null == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as Age,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BodyMassIndexMeasurementImpl extends _BodyMassIndexMeasurement {
  _$BodyMassIndexMeasurementImpl(this.value, {required this.age}) : super._();

  factory _$BodyMassIndexMeasurementImpl.fromJson(Map<String, dynamic> json) =>
      _$$BodyMassIndexMeasurementImplFromJson(json);

  @override
  final num value;
  @override
  final Age age;

  @override
  String toString() {
    return 'BodyMassIndexMeasurement(value: $value, age: $age)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BodyMassIndexMeasurementImpl &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.age, age) || other.age == age));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, value, age);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BodyMassIndexMeasurementImplCopyWith<_$BodyMassIndexMeasurementImpl>
      get copyWith => __$$BodyMassIndexMeasurementImplCopyWithImpl<
          _$BodyMassIndexMeasurementImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BodyMassIndexMeasurementImplToJson(
      this,
    );
  }
}

abstract class _BodyMassIndexMeasurement extends BodyMassIndexMeasurement {
  factory _BodyMassIndexMeasurement(final num value, {required final Age age}) =
      _$BodyMassIndexMeasurementImpl;
  _BodyMassIndexMeasurement._() : super._();

  factory _BodyMassIndexMeasurement.fromJson(Map<String, dynamic> json) =
      _$BodyMassIndexMeasurementImpl.fromJson;

  @override
  num get value;
  @override
  Age get age;
  @override
  @JsonKey(ignore: true)
  _$$BodyMassIndexMeasurementImplCopyWith<_$BodyMassIndexMeasurementImpl>
      get copyWith => throw _privateConstructorUsedError;
}

BodyMassIndexForAge _$BodyMassIndexForAgeFromJson(Map<String, dynamic> json) {
  return _BodyMassIndexForAge.fromJson(json);
}

/// @nodoc
mixin _$BodyMassIndexForAge {
  Date? get observationDate => throw _privateConstructorUsedError;
  Sex get sex => throw _privateConstructorUsedError;
  @BodyMassIndexMeasurementConverter()
  BodyMassIndexMeasurement get bodyMassIndexMeasurement =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BodyMassIndexForAgeCopyWith<BodyMassIndexForAge> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BodyMassIndexForAgeCopyWith<$Res> {
  factory $BodyMassIndexForAgeCopyWith(
          BodyMassIndexForAge value, $Res Function(BodyMassIndexForAge) then) =
      _$BodyMassIndexForAgeCopyWithImpl<$Res, BodyMassIndexForAge>;
  @useResult
  $Res call(
      {Date? observationDate,
      Sex sex,
      @BodyMassIndexMeasurementConverter()
      BodyMassIndexMeasurement bodyMassIndexMeasurement});

  $DateCopyWith<$Res>? get observationDate;
  $BodyMassIndexMeasurementCopyWith<$Res> get bodyMassIndexMeasurement;
}

/// @nodoc
class _$BodyMassIndexForAgeCopyWithImpl<$Res, $Val extends BodyMassIndexForAge>
    implements $BodyMassIndexForAgeCopyWith<$Res> {
  _$BodyMassIndexForAgeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? observationDate = freezed,
    Object? sex = null,
    Object? bodyMassIndexMeasurement = null,
  }) {
    return _then(_value.copyWith(
      observationDate: freezed == observationDate
          ? _value.observationDate
          : observationDate // ignore: cast_nullable_to_non_nullable
              as Date?,
      sex: null == sex
          ? _value.sex
          : sex // ignore: cast_nullable_to_non_nullable
              as Sex,
      bodyMassIndexMeasurement: null == bodyMassIndexMeasurement
          ? _value.bodyMassIndexMeasurement
          : bodyMassIndexMeasurement // ignore: cast_nullable_to_non_nullable
              as BodyMassIndexMeasurement,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DateCopyWith<$Res>? get observationDate {
    if (_value.observationDate == null) {
      return null;
    }

    return $DateCopyWith<$Res>(_value.observationDate!, (value) {
      return _then(_value.copyWith(observationDate: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $BodyMassIndexMeasurementCopyWith<$Res> get bodyMassIndexMeasurement {
    return $BodyMassIndexMeasurementCopyWith<$Res>(
        _value.bodyMassIndexMeasurement, (value) {
      return _then(_value.copyWith(bodyMassIndexMeasurement: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BodyMassIndexForAgeImplCopyWith<$Res>
    implements $BodyMassIndexForAgeCopyWith<$Res> {
  factory _$$BodyMassIndexForAgeImplCopyWith(_$BodyMassIndexForAgeImpl value,
          $Res Function(_$BodyMassIndexForAgeImpl) then) =
      __$$BodyMassIndexForAgeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Date? observationDate,
      Sex sex,
      @BodyMassIndexMeasurementConverter()
      BodyMassIndexMeasurement bodyMassIndexMeasurement});

  @override
  $DateCopyWith<$Res>? get observationDate;
  @override
  $BodyMassIndexMeasurementCopyWith<$Res> get bodyMassIndexMeasurement;
}

/// @nodoc
class __$$BodyMassIndexForAgeImplCopyWithImpl<$Res>
    extends _$BodyMassIndexForAgeCopyWithImpl<$Res, _$BodyMassIndexForAgeImpl>
    implements _$$BodyMassIndexForAgeImplCopyWith<$Res> {
  __$$BodyMassIndexForAgeImplCopyWithImpl(_$BodyMassIndexForAgeImpl _value,
      $Res Function(_$BodyMassIndexForAgeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? observationDate = freezed,
    Object? sex = null,
    Object? bodyMassIndexMeasurement = null,
  }) {
    return _then(_$BodyMassIndexForAgeImpl(
      observationDate: freezed == observationDate
          ? _value.observationDate
          : observationDate // ignore: cast_nullable_to_non_nullable
              as Date?,
      sex: null == sex
          ? _value.sex
          : sex // ignore: cast_nullable_to_non_nullable
              as Sex,
      bodyMassIndexMeasurement: null == bodyMassIndexMeasurement
          ? _value.bodyMassIndexMeasurement
          : bodyMassIndexMeasurement // ignore: cast_nullable_to_non_nullable
              as BodyMassIndexMeasurement,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BodyMassIndexForAgeImpl extends _BodyMassIndexForAge {
  _$BodyMassIndexForAgeImpl(
      {this.observationDate,
      required this.sex,
      @BodyMassIndexMeasurementConverter()
      required this.bodyMassIndexMeasurement})
      : assert(
            bodyMassIndexMeasurement.age.ageInTotalDaysByNow >= 0 &&
                bodyMassIndexMeasurement.age.ageInTotalDaysByNow <= 1856,
            'Age must be in range of 0 - 1856 days'),
        assert(
            observationDate == null ||
                observationDate.isSameOrBefore(Date.today()) ||
                observationDate
                    .isSameOrAfter(bodyMassIndexMeasurement.age.dateOfBirth),
            'Observation date is impossible, because happen after today or before birth'),
        super._();

  factory _$BodyMassIndexForAgeImpl.fromJson(Map<String, dynamic> json) =>
      _$$BodyMassIndexForAgeImplFromJson(json);

  @override
  final Date? observationDate;
  @override
  final Sex sex;
  @override
  @BodyMassIndexMeasurementConverter()
  final BodyMassIndexMeasurement bodyMassIndexMeasurement;

  @override
  String toString() {
    return 'BodyMassIndexForAge(observationDate: $observationDate, sex: $sex, bodyMassIndexMeasurement: $bodyMassIndexMeasurement)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BodyMassIndexForAgeImpl &&
            (identical(other.observationDate, observationDate) ||
                other.observationDate == observationDate) &&
            (identical(other.sex, sex) || other.sex == sex) &&
            (identical(
                    other.bodyMassIndexMeasurement, bodyMassIndexMeasurement) ||
                other.bodyMassIndexMeasurement == bodyMassIndexMeasurement));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, observationDate, sex, bodyMassIndexMeasurement);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BodyMassIndexForAgeImplCopyWith<_$BodyMassIndexForAgeImpl> get copyWith =>
      __$$BodyMassIndexForAgeImplCopyWithImpl<_$BodyMassIndexForAgeImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BodyMassIndexForAgeImplToJson(
      this,
    );
  }
}

abstract class _BodyMassIndexForAge extends BodyMassIndexForAge {
  factory _BodyMassIndexForAge(
          {final Date? observationDate,
          required final Sex sex,
          @BodyMassIndexMeasurementConverter()
          required final BodyMassIndexMeasurement bodyMassIndexMeasurement}) =
      _$BodyMassIndexForAgeImpl;
  _BodyMassIndexForAge._() : super._();

  factory _BodyMassIndexForAge.fromJson(Map<String, dynamic> json) =
      _$BodyMassIndexForAgeImpl.fromJson;

  @override
  Date? get observationDate;
  @override
  Sex get sex;
  @override
  @BodyMassIndexMeasurementConverter()
  BodyMassIndexMeasurement get bodyMassIndexMeasurement;
  @override
  @JsonKey(ignore: true)
  _$$BodyMassIndexForAgeImplCopyWith<_$BodyMassIndexForAgeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

HeadCircumferenceForAge _$HeadCircumferenceForAgeFromJson(
    Map<String, dynamic> json) {
  return _HeadCircumferenceForAge.fromJson(json);
}

/// @nodoc
mixin _$HeadCircumferenceForAge {
  Date? get observationDate => throw _privateConstructorUsedError;
  Sex get sex => throw _privateConstructorUsedError;
  Age get age => throw _privateConstructorUsedError;
  @LengthConverter()
  Length get measurementResult => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HeadCircumferenceForAgeCopyWith<HeadCircumferenceForAge> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HeadCircumferenceForAgeCopyWith<$Res> {
  factory $HeadCircumferenceForAgeCopyWith(HeadCircumferenceForAge value,
          $Res Function(HeadCircumferenceForAge) then) =
      _$HeadCircumferenceForAgeCopyWithImpl<$Res, HeadCircumferenceForAge>;
  @useResult
  $Res call(
      {Date? observationDate,
      Sex sex,
      Age age,
      @LengthConverter() Length measurementResult});

  $DateCopyWith<$Res>? get observationDate;
  $AgeCopyWith<$Res> get age;
}

/// @nodoc
class _$HeadCircumferenceForAgeCopyWithImpl<$Res,
        $Val extends HeadCircumferenceForAge>
    implements $HeadCircumferenceForAgeCopyWith<$Res> {
  _$HeadCircumferenceForAgeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? observationDate = freezed,
    Object? sex = null,
    Object? age = null,
    Object? measurementResult = null,
  }) {
    return _then(_value.copyWith(
      observationDate: freezed == observationDate
          ? _value.observationDate
          : observationDate // ignore: cast_nullable_to_non_nullable
              as Date?,
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

  @override
  @pragma('vm:prefer-inline')
  $DateCopyWith<$Res>? get observationDate {
    if (_value.observationDate == null) {
      return null;
    }

    return $DateCopyWith<$Res>(_value.observationDate!, (value) {
      return _then(_value.copyWith(observationDate: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AgeCopyWith<$Res> get age {
    return $AgeCopyWith<$Res>(_value.age, (value) {
      return _then(_value.copyWith(age: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HeadCircumferenceForAgeImplCopyWith<$Res>
    implements $HeadCircumferenceForAgeCopyWith<$Res> {
  factory _$$HeadCircumferenceForAgeImplCopyWith(
          _$HeadCircumferenceForAgeImpl value,
          $Res Function(_$HeadCircumferenceForAgeImpl) then) =
      __$$HeadCircumferenceForAgeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Date? observationDate,
      Sex sex,
      Age age,
      @LengthConverter() Length measurementResult});

  @override
  $DateCopyWith<$Res>? get observationDate;
  @override
  $AgeCopyWith<$Res> get age;
}

/// @nodoc
class __$$HeadCircumferenceForAgeImplCopyWithImpl<$Res>
    extends _$HeadCircumferenceForAgeCopyWithImpl<$Res,
        _$HeadCircumferenceForAgeImpl>
    implements _$$HeadCircumferenceForAgeImplCopyWith<$Res> {
  __$$HeadCircumferenceForAgeImplCopyWithImpl(
      _$HeadCircumferenceForAgeImpl _value,
      $Res Function(_$HeadCircumferenceForAgeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? observationDate = freezed,
    Object? sex = null,
    Object? age = null,
    Object? measurementResult = null,
  }) {
    return _then(_$HeadCircumferenceForAgeImpl(
      observationDate: freezed == observationDate
          ? _value.observationDate
          : observationDate // ignore: cast_nullable_to_non_nullable
              as Date?,
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
class _$HeadCircumferenceForAgeImpl extends _HeadCircumferenceForAge {
  _$HeadCircumferenceForAgeImpl(
      {this.observationDate,
      required this.sex,
      required this.age,
      @LengthConverter() required this.measurementResult})
      : assert(age.ageInTotalDaysByNow >= 0 && age.ageInTotalDaysByNow <= 1856,
            'Age must be in range of 0 - 1856 days'),
        assert(
            observationDate == null ||
                observationDate.isSameOrBefore(Date.today()) ||
                observationDate.isSameOrAfter(age.dateOfBirth),
            'Observation date is impossible, because happen after today or before birth'),
        super._();

  factory _$HeadCircumferenceForAgeImpl.fromJson(Map<String, dynamic> json) =>
      _$$HeadCircumferenceForAgeImplFromJson(json);

  @override
  final Date? observationDate;
  @override
  final Sex sex;
  @override
  final Age age;
  @override
  @LengthConverter()
  final Length measurementResult;

  @override
  String toString() {
    return 'HeadCircumferenceForAge(observationDate: $observationDate, sex: $sex, age: $age, measurementResult: $measurementResult)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HeadCircumferenceForAgeImpl &&
            (identical(other.observationDate, observationDate) ||
                other.observationDate == observationDate) &&
            (identical(other.sex, sex) || other.sex == sex) &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.measurementResult, measurementResult) ||
                other.measurementResult == measurementResult));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, observationDate, sex, age, measurementResult);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HeadCircumferenceForAgeImplCopyWith<_$HeadCircumferenceForAgeImpl>
      get copyWith => __$$HeadCircumferenceForAgeImplCopyWithImpl<
          _$HeadCircumferenceForAgeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HeadCircumferenceForAgeImplToJson(
      this,
    );
  }
}

abstract class _HeadCircumferenceForAge extends HeadCircumferenceForAge {
  factory _HeadCircumferenceForAge(
          {final Date? observationDate,
          required final Sex sex,
          required final Age age,
          @LengthConverter() required final Length measurementResult}) =
      _$HeadCircumferenceForAgeImpl;
  _HeadCircumferenceForAge._() : super._();

  factory _HeadCircumferenceForAge.fromJson(Map<String, dynamic> json) =
      _$HeadCircumferenceForAgeImpl.fromJson;

  @override
  Date? get observationDate;
  @override
  Sex get sex;
  @override
  Age get age;
  @override
  @LengthConverter()
  Length get measurementResult;
  @override
  @JsonKey(ignore: true)
  _$$HeadCircumferenceForAgeImplCopyWith<_$HeadCircumferenceForAgeImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HeadCircumferenceVelocityForAge {
  Date? get observationDate => throw _privateConstructorUsedError;
  Sex get sex => throw _privateConstructorUsedError;
  Age get age => throw _privateConstructorUsedError;
  Map<Date, Length> get pastMeasurement => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HeadCircumferenceVelocityForAgeCopyWith<HeadCircumferenceVelocityForAge>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HeadCircumferenceVelocityForAgeCopyWith<$Res> {
  factory $HeadCircumferenceVelocityForAgeCopyWith(
          HeadCircumferenceVelocityForAge value,
          $Res Function(HeadCircumferenceVelocityForAge) then) =
      _$HeadCircumferenceVelocityForAgeCopyWithImpl<$Res,
          HeadCircumferenceVelocityForAge>;
  @useResult
  $Res call(
      {Date? observationDate,
      Sex sex,
      Age age,
      Map<Date, Length> pastMeasurement});

  $DateCopyWith<$Res>? get observationDate;
  $AgeCopyWith<$Res> get age;
}

/// @nodoc
class _$HeadCircumferenceVelocityForAgeCopyWithImpl<$Res,
        $Val extends HeadCircumferenceVelocityForAge>
    implements $HeadCircumferenceVelocityForAgeCopyWith<$Res> {
  _$HeadCircumferenceVelocityForAgeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? observationDate = freezed,
    Object? sex = null,
    Object? age = null,
    Object? pastMeasurement = null,
  }) {
    return _then(_value.copyWith(
      observationDate: freezed == observationDate
          ? _value.observationDate
          : observationDate // ignore: cast_nullable_to_non_nullable
              as Date?,
      sex: null == sex
          ? _value.sex
          : sex // ignore: cast_nullable_to_non_nullable
              as Sex,
      age: null == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as Age,
      pastMeasurement: null == pastMeasurement
          ? _value.pastMeasurement
          : pastMeasurement // ignore: cast_nullable_to_non_nullable
              as Map<Date, Length>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DateCopyWith<$Res>? get observationDate {
    if (_value.observationDate == null) {
      return null;
    }

    return $DateCopyWith<$Res>(_value.observationDate!, (value) {
      return _then(_value.copyWith(observationDate: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AgeCopyWith<$Res> get age {
    return $AgeCopyWith<$Res>(_value.age, (value) {
      return _then(_value.copyWith(age: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HeadCircumferenceVelocityForAgeImplCopyWith<$Res>
    implements $HeadCircumferenceVelocityForAgeCopyWith<$Res> {
  factory _$$HeadCircumferenceVelocityForAgeImplCopyWith(
          _$HeadCircumferenceVelocityForAgeImpl value,
          $Res Function(_$HeadCircumferenceVelocityForAgeImpl) then) =
      __$$HeadCircumferenceVelocityForAgeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Date? observationDate,
      Sex sex,
      Age age,
      Map<Date, Length> pastMeasurement});

  @override
  $DateCopyWith<$Res>? get observationDate;
  @override
  $AgeCopyWith<$Res> get age;
}

/// @nodoc
class __$$HeadCircumferenceVelocityForAgeImplCopyWithImpl<$Res>
    extends _$HeadCircumferenceVelocityForAgeCopyWithImpl<$Res,
        _$HeadCircumferenceVelocityForAgeImpl>
    implements _$$HeadCircumferenceVelocityForAgeImplCopyWith<$Res> {
  __$$HeadCircumferenceVelocityForAgeImplCopyWithImpl(
      _$HeadCircumferenceVelocityForAgeImpl _value,
      $Res Function(_$HeadCircumferenceVelocityForAgeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? observationDate = freezed,
    Object? sex = null,
    Object? age = null,
    Object? pastMeasurement = null,
  }) {
    return _then(_$HeadCircumferenceVelocityForAgeImpl(
      observationDate: freezed == observationDate
          ? _value.observationDate
          : observationDate // ignore: cast_nullable_to_non_nullable
              as Date?,
      sex: null == sex
          ? _value.sex
          : sex // ignore: cast_nullable_to_non_nullable
              as Sex,
      age: null == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as Age,
      pastMeasurement: null == pastMeasurement
          ? _value._pastMeasurement
          : pastMeasurement // ignore: cast_nullable_to_non_nullable
              as Map<Date, Length>,
    ));
  }
}

/// @nodoc

class _$HeadCircumferenceVelocityForAgeImpl
    extends _HeadCircumferenceVelocityForAge {
  _$HeadCircumferenceVelocityForAgeImpl(
      {this.observationDate,
      required this.sex,
      required this.age,
      required final Map<Date, Length> pastMeasurement})
      : assert(age.ageInTotalDaysByNow >= 0 && age.ageInTotalMonthsByNow <= 24,
            'Age must be in range of 0 days - 24 months'),
        assert(pastMeasurement.isNotEmpty,
            'Calculation can not be done as past measurment is empty'),
        assert(
            pastMeasurement.keys
                .every((element) => element.isNotSameAs(Date.today())),
            'Calculation can not be done as there is todays date in past measurment'),
        assert(
            pastMeasurement.keys
                .every((element) => element.isBefore(Date.today())),
            'Calculation can not be done as there is future date in past measurment'),
        assert(
            pastMeasurement.keys
                .every((element) => element.isSameOrAfter(age.dateOfBirth)),
            'Calculation can not be done as there is date less than Date of Birth in past measurement, if you find this exception is a mistake, try to provide exact $Age by using ${Age.byDate} or $Date by using ${Date.fromDateTime} in Past Measurement'),
        _pastMeasurement = pastMeasurement,
        super._();

  @override
  final Date? observationDate;
  @override
  final Sex sex;
  @override
  final Age age;
  final Map<Date, Length> _pastMeasurement;
  @override
  Map<Date, Length> get pastMeasurement {
    if (_pastMeasurement is EqualUnmodifiableMapView) return _pastMeasurement;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_pastMeasurement);
  }

  @override
  String toString() {
    return 'HeadCircumferenceVelocityForAge(observationDate: $observationDate, sex: $sex, age: $age, pastMeasurement: $pastMeasurement)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HeadCircumferenceVelocityForAgeImpl &&
            (identical(other.observationDate, observationDate) ||
                other.observationDate == observationDate) &&
            (identical(other.sex, sex) || other.sex == sex) &&
            (identical(other.age, age) || other.age == age) &&
            const DeepCollectionEquality()
                .equals(other._pastMeasurement, _pastMeasurement));
  }

  @override
  int get hashCode => Object.hash(runtimeType, observationDate, sex, age,
      const DeepCollectionEquality().hash(_pastMeasurement));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HeadCircumferenceVelocityForAgeImplCopyWith<
          _$HeadCircumferenceVelocityForAgeImpl>
      get copyWith => __$$HeadCircumferenceVelocityForAgeImplCopyWithImpl<
          _$HeadCircumferenceVelocityForAgeImpl>(this, _$identity);
}

abstract class _HeadCircumferenceVelocityForAge
    extends HeadCircumferenceVelocityForAge {
  factory _HeadCircumferenceVelocityForAge(
          {final Date? observationDate,
          required final Sex sex,
          required final Age age,
          required final Map<Date, Length> pastMeasurement}) =
      _$HeadCircumferenceVelocityForAgeImpl;
  _HeadCircumferenceVelocityForAge._() : super._();

  @override
  Date? get observationDate;
  @override
  Sex get sex;
  @override
  Age get age;
  @override
  Map<Date, Length> get pastMeasurement;
  @override
  @JsonKey(ignore: true)
  _$$HeadCircumferenceVelocityForAgeImplCopyWith<
          _$HeadCircumferenceVelocityForAgeImpl>
      get copyWith => throw _privateConstructorUsedError;
}

LengthForAge _$LengthForAgeFromJson(Map<String, dynamic> json) {
  return _LengthForAge.fromJson(json);
}

/// @nodoc
mixin _$LengthForAge {
  Date? get observationDate => throw _privateConstructorUsedError;
  Sex get sex => throw _privateConstructorUsedError;
  Age get age => throw _privateConstructorUsedError;
  @LengthConverter()
  Length get lengthHeight => throw _privateConstructorUsedError;
  LengthHeigthMeasurementPosition get measure =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LengthForAgeCopyWith<LengthForAge> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LengthForAgeCopyWith<$Res> {
  factory $LengthForAgeCopyWith(
          LengthForAge value, $Res Function(LengthForAge) then) =
      _$LengthForAgeCopyWithImpl<$Res, LengthForAge>;
  @useResult
  $Res call(
      {Date? observationDate,
      Sex sex,
      Age age,
      @LengthConverter() Length lengthHeight,
      LengthHeigthMeasurementPosition measure});

  $DateCopyWith<$Res>? get observationDate;
  $AgeCopyWith<$Res> get age;
}

/// @nodoc
class _$LengthForAgeCopyWithImpl<$Res, $Val extends LengthForAge>
    implements $LengthForAgeCopyWith<$Res> {
  _$LengthForAgeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? observationDate = freezed,
    Object? sex = null,
    Object? age = null,
    Object? lengthHeight = null,
    Object? measure = null,
  }) {
    return _then(_value.copyWith(
      observationDate: freezed == observationDate
          ? _value.observationDate
          : observationDate // ignore: cast_nullable_to_non_nullable
              as Date?,
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
              as LengthHeigthMeasurementPosition,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DateCopyWith<$Res>? get observationDate {
    if (_value.observationDate == null) {
      return null;
    }

    return $DateCopyWith<$Res>(_value.observationDate!, (value) {
      return _then(_value.copyWith(observationDate: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AgeCopyWith<$Res> get age {
    return $AgeCopyWith<$Res>(_value.age, (value) {
      return _then(_value.copyWith(age: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LengthForAgeImplCopyWith<$Res>
    implements $LengthForAgeCopyWith<$Res> {
  factory _$$LengthForAgeImplCopyWith(
          _$LengthForAgeImpl value, $Res Function(_$LengthForAgeImpl) then) =
      __$$LengthForAgeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Date? observationDate,
      Sex sex,
      Age age,
      @LengthConverter() Length lengthHeight,
      LengthHeigthMeasurementPosition measure});

  @override
  $DateCopyWith<$Res>? get observationDate;
  @override
  $AgeCopyWith<$Res> get age;
}

/// @nodoc
class __$$LengthForAgeImplCopyWithImpl<$Res>
    extends _$LengthForAgeCopyWithImpl<$Res, _$LengthForAgeImpl>
    implements _$$LengthForAgeImplCopyWith<$Res> {
  __$$LengthForAgeImplCopyWithImpl(
      _$LengthForAgeImpl _value, $Res Function(_$LengthForAgeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? observationDate = freezed,
    Object? sex = null,
    Object? age = null,
    Object? lengthHeight = null,
    Object? measure = null,
  }) {
    return _then(_$LengthForAgeImpl(
      observationDate: freezed == observationDate
          ? _value.observationDate
          : observationDate // ignore: cast_nullable_to_non_nullable
              as Date?,
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
              as LengthHeigthMeasurementPosition,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LengthForAgeImpl extends _LengthForAge {
  _$LengthForAgeImpl(
      {this.observationDate,
      required this.sex,
      required this.age,
      @LengthConverter() required this.lengthHeight,
      required this.measure})
      : assert(age.ageInTotalDaysByNow >= 0 && age.ageInTotalDaysByNow <= 1856,
            'Age must be in range of 0 - 1856 days'),
        assert(
            observationDate == null ||
                observationDate.isSameOrBefore(Date.today()) ||
                observationDate.isSameOrAfter(age.dateOfBirth),
            'Observation date is impossible, because happen after today or before birth'),
        super._();

  factory _$LengthForAgeImpl.fromJson(Map<String, dynamic> json) =>
      _$$LengthForAgeImplFromJson(json);

  @override
  final Date? observationDate;
  @override
  final Sex sex;
  @override
  final Age age;
  @override
  @LengthConverter()
  final Length lengthHeight;
  @override
  final LengthHeigthMeasurementPosition measure;

  @override
  String toString() {
    return 'LengthForAge(observationDate: $observationDate, sex: $sex, age: $age, lengthHeight: $lengthHeight, measure: $measure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LengthForAgeImpl &&
            (identical(other.observationDate, observationDate) ||
                other.observationDate == observationDate) &&
            (identical(other.sex, sex) || other.sex == sex) &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.lengthHeight, lengthHeight) ||
                other.lengthHeight == lengthHeight) &&
            (identical(other.measure, measure) || other.measure == measure));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, observationDate, sex, age, lengthHeight, measure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LengthForAgeImplCopyWith<_$LengthForAgeImpl> get copyWith =>
      __$$LengthForAgeImplCopyWithImpl<_$LengthForAgeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LengthForAgeImplToJson(
      this,
    );
  }
}

abstract class _LengthForAge extends LengthForAge {
  factory _LengthForAge(
          {final Date? observationDate,
          required final Sex sex,
          required final Age age,
          @LengthConverter() required final Length lengthHeight,
          required final LengthHeigthMeasurementPosition measure}) =
      _$LengthForAgeImpl;
  _LengthForAge._() : super._();

  factory _LengthForAge.fromJson(Map<String, dynamic> json) =
      _$LengthForAgeImpl.fromJson;

  @override
  Date? get observationDate;
  @override
  Sex get sex;
  @override
  Age get age;
  @override
  @LengthConverter()
  Length get lengthHeight;
  @override
  LengthHeigthMeasurementPosition get measure;
  @override
  @JsonKey(ignore: true)
  _$$LengthForAgeImplCopyWith<_$LengthForAgeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SubscapularSkinfoldForAge _$SubscapularSkinfoldForAgeFromJson(
    Map<String, dynamic> json) {
  return _SubscapularSkinfoldForAge.fromJson(json);
}

/// @nodoc
mixin _$SubscapularSkinfoldForAge {
  Date? get observationDate => throw _privateConstructorUsedError;
  Sex get sex => throw _privateConstructorUsedError;
  Age get age => throw _privateConstructorUsedError;
  @LengthConverter()
  Length get measurementResult => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SubscapularSkinfoldForAgeCopyWith<SubscapularSkinfoldForAge> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubscapularSkinfoldForAgeCopyWith<$Res> {
  factory $SubscapularSkinfoldForAgeCopyWith(SubscapularSkinfoldForAge value,
          $Res Function(SubscapularSkinfoldForAge) then) =
      _$SubscapularSkinfoldForAgeCopyWithImpl<$Res, SubscapularSkinfoldForAge>;
  @useResult
  $Res call(
      {Date? observationDate,
      Sex sex,
      Age age,
      @LengthConverter() Length measurementResult});

  $DateCopyWith<$Res>? get observationDate;
  $AgeCopyWith<$Res> get age;
}

/// @nodoc
class _$SubscapularSkinfoldForAgeCopyWithImpl<$Res,
        $Val extends SubscapularSkinfoldForAge>
    implements $SubscapularSkinfoldForAgeCopyWith<$Res> {
  _$SubscapularSkinfoldForAgeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? observationDate = freezed,
    Object? sex = null,
    Object? age = null,
    Object? measurementResult = null,
  }) {
    return _then(_value.copyWith(
      observationDate: freezed == observationDate
          ? _value.observationDate
          : observationDate // ignore: cast_nullable_to_non_nullable
              as Date?,
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

  @override
  @pragma('vm:prefer-inline')
  $DateCopyWith<$Res>? get observationDate {
    if (_value.observationDate == null) {
      return null;
    }

    return $DateCopyWith<$Res>(_value.observationDate!, (value) {
      return _then(_value.copyWith(observationDate: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AgeCopyWith<$Res> get age {
    return $AgeCopyWith<$Res>(_value.age, (value) {
      return _then(_value.copyWith(age: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SubscapularSkinfoldForAgeImplCopyWith<$Res>
    implements $SubscapularSkinfoldForAgeCopyWith<$Res> {
  factory _$$SubscapularSkinfoldForAgeImplCopyWith(
          _$SubscapularSkinfoldForAgeImpl value,
          $Res Function(_$SubscapularSkinfoldForAgeImpl) then) =
      __$$SubscapularSkinfoldForAgeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Date? observationDate,
      Sex sex,
      Age age,
      @LengthConverter() Length measurementResult});

  @override
  $DateCopyWith<$Res>? get observationDate;
  @override
  $AgeCopyWith<$Res> get age;
}

/// @nodoc
class __$$SubscapularSkinfoldForAgeImplCopyWithImpl<$Res>
    extends _$SubscapularSkinfoldForAgeCopyWithImpl<$Res,
        _$SubscapularSkinfoldForAgeImpl>
    implements _$$SubscapularSkinfoldForAgeImplCopyWith<$Res> {
  __$$SubscapularSkinfoldForAgeImplCopyWithImpl(
      _$SubscapularSkinfoldForAgeImpl _value,
      $Res Function(_$SubscapularSkinfoldForAgeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? observationDate = freezed,
    Object? sex = null,
    Object? age = null,
    Object? measurementResult = null,
  }) {
    return _then(_$SubscapularSkinfoldForAgeImpl(
      observationDate: freezed == observationDate
          ? _value.observationDate
          : observationDate // ignore: cast_nullable_to_non_nullable
              as Date?,
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
class _$SubscapularSkinfoldForAgeImpl extends _SubscapularSkinfoldForAge {
  _$SubscapularSkinfoldForAgeImpl(
      {this.observationDate,
      required this.sex,
      required this.age,
      @LengthConverter() required this.measurementResult})
      : assert(age.ageInTotalDaysByNow >= 91 && age.ageInTotalDaysByNow <= 1856,
            'Age must be in range of 91 - 1856 days'),
        assert(
            observationDate == null ||
                observationDate.isSameOrBefore(Date.today()) ||
                observationDate.isSameOrAfter(age.dateOfBirth),
            'Observation date is impossible, because happen after today or before birth'),
        assert(
            observationDate == null ||
                observationDate.isSameOrAfter(age.dateAtDaysAfterBirth(91)),
            'Observation date is impossible, because happen after today or before birth'),
        super._();

  factory _$SubscapularSkinfoldForAgeImpl.fromJson(Map<String, dynamic> json) =>
      _$$SubscapularSkinfoldForAgeImplFromJson(json);

  @override
  final Date? observationDate;
  @override
  final Sex sex;
  @override
  final Age age;
  @override
  @LengthConverter()
  final Length measurementResult;

  @override
  String toString() {
    return 'SubscapularSkinfoldForAge(observationDate: $observationDate, sex: $sex, age: $age, measurementResult: $measurementResult)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubscapularSkinfoldForAgeImpl &&
            (identical(other.observationDate, observationDate) ||
                other.observationDate == observationDate) &&
            (identical(other.sex, sex) || other.sex == sex) &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.measurementResult, measurementResult) ||
                other.measurementResult == measurementResult));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, observationDate, sex, age, measurementResult);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SubscapularSkinfoldForAgeImplCopyWith<_$SubscapularSkinfoldForAgeImpl>
      get copyWith => __$$SubscapularSkinfoldForAgeImplCopyWithImpl<
          _$SubscapularSkinfoldForAgeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SubscapularSkinfoldForAgeImplToJson(
      this,
    );
  }
}

abstract class _SubscapularSkinfoldForAge extends SubscapularSkinfoldForAge {
  factory _SubscapularSkinfoldForAge(
          {final Date? observationDate,
          required final Sex sex,
          required final Age age,
          @LengthConverter() required final Length measurementResult}) =
      _$SubscapularSkinfoldForAgeImpl;
  _SubscapularSkinfoldForAge._() : super._();

  factory _SubscapularSkinfoldForAge.fromJson(Map<String, dynamic> json) =
      _$SubscapularSkinfoldForAgeImpl.fromJson;

  @override
  Date? get observationDate;
  @override
  Sex get sex;
  @override
  Age get age;
  @override
  @LengthConverter()
  Length get measurementResult;
  @override
  @JsonKey(ignore: true)
  _$$SubscapularSkinfoldForAgeImplCopyWith<_$SubscapularSkinfoldForAgeImpl>
      get copyWith => throw _privateConstructorUsedError;
}

TricepsSkinfoldForAge _$TricepsSkinfoldForAgeFromJson(
    Map<String, dynamic> json) {
  return _TricepsSkinfoldForAge.fromJson(json);
}

/// @nodoc
mixin _$TricepsSkinfoldForAge {
  Date? get observationDate => throw _privateConstructorUsedError;
  Sex get sex => throw _privateConstructorUsedError;
  Age get age => throw _privateConstructorUsedError;
  @LengthConverter()
  Length get measurementResult => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TricepsSkinfoldForAgeCopyWith<TricepsSkinfoldForAge> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TricepsSkinfoldForAgeCopyWith<$Res> {
  factory $TricepsSkinfoldForAgeCopyWith(TricepsSkinfoldForAge value,
          $Res Function(TricepsSkinfoldForAge) then) =
      _$TricepsSkinfoldForAgeCopyWithImpl<$Res, TricepsSkinfoldForAge>;
  @useResult
  $Res call(
      {Date? observationDate,
      Sex sex,
      Age age,
      @LengthConverter() Length measurementResult});

  $DateCopyWith<$Res>? get observationDate;
  $AgeCopyWith<$Res> get age;
}

/// @nodoc
class _$TricepsSkinfoldForAgeCopyWithImpl<$Res,
        $Val extends TricepsSkinfoldForAge>
    implements $TricepsSkinfoldForAgeCopyWith<$Res> {
  _$TricepsSkinfoldForAgeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? observationDate = freezed,
    Object? sex = null,
    Object? age = null,
    Object? measurementResult = null,
  }) {
    return _then(_value.copyWith(
      observationDate: freezed == observationDate
          ? _value.observationDate
          : observationDate // ignore: cast_nullable_to_non_nullable
              as Date?,
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

  @override
  @pragma('vm:prefer-inline')
  $DateCopyWith<$Res>? get observationDate {
    if (_value.observationDate == null) {
      return null;
    }

    return $DateCopyWith<$Res>(_value.observationDate!, (value) {
      return _then(_value.copyWith(observationDate: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AgeCopyWith<$Res> get age {
    return $AgeCopyWith<$Res>(_value.age, (value) {
      return _then(_value.copyWith(age: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TricepsSkinfoldForAgeImplCopyWith<$Res>
    implements $TricepsSkinfoldForAgeCopyWith<$Res> {
  factory _$$TricepsSkinfoldForAgeImplCopyWith(
          _$TricepsSkinfoldForAgeImpl value,
          $Res Function(_$TricepsSkinfoldForAgeImpl) then) =
      __$$TricepsSkinfoldForAgeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Date? observationDate,
      Sex sex,
      Age age,
      @LengthConverter() Length measurementResult});

  @override
  $DateCopyWith<$Res>? get observationDate;
  @override
  $AgeCopyWith<$Res> get age;
}

/// @nodoc
class __$$TricepsSkinfoldForAgeImplCopyWithImpl<$Res>
    extends _$TricepsSkinfoldForAgeCopyWithImpl<$Res,
        _$TricepsSkinfoldForAgeImpl>
    implements _$$TricepsSkinfoldForAgeImplCopyWith<$Res> {
  __$$TricepsSkinfoldForAgeImplCopyWithImpl(_$TricepsSkinfoldForAgeImpl _value,
      $Res Function(_$TricepsSkinfoldForAgeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? observationDate = freezed,
    Object? sex = null,
    Object? age = null,
    Object? measurementResult = null,
  }) {
    return _then(_$TricepsSkinfoldForAgeImpl(
      observationDate: freezed == observationDate
          ? _value.observationDate
          : observationDate // ignore: cast_nullable_to_non_nullable
              as Date?,
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
class _$TricepsSkinfoldForAgeImpl extends _TricepsSkinfoldForAge {
  _$TricepsSkinfoldForAgeImpl(
      {this.observationDate,
      required this.sex,
      required this.age,
      @LengthConverter() required this.measurementResult})
      : assert(age.ageInTotalDaysByNow >= 91 && age.ageInTotalDaysByNow <= 1856,
            'Age must be in range of 91 - 1856 days'),
        assert(
            observationDate == null ||
                observationDate.isSameOrBefore(Date.today()) ||
                observationDate.isSameOrAfter(age.dateOfBirth),
            'Observation date is impossible, because happen after today or before birth'),
        assert(
            observationDate == null ||
                observationDate.isSameOrAfter(age.dateAtDaysAfterBirth(91)),
            'Observation date is impossible, because happen after today or before birth'),
        super._();

  factory _$TricepsSkinfoldForAgeImpl.fromJson(Map<String, dynamic> json) =>
      _$$TricepsSkinfoldForAgeImplFromJson(json);

  @override
  final Date? observationDate;
  @override
  final Sex sex;
  @override
  final Age age;
  @override
  @LengthConverter()
  final Length measurementResult;

  @override
  String toString() {
    return 'TricepsSkinfoldForAge(observationDate: $observationDate, sex: $sex, age: $age, measurementResult: $measurementResult)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TricepsSkinfoldForAgeImpl &&
            (identical(other.observationDate, observationDate) ||
                other.observationDate == observationDate) &&
            (identical(other.sex, sex) || other.sex == sex) &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.measurementResult, measurementResult) ||
                other.measurementResult == measurementResult));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, observationDate, sex, age, measurementResult);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TricepsSkinfoldForAgeImplCopyWith<_$TricepsSkinfoldForAgeImpl>
      get copyWith => __$$TricepsSkinfoldForAgeImplCopyWithImpl<
          _$TricepsSkinfoldForAgeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TricepsSkinfoldForAgeImplToJson(
      this,
    );
  }
}

abstract class _TricepsSkinfoldForAge extends TricepsSkinfoldForAge {
  factory _TricepsSkinfoldForAge(
          {final Date? observationDate,
          required final Sex sex,
          required final Age age,
          @LengthConverter() required final Length measurementResult}) =
      _$TricepsSkinfoldForAgeImpl;
  _TricepsSkinfoldForAge._() : super._();

  factory _TricepsSkinfoldForAge.fromJson(Map<String, dynamic> json) =
      _$TricepsSkinfoldForAgeImpl.fromJson;

  @override
  Date? get observationDate;
  @override
  Sex get sex;
  @override
  Age get age;
  @override
  @LengthConverter()
  Length get measurementResult;
  @override
  @JsonKey(ignore: true)
  _$$TricepsSkinfoldForAgeImplCopyWith<_$TricepsSkinfoldForAgeImpl>
      get copyWith => throw _privateConstructorUsedError;
}

WeightForAge _$WeightForAgeFromJson(Map<String, dynamic> json) {
  return _WeightForAge.fromJson(json);
}

/// @nodoc
mixin _$WeightForAge {
  Date? get observationDate => throw _privateConstructorUsedError;
  Sex get sex => throw _privateConstructorUsedError;
  Age get age => throw _privateConstructorUsedError;
  @MassConverter()
  Mass get weight => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeightForAgeCopyWith<WeightForAge> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeightForAgeCopyWith<$Res> {
  factory $WeightForAgeCopyWith(
          WeightForAge value, $Res Function(WeightForAge) then) =
      _$WeightForAgeCopyWithImpl<$Res, WeightForAge>;
  @useResult
  $Res call(
      {Date? observationDate, Sex sex, Age age, @MassConverter() Mass weight});

  $DateCopyWith<$Res>? get observationDate;
  $AgeCopyWith<$Res> get age;
}

/// @nodoc
class _$WeightForAgeCopyWithImpl<$Res, $Val extends WeightForAge>
    implements $WeightForAgeCopyWith<$Res> {
  _$WeightForAgeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? observationDate = freezed,
    Object? sex = null,
    Object? age = null,
    Object? weight = null,
  }) {
    return _then(_value.copyWith(
      observationDate: freezed == observationDate
          ? _value.observationDate
          : observationDate // ignore: cast_nullable_to_non_nullable
              as Date?,
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

  @override
  @pragma('vm:prefer-inline')
  $DateCopyWith<$Res>? get observationDate {
    if (_value.observationDate == null) {
      return null;
    }

    return $DateCopyWith<$Res>(_value.observationDate!, (value) {
      return _then(_value.copyWith(observationDate: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AgeCopyWith<$Res> get age {
    return $AgeCopyWith<$Res>(_value.age, (value) {
      return _then(_value.copyWith(age: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$WeightForAgeImplCopyWith<$Res>
    implements $WeightForAgeCopyWith<$Res> {
  factory _$$WeightForAgeImplCopyWith(
          _$WeightForAgeImpl value, $Res Function(_$WeightForAgeImpl) then) =
      __$$WeightForAgeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Date? observationDate, Sex sex, Age age, @MassConverter() Mass weight});

  @override
  $DateCopyWith<$Res>? get observationDate;
  @override
  $AgeCopyWith<$Res> get age;
}

/// @nodoc
class __$$WeightForAgeImplCopyWithImpl<$Res>
    extends _$WeightForAgeCopyWithImpl<$Res, _$WeightForAgeImpl>
    implements _$$WeightForAgeImplCopyWith<$Res> {
  __$$WeightForAgeImplCopyWithImpl(
      _$WeightForAgeImpl _value, $Res Function(_$WeightForAgeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? observationDate = freezed,
    Object? sex = null,
    Object? age = null,
    Object? weight = null,
  }) {
    return _then(_$WeightForAgeImpl(
      observationDate: freezed == observationDate
          ? _value.observationDate
          : observationDate // ignore: cast_nullable_to_non_nullable
              as Date?,
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
class _$WeightForAgeImpl extends _WeightForAge {
  _$WeightForAgeImpl(
      {this.observationDate,
      required this.sex,
      required this.age,
      @MassConverter() required this.weight})
      : assert(age.ageInTotalDaysByNow >= 0 && age.ageInTotalDaysByNow <= 1856,
            'Age must be in range of 0 - 1856 days'),
        assert(
            observationDate == null ||
                observationDate.isSameOrBefore(Date.today()) ||
                observationDate.isSameOrAfter(age.dateOfBirth),
            'Observation date is impossible, because happen after today or before birth'),
        super._();

  factory _$WeightForAgeImpl.fromJson(Map<String, dynamic> json) =>
      _$$WeightForAgeImplFromJson(json);

  @override
  final Date? observationDate;
  @override
  final Sex sex;
  @override
  final Age age;
  @override
  @MassConverter()
  final Mass weight;

  @override
  String toString() {
    return 'WeightForAge(observationDate: $observationDate, sex: $sex, age: $age, weight: $weight)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeightForAgeImpl &&
            (identical(other.observationDate, observationDate) ||
                other.observationDate == observationDate) &&
            (identical(other.sex, sex) || other.sex == sex) &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.weight, weight) || other.weight == weight));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, observationDate, sex, age, weight);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WeightForAgeImplCopyWith<_$WeightForAgeImpl> get copyWith =>
      __$$WeightForAgeImplCopyWithImpl<_$WeightForAgeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WeightForAgeImplToJson(
      this,
    );
  }
}

abstract class _WeightForAge extends WeightForAge {
  factory _WeightForAge(
      {final Date? observationDate,
      required final Sex sex,
      required final Age age,
      @MassConverter() required final Mass weight}) = _$WeightForAgeImpl;
  _WeightForAge._() : super._();

  factory _WeightForAge.fromJson(Map<String, dynamic> json) =
      _$WeightForAgeImpl.fromJson;

  @override
  Date? get observationDate;
  @override
  Sex get sex;
  @override
  Age get age;
  @override
  @MassConverter()
  Mass get weight;
  @override
  @JsonKey(ignore: true)
  _$$WeightForAgeImplCopyWith<_$WeightForAgeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

WeightForHeight _$WeightForHeightFromJson(Map<String, dynamic> json) {
  return _WeightForHeight.fromJson(json);
}

/// @nodoc
mixin _$WeightForHeight {
  Date? get observationDate => throw _privateConstructorUsedError;
  Sex get sex => throw _privateConstructorUsedError;
  Age get age => throw _privateConstructorUsedError;
  @LengthConverter()
  Length get height => throw _privateConstructorUsedError;
  @MassConverter()
  Mass get weight => throw _privateConstructorUsedError;
  LengthHeigthMeasurementPosition get measure =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeightForHeightCopyWith<WeightForHeight> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeightForHeightCopyWith<$Res> {
  factory $WeightForHeightCopyWith(
          WeightForHeight value, $Res Function(WeightForHeight) then) =
      _$WeightForHeightCopyWithImpl<$Res, WeightForHeight>;
  @useResult
  $Res call(
      {Date? observationDate,
      Sex sex,
      Age age,
      @LengthConverter() Length height,
      @MassConverter() Mass weight,
      LengthHeigthMeasurementPosition measure});

  $DateCopyWith<$Res>? get observationDate;
  $AgeCopyWith<$Res> get age;
}

/// @nodoc
class _$WeightForHeightCopyWithImpl<$Res, $Val extends WeightForHeight>
    implements $WeightForHeightCopyWith<$Res> {
  _$WeightForHeightCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? observationDate = freezed,
    Object? sex = null,
    Object? age = null,
    Object? height = null,
    Object? weight = null,
    Object? measure = null,
  }) {
    return _then(_value.copyWith(
      observationDate: freezed == observationDate
          ? _value.observationDate
          : observationDate // ignore: cast_nullable_to_non_nullable
              as Date?,
      sex: null == sex
          ? _value.sex
          : sex // ignore: cast_nullable_to_non_nullable
              as Sex,
      age: null == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as Age,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as Length,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as Mass,
      measure: null == measure
          ? _value.measure
          : measure // ignore: cast_nullable_to_non_nullable
              as LengthHeigthMeasurementPosition,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DateCopyWith<$Res>? get observationDate {
    if (_value.observationDate == null) {
      return null;
    }

    return $DateCopyWith<$Res>(_value.observationDate!, (value) {
      return _then(_value.copyWith(observationDate: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AgeCopyWith<$Res> get age {
    return $AgeCopyWith<$Res>(_value.age, (value) {
      return _then(_value.copyWith(age: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$WeightForHeightImplCopyWith<$Res>
    implements $WeightForHeightCopyWith<$Res> {
  factory _$$WeightForHeightImplCopyWith(_$WeightForHeightImpl value,
          $Res Function(_$WeightForHeightImpl) then) =
      __$$WeightForHeightImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Date? observationDate,
      Sex sex,
      Age age,
      @LengthConverter() Length height,
      @MassConverter() Mass weight,
      LengthHeigthMeasurementPosition measure});

  @override
  $DateCopyWith<$Res>? get observationDate;
  @override
  $AgeCopyWith<$Res> get age;
}

/// @nodoc
class __$$WeightForHeightImplCopyWithImpl<$Res>
    extends _$WeightForHeightCopyWithImpl<$Res, _$WeightForHeightImpl>
    implements _$$WeightForHeightImplCopyWith<$Res> {
  __$$WeightForHeightImplCopyWithImpl(
      _$WeightForHeightImpl _value, $Res Function(_$WeightForHeightImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? observationDate = freezed,
    Object? sex = null,
    Object? age = null,
    Object? height = null,
    Object? weight = null,
    Object? measure = null,
  }) {
    return _then(_$WeightForHeightImpl(
      observationDate: freezed == observationDate
          ? _value.observationDate
          : observationDate // ignore: cast_nullable_to_non_nullable
              as Date?,
      sex: null == sex
          ? _value.sex
          : sex // ignore: cast_nullable_to_non_nullable
              as Sex,
      age: null == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as Age,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as Length,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as Mass,
      measure: null == measure
          ? _value.measure
          : measure // ignore: cast_nullable_to_non_nullable
              as LengthHeigthMeasurementPosition,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WeightForHeightImpl extends _WeightForHeight {
  _$WeightForHeightImpl(
      {this.observationDate,
      required this.sex,
      required this.age,
      @LengthConverter() required this.height,
      @MassConverter() required this.weight,
      required this.measure})
      : assert(
            whoAdjustedLengthHeight(
                      measure: measure,
                      age: age,
                      lengthHeight: height,
                    ).value! >=
                    65 &&
                whoAdjustedLengthHeight(
                      measure: measure,
                      age: age,
                      lengthHeight: height,
                    ).value! <=
                    120 &&
                height.toCentimeters.value! >= 65 &&
                height.toCentimeters.value! <= 120,
            'Please correcting measurement position based on age'),
        assert(
            whoAdjustedLengthHeight(
                      measure: measure,
                      age: age,
                      lengthHeight: height,
                    ).value! >=
                    65 &&
                whoAdjustedLengthHeight(
                      measure: measure,
                      age: age,
                      lengthHeight: height,
                    ).value! <=
                    120,
            'Height must be in range of 65 - 120 cm'),
        assert(
            observationDate == null ||
                observationDate.isSameOrBefore(Date.today()) ||
                observationDate.isSameOrAfter(age.dateOfBirth),
            'Observation date is impossible, because happen after today or before birth'),
        super._();

  factory _$WeightForHeightImpl.fromJson(Map<String, dynamic> json) =>
      _$$WeightForHeightImplFromJson(json);

  @override
  final Date? observationDate;
  @override
  final Sex sex;
  @override
  final Age age;
  @override
  @LengthConverter()
  final Length height;
  @override
  @MassConverter()
  final Mass weight;
  @override
  final LengthHeigthMeasurementPosition measure;

  @override
  String toString() {
    return 'WeightForHeight(observationDate: $observationDate, sex: $sex, age: $age, height: $height, weight: $weight, measure: $measure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeightForHeightImpl &&
            (identical(other.observationDate, observationDate) ||
                other.observationDate == observationDate) &&
            (identical(other.sex, sex) || other.sex == sex) &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.weight, weight) || other.weight == weight) &&
            (identical(other.measure, measure) || other.measure == measure));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, observationDate, sex, age, height, weight, measure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WeightForHeightImplCopyWith<_$WeightForHeightImpl> get copyWith =>
      __$$WeightForHeightImplCopyWithImpl<_$WeightForHeightImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WeightForHeightImplToJson(
      this,
    );
  }
}

abstract class _WeightForHeight extends WeightForHeight {
  factory _WeightForHeight(
          {final Date? observationDate,
          required final Sex sex,
          required final Age age,
          @LengthConverter() required final Length height,
          @MassConverter() required final Mass weight,
          required final LengthHeigthMeasurementPosition measure}) =
      _$WeightForHeightImpl;
  _WeightForHeight._() : super._();

  factory _WeightForHeight.fromJson(Map<String, dynamic> json) =
      _$WeightForHeightImpl.fromJson;

  @override
  Date? get observationDate;
  @override
  Sex get sex;
  @override
  Age get age;
  @override
  @LengthConverter()
  Length get height;
  @override
  @MassConverter()
  Mass get weight;
  @override
  LengthHeigthMeasurementPosition get measure;
  @override
  @JsonKey(ignore: true)
  _$$WeightForHeightImplCopyWith<_$WeightForHeightImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

WeigthForLength _$WeigthForLengthFromJson(Map<String, dynamic> json) {
  return _WeigthForLength.fromJson(json);
}

/// @nodoc
mixin _$WeigthForLength {
  Date? get observationDate => throw _privateConstructorUsedError;
  Sex get sex => throw _privateConstructorUsedError;
  Age get age => throw _privateConstructorUsedError;
  @LengthConverter()
  Length get length => throw _privateConstructorUsedError;
  @MassConverter()
  Mass get weight => throw _privateConstructorUsedError;
  LengthHeigthMeasurementPosition get measure =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeigthForLengthCopyWith<WeigthForLength> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeigthForLengthCopyWith<$Res> {
  factory $WeigthForLengthCopyWith(
          WeigthForLength value, $Res Function(WeigthForLength) then) =
      _$WeigthForLengthCopyWithImpl<$Res, WeigthForLength>;
  @useResult
  $Res call(
      {Date? observationDate,
      Sex sex,
      Age age,
      @LengthConverter() Length length,
      @MassConverter() Mass weight,
      LengthHeigthMeasurementPosition measure});

  $DateCopyWith<$Res>? get observationDate;
  $AgeCopyWith<$Res> get age;
}

/// @nodoc
class _$WeigthForLengthCopyWithImpl<$Res, $Val extends WeigthForLength>
    implements $WeigthForLengthCopyWith<$Res> {
  _$WeigthForLengthCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? observationDate = freezed,
    Object? sex = null,
    Object? age = null,
    Object? length = null,
    Object? weight = null,
    Object? measure = null,
  }) {
    return _then(_value.copyWith(
      observationDate: freezed == observationDate
          ? _value.observationDate
          : observationDate // ignore: cast_nullable_to_non_nullable
              as Date?,
      sex: null == sex
          ? _value.sex
          : sex // ignore: cast_nullable_to_non_nullable
              as Sex,
      age: null == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as Age,
      length: null == length
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as Length,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as Mass,
      measure: null == measure
          ? _value.measure
          : measure // ignore: cast_nullable_to_non_nullable
              as LengthHeigthMeasurementPosition,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DateCopyWith<$Res>? get observationDate {
    if (_value.observationDate == null) {
      return null;
    }

    return $DateCopyWith<$Res>(_value.observationDate!, (value) {
      return _then(_value.copyWith(observationDate: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AgeCopyWith<$Res> get age {
    return $AgeCopyWith<$Res>(_value.age, (value) {
      return _then(_value.copyWith(age: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$WeigthForLengthImplCopyWith<$Res>
    implements $WeigthForLengthCopyWith<$Res> {
  factory _$$WeigthForLengthImplCopyWith(_$WeigthForLengthImpl value,
          $Res Function(_$WeigthForLengthImpl) then) =
      __$$WeigthForLengthImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Date? observationDate,
      Sex sex,
      Age age,
      @LengthConverter() Length length,
      @MassConverter() Mass weight,
      LengthHeigthMeasurementPosition measure});

  @override
  $DateCopyWith<$Res>? get observationDate;
  @override
  $AgeCopyWith<$Res> get age;
}

/// @nodoc
class __$$WeigthForLengthImplCopyWithImpl<$Res>
    extends _$WeigthForLengthCopyWithImpl<$Res, _$WeigthForLengthImpl>
    implements _$$WeigthForLengthImplCopyWith<$Res> {
  __$$WeigthForLengthImplCopyWithImpl(
      _$WeigthForLengthImpl _value, $Res Function(_$WeigthForLengthImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? observationDate = freezed,
    Object? sex = null,
    Object? age = null,
    Object? length = null,
    Object? weight = null,
    Object? measure = null,
  }) {
    return _then(_$WeigthForLengthImpl(
      observationDate: freezed == observationDate
          ? _value.observationDate
          : observationDate // ignore: cast_nullable_to_non_nullable
              as Date?,
      sex: null == sex
          ? _value.sex
          : sex // ignore: cast_nullable_to_non_nullable
              as Sex,
      age: null == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as Age,
      length: null == length
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as Length,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as Mass,
      measure: null == measure
          ? _value.measure
          : measure // ignore: cast_nullable_to_non_nullable
              as LengthHeigthMeasurementPosition,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WeigthForLengthImpl extends _WeigthForLength {
  _$WeigthForLengthImpl(
      {this.observationDate,
      required this.sex,
      required this.age,
      @LengthConverter() required this.length,
      @MassConverter() required this.weight,
      required this.measure})
      : assert(
            whoAdjustedLengthHeight(
                      measure: measure,
                      age: age,
                      lengthHeight: length,
                    ).value! >=
                    45 &&
                whoAdjustedLengthHeight(
                      measure: measure,
                      age: age,
                      lengthHeight: length,
                    ).value! <=
                    110 &&
                length.toCentimeters.value! >= 45 &&
                length.toCentimeters.value! <= 110,
            'Please correcting measurement position based on age'),
        assert(
            whoAdjustedLengthHeight(
                      measure: measure,
                      age: age,
                      lengthHeight: length,
                    ).value! >=
                    45 &&
                whoAdjustedLengthHeight(
                      measure: measure,
                      age: age,
                      lengthHeight: length,
                    ).value! <=
                    110,
            'Length must be in range of 45 - 110 cm'),
        assert(
            observationDate == null ||
                observationDate.isSameOrBefore(Date.today()) ||
                observationDate.isSameOrAfter(age.dateOfBirth),
            'Observation date is impossible, because happen after today or before birth'),
        super._();

  factory _$WeigthForLengthImpl.fromJson(Map<String, dynamic> json) =>
      _$$WeigthForLengthImplFromJson(json);

  @override
  final Date? observationDate;
  @override
  final Sex sex;
  @override
  final Age age;
  @override
  @LengthConverter()
  final Length length;
  @override
  @MassConverter()
  final Mass weight;
  @override
  final LengthHeigthMeasurementPosition measure;

  @override
  String toString() {
    return 'WeigthForLength(observationDate: $observationDate, sex: $sex, age: $age, length: $length, weight: $weight, measure: $measure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeigthForLengthImpl &&
            (identical(other.observationDate, observationDate) ||
                other.observationDate == observationDate) &&
            (identical(other.sex, sex) || other.sex == sex) &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.length, length) || other.length == length) &&
            (identical(other.weight, weight) || other.weight == weight) &&
            (identical(other.measure, measure) || other.measure == measure));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, observationDate, sex, age, length, weight, measure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WeigthForLengthImplCopyWith<_$WeigthForLengthImpl> get copyWith =>
      __$$WeigthForLengthImplCopyWithImpl<_$WeigthForLengthImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WeigthForLengthImplToJson(
      this,
    );
  }
}

abstract class _WeigthForLength extends WeigthForLength {
  factory _WeigthForLength(
          {final Date? observationDate,
          required final Sex sex,
          required final Age age,
          @LengthConverter() required final Length length,
          @MassConverter() required final Mass weight,
          required final LengthHeigthMeasurementPosition measure}) =
      _$WeigthForLengthImpl;
  _WeigthForLength._() : super._();

  factory _WeigthForLength.fromJson(Map<String, dynamic> json) =
      _$WeigthForLengthImpl.fromJson;

  @override
  Date? get observationDate;
  @override
  Sex get sex;
  @override
  Age get age;
  @override
  @LengthConverter()
  Length get length;
  @override
  @MassConverter()
  Mass get weight;
  @override
  LengthHeigthMeasurementPosition get measure;
  @override
  @JsonKey(ignore: true)
  _$$WeigthForLengthImplCopyWith<_$WeigthForLengthImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
