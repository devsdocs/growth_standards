// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cdc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CDCBodyMassIndexMeasurement _$CDCBodyMassIndexMeasurementFromJson(
    Map<String, dynamic> json) {
  return _GrowthReferenceBodyMassIndexMeasurement.fromJson(json);
}

/// @nodoc
mixin _$CDCBodyMassIndexMeasurement {
  num get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CDCBodyMassIndexMeasurementCopyWith<CDCBodyMassIndexMeasurement>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CDCBodyMassIndexMeasurementCopyWith<$Res> {
  factory $CDCBodyMassIndexMeasurementCopyWith(
          CDCBodyMassIndexMeasurement value,
          $Res Function(CDCBodyMassIndexMeasurement) then) =
      _$CDCBodyMassIndexMeasurementCopyWithImpl<$Res,
          CDCBodyMassIndexMeasurement>;
  @useResult
  $Res call({num value});
}

/// @nodoc
class _$CDCBodyMassIndexMeasurementCopyWithImpl<$Res,
        $Val extends CDCBodyMassIndexMeasurement>
    implements $CDCBodyMassIndexMeasurementCopyWith<$Res> {
  _$CDCBodyMassIndexMeasurementCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as num,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GrowthReferenceBodyMassIndexMeasurementImplCopyWith<$Res>
    implements $CDCBodyMassIndexMeasurementCopyWith<$Res> {
  factory _$$GrowthReferenceBodyMassIndexMeasurementImplCopyWith(
          _$GrowthReferenceBodyMassIndexMeasurementImpl value,
          $Res Function(_$GrowthReferenceBodyMassIndexMeasurementImpl) then) =
      __$$GrowthReferenceBodyMassIndexMeasurementImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({num value});
}

/// @nodoc
class __$$GrowthReferenceBodyMassIndexMeasurementImplCopyWithImpl<$Res>
    extends _$CDCBodyMassIndexMeasurementCopyWithImpl<$Res,
        _$GrowthReferenceBodyMassIndexMeasurementImpl>
    implements _$$GrowthReferenceBodyMassIndexMeasurementImplCopyWith<$Res> {
  __$$GrowthReferenceBodyMassIndexMeasurementImplCopyWithImpl(
      _$GrowthReferenceBodyMassIndexMeasurementImpl _value,
      $Res Function(_$GrowthReferenceBodyMassIndexMeasurementImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$GrowthReferenceBodyMassIndexMeasurementImpl(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GrowthReferenceBodyMassIndexMeasurementImpl
    extends _GrowthReferenceBodyMassIndexMeasurement {
  _$GrowthReferenceBodyMassIndexMeasurementImpl(this.value) : super._();

  factory _$GrowthReferenceBodyMassIndexMeasurementImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$GrowthReferenceBodyMassIndexMeasurementImplFromJson(json);

  @override
  final num value;

  @override
  String toString() {
    return 'CDCBodyMassIndexMeasurement(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GrowthReferenceBodyMassIndexMeasurementImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GrowthReferenceBodyMassIndexMeasurementImplCopyWith<
          _$GrowthReferenceBodyMassIndexMeasurementImpl>
      get copyWith =>
          __$$GrowthReferenceBodyMassIndexMeasurementImplCopyWithImpl<
              _$GrowthReferenceBodyMassIndexMeasurementImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GrowthReferenceBodyMassIndexMeasurementImplToJson(
      this,
    );
  }
}

abstract class _GrowthReferenceBodyMassIndexMeasurement
    extends CDCBodyMassIndexMeasurement {
  factory _GrowthReferenceBodyMassIndexMeasurement(final num value) =
      _$GrowthReferenceBodyMassIndexMeasurementImpl;
  _GrowthReferenceBodyMassIndexMeasurement._() : super._();

  factory _GrowthReferenceBodyMassIndexMeasurement.fromJson(
          Map<String, dynamic> json) =
      _$GrowthReferenceBodyMassIndexMeasurementImpl.fromJson;

  @override
  num get value;
  @override
  @JsonKey(ignore: true)
  _$$GrowthReferenceBodyMassIndexMeasurementImplCopyWith<
          _$GrowthReferenceBodyMassIndexMeasurementImpl>
      get copyWith => throw _privateConstructorUsedError;
}

CDCBodyMassIndexForAge _$CDCBodyMassIndexForAgeFromJson(
    Map<String, dynamic> json) {
  return _GrowthReferenceBodyMassIndexForAge.fromJson(json);
}

/// @nodoc
mixin _$CDCBodyMassIndexForAge {
  @DateConverter()
  Date? get observationDate => throw _privateConstructorUsedError;
  Sex get sex => throw _privateConstructorUsedError;
  @AgeConverter()
  Age get age => throw _privateConstructorUsedError;
  CDCBodyMassIndexMeasurement get bodyMassIndexMeasurement =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CDCBodyMassIndexForAgeCopyWith<CDCBodyMassIndexForAge> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CDCBodyMassIndexForAgeCopyWith<$Res> {
  factory $CDCBodyMassIndexForAgeCopyWith(CDCBodyMassIndexForAge value,
          $Res Function(CDCBodyMassIndexForAge) then) =
      _$CDCBodyMassIndexForAgeCopyWithImpl<$Res, CDCBodyMassIndexForAge>;
  @useResult
  $Res call(
      {@DateConverter() Date? observationDate,
      Sex sex,
      @AgeConverter() Age age,
      CDCBodyMassIndexMeasurement bodyMassIndexMeasurement});

  $DateCopyWith<$Res>? get observationDate;
  $AgeCopyWith<$Res> get age;
  $CDCBodyMassIndexMeasurementCopyWith<$Res> get bodyMassIndexMeasurement;
}

/// @nodoc
class _$CDCBodyMassIndexForAgeCopyWithImpl<$Res,
        $Val extends CDCBodyMassIndexForAge>
    implements $CDCBodyMassIndexForAgeCopyWith<$Res> {
  _$CDCBodyMassIndexForAgeCopyWithImpl(this._value, this._then);

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
      age: null == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as Age,
      bodyMassIndexMeasurement: null == bodyMassIndexMeasurement
          ? _value.bodyMassIndexMeasurement
          : bodyMassIndexMeasurement // ignore: cast_nullable_to_non_nullable
              as CDCBodyMassIndexMeasurement,
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

  @override
  @pragma('vm:prefer-inline')
  $CDCBodyMassIndexMeasurementCopyWith<$Res> get bodyMassIndexMeasurement {
    return $CDCBodyMassIndexMeasurementCopyWith<$Res>(
        _value.bodyMassIndexMeasurement, (value) {
      return _then(_value.copyWith(bodyMassIndexMeasurement: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GrowthReferenceBodyMassIndexForAgeImplCopyWith<$Res>
    implements $CDCBodyMassIndexForAgeCopyWith<$Res> {
  factory _$$GrowthReferenceBodyMassIndexForAgeImplCopyWith(
          _$GrowthReferenceBodyMassIndexForAgeImpl value,
          $Res Function(_$GrowthReferenceBodyMassIndexForAgeImpl) then) =
      __$$GrowthReferenceBodyMassIndexForAgeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@DateConverter() Date? observationDate,
      Sex sex,
      @AgeConverter() Age age,
      CDCBodyMassIndexMeasurement bodyMassIndexMeasurement});

  @override
  $DateCopyWith<$Res>? get observationDate;
  @override
  $AgeCopyWith<$Res> get age;
  @override
  $CDCBodyMassIndexMeasurementCopyWith<$Res> get bodyMassIndexMeasurement;
}

/// @nodoc
class __$$GrowthReferenceBodyMassIndexForAgeImplCopyWithImpl<$Res>
    extends _$CDCBodyMassIndexForAgeCopyWithImpl<$Res,
        _$GrowthReferenceBodyMassIndexForAgeImpl>
    implements _$$GrowthReferenceBodyMassIndexForAgeImplCopyWith<$Res> {
  __$$GrowthReferenceBodyMassIndexForAgeImplCopyWithImpl(
      _$GrowthReferenceBodyMassIndexForAgeImpl _value,
      $Res Function(_$GrowthReferenceBodyMassIndexForAgeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? observationDate = freezed,
    Object? sex = null,
    Object? age = null,
    Object? bodyMassIndexMeasurement = null,
  }) {
    return _then(_$GrowthReferenceBodyMassIndexForAgeImpl(
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
      bodyMassIndexMeasurement: null == bodyMassIndexMeasurement
          ? _value.bodyMassIndexMeasurement
          : bodyMassIndexMeasurement // ignore: cast_nullable_to_non_nullable
              as CDCBodyMassIndexMeasurement,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GrowthReferenceBodyMassIndexForAgeImpl
    extends _GrowthReferenceBodyMassIndexForAge {
  _$GrowthReferenceBodyMassIndexForAgeImpl(
      {@DateConverter() this.observationDate,
      required this.sex,
      @AgeConverter() required this.age,
      required this.bodyMassIndexMeasurement})
      : assert(
            age.ageInTotalMonthsByNow >= 24 && age.ageInTotalMonthsByNow < 241,
            'Age must be in range of 24 - 240 months'),
        assert(
            observationDate == null ||
                observationDate.isSameOrBefore(Date.today()) ||
                observationDate.isSameOrAfter(age.dateOfBirth),
            'Observation date is impossible, because happen after today or before birth'),
        assert(
            observationDate == null ||
                observationDate.isSameOrAfter(age.dateAtMonthsAfterBirth(24)),
            'Observation date is impossible, because happen after today or before birth'),
        super._();

  factory _$GrowthReferenceBodyMassIndexForAgeImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$GrowthReferenceBodyMassIndexForAgeImplFromJson(json);

  @override
  @DateConverter()
  final Date? observationDate;
  @override
  final Sex sex;
  @override
  @AgeConverter()
  final Age age;
  @override
  final CDCBodyMassIndexMeasurement bodyMassIndexMeasurement;

  @override
  String toString() {
    return 'CDCBodyMassIndexForAge(observationDate: $observationDate, sex: $sex, age: $age, bodyMassIndexMeasurement: $bodyMassIndexMeasurement)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GrowthReferenceBodyMassIndexForAgeImpl &&
            (identical(other.observationDate, observationDate) ||
                other.observationDate == observationDate) &&
            (identical(other.sex, sex) || other.sex == sex) &&
            (identical(other.age, age) || other.age == age) &&
            (identical(
                    other.bodyMassIndexMeasurement, bodyMassIndexMeasurement) ||
                other.bodyMassIndexMeasurement == bodyMassIndexMeasurement));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, observationDate, sex, age, bodyMassIndexMeasurement);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GrowthReferenceBodyMassIndexForAgeImplCopyWith<
          _$GrowthReferenceBodyMassIndexForAgeImpl>
      get copyWith => __$$GrowthReferenceBodyMassIndexForAgeImplCopyWithImpl<
          _$GrowthReferenceBodyMassIndexForAgeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GrowthReferenceBodyMassIndexForAgeImplToJson(
      this,
    );
  }
}

abstract class _GrowthReferenceBodyMassIndexForAge
    extends CDCBodyMassIndexForAge {
  factory _GrowthReferenceBodyMassIndexForAge(
      {@DateConverter() final Date? observationDate,
      required final Sex sex,
      @AgeConverter() required final Age age,
      required final CDCBodyMassIndexMeasurement
          bodyMassIndexMeasurement}) = _$GrowthReferenceBodyMassIndexForAgeImpl;
  _GrowthReferenceBodyMassIndexForAge._() : super._();

  factory _GrowthReferenceBodyMassIndexForAge.fromJson(
          Map<String, dynamic> json) =
      _$GrowthReferenceBodyMassIndexForAgeImpl.fromJson;

  @override
  @DateConverter()
  Date? get observationDate;
  @override
  Sex get sex;
  @override
  @AgeConverter()
  Age get age;
  @override
  CDCBodyMassIndexMeasurement get bodyMassIndexMeasurement;
  @override
  @JsonKey(ignore: true)
  _$$GrowthReferenceBodyMassIndexForAgeImplCopyWith<
          _$GrowthReferenceBodyMassIndexForAgeImpl>
      get copyWith => throw _privateConstructorUsedError;
}

CDCInfantHeadCircumferenceForAge _$CDCInfantHeadCircumferenceForAgeFromJson(
    Map<String, dynamic> json) {
  return _HeadCircumferenceForAge.fromJson(json);
}

/// @nodoc
mixin _$CDCInfantHeadCircumferenceForAge {
  @DateConverter()
  Date? get observationDate => throw _privateConstructorUsedError;
  Sex get sex => throw _privateConstructorUsedError;
  @AgeConverter()
  Age get age => throw _privateConstructorUsedError;
  @LengthConverter()
  Length get measurementResult => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CDCInfantHeadCircumferenceForAgeCopyWith<CDCInfantHeadCircumferenceForAge>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CDCInfantHeadCircumferenceForAgeCopyWith<$Res> {
  factory $CDCInfantHeadCircumferenceForAgeCopyWith(
          CDCInfantHeadCircumferenceForAge value,
          $Res Function(CDCInfantHeadCircumferenceForAge) then) =
      _$CDCInfantHeadCircumferenceForAgeCopyWithImpl<$Res,
          CDCInfantHeadCircumferenceForAge>;
  @useResult
  $Res call(
      {@DateConverter() Date? observationDate,
      Sex sex,
      @AgeConverter() Age age,
      @LengthConverter() Length measurementResult});

  $DateCopyWith<$Res>? get observationDate;
  $AgeCopyWith<$Res> get age;
}

/// @nodoc
class _$CDCInfantHeadCircumferenceForAgeCopyWithImpl<$Res,
        $Val extends CDCInfantHeadCircumferenceForAge>
    implements $CDCInfantHeadCircumferenceForAgeCopyWith<$Res> {
  _$CDCInfantHeadCircumferenceForAgeCopyWithImpl(this._value, this._then);

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
    implements $CDCInfantHeadCircumferenceForAgeCopyWith<$Res> {
  factory _$$HeadCircumferenceForAgeImplCopyWith(
          _$HeadCircumferenceForAgeImpl value,
          $Res Function(_$HeadCircumferenceForAgeImpl) then) =
      __$$HeadCircumferenceForAgeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@DateConverter() Date? observationDate,
      Sex sex,
      @AgeConverter() Age age,
      @LengthConverter() Length measurementResult});

  @override
  $DateCopyWith<$Res>? get observationDate;
  @override
  $AgeCopyWith<$Res> get age;
}

/// @nodoc
class __$$HeadCircumferenceForAgeImplCopyWithImpl<$Res>
    extends _$CDCInfantHeadCircumferenceForAgeCopyWithImpl<$Res,
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
      {@DateConverter() this.observationDate,
      required this.sex,
      @AgeConverter() required this.age,
      @LengthConverter() required this.measurementResult})
      : assert(age.ageInTotalDaysByNow >= 0 && age.ageInTotalMonthsByNow <= 36,
            'Age must be in range of 0 - 36 months'),
        assert(
            observationDate == null ||
                observationDate.isSameOrBefore(Date.today()) ||
                observationDate.isSameOrAfter(age.dateOfBirth),
            'Observation date is impossible, because happen after today or before birth'),
        super._();

  factory _$HeadCircumferenceForAgeImpl.fromJson(Map<String, dynamic> json) =>
      _$$HeadCircumferenceForAgeImplFromJson(json);

  @override
  @DateConverter()
  final Date? observationDate;
  @override
  final Sex sex;
  @override
  @AgeConverter()
  final Age age;
  @override
  @LengthConverter()
  final Length measurementResult;

  @override
  String toString() {
    return 'CDCInfantHeadCircumferenceForAge(observationDate: $observationDate, sex: $sex, age: $age, measurementResult: $measurementResult)';
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

abstract class _HeadCircumferenceForAge
    extends CDCInfantHeadCircumferenceForAge {
  factory _HeadCircumferenceForAge(
          {@DateConverter() final Date? observationDate,
          required final Sex sex,
          @AgeConverter() required final Age age,
          @LengthConverter() required final Length measurementResult}) =
      _$HeadCircumferenceForAgeImpl;
  _HeadCircumferenceForAge._() : super._();

  factory _HeadCircumferenceForAge.fromJson(Map<String, dynamic> json) =
      _$HeadCircumferenceForAgeImpl.fromJson;

  @override
  @DateConverter()
  Date? get observationDate;
  @override
  Sex get sex;
  @override
  @AgeConverter()
  Age get age;
  @override
  @LengthConverter()
  Length get measurementResult;
  @override
  @JsonKey(ignore: true)
  _$$HeadCircumferenceForAgeImplCopyWith<_$HeadCircumferenceForAgeImpl>
      get copyWith => throw _privateConstructorUsedError;
}

CDCInfantLengthForAge _$CDCInfantLengthForAgeFromJson(
    Map<String, dynamic> json) {
  return _LengthForAge.fromJson(json);
}

/// @nodoc
mixin _$CDCInfantLengthForAge {
  @DateConverter()
  Date? get observationDate => throw _privateConstructorUsedError;
  Sex get sex => throw _privateConstructorUsedError;
  @AgeConverter()
  Age get age => throw _privateConstructorUsedError;
  @LengthConverter()
  Length get lengthHeight => throw _privateConstructorUsedError;
  LengthHeigthMeasurementPosition get measure =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CDCInfantLengthForAgeCopyWith<CDCInfantLengthForAge> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CDCInfantLengthForAgeCopyWith<$Res> {
  factory $CDCInfantLengthForAgeCopyWith(CDCInfantLengthForAge value,
          $Res Function(CDCInfantLengthForAge) then) =
      _$CDCInfantLengthForAgeCopyWithImpl<$Res, CDCInfantLengthForAge>;
  @useResult
  $Res call(
      {@DateConverter() Date? observationDate,
      Sex sex,
      @AgeConverter() Age age,
      @LengthConverter() Length lengthHeight,
      LengthHeigthMeasurementPosition measure});

  $DateCopyWith<$Res>? get observationDate;
  $AgeCopyWith<$Res> get age;
}

/// @nodoc
class _$CDCInfantLengthForAgeCopyWithImpl<$Res,
        $Val extends CDCInfantLengthForAge>
    implements $CDCInfantLengthForAgeCopyWith<$Res> {
  _$CDCInfantLengthForAgeCopyWithImpl(this._value, this._then);

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
    implements $CDCInfantLengthForAgeCopyWith<$Res> {
  factory _$$LengthForAgeImplCopyWith(
          _$LengthForAgeImpl value, $Res Function(_$LengthForAgeImpl) then) =
      __$$LengthForAgeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@DateConverter() Date? observationDate,
      Sex sex,
      @AgeConverter() Age age,
      @LengthConverter() Length lengthHeight,
      LengthHeigthMeasurementPosition measure});

  @override
  $DateCopyWith<$Res>? get observationDate;
  @override
  $AgeCopyWith<$Res> get age;
}

/// @nodoc
class __$$LengthForAgeImplCopyWithImpl<$Res>
    extends _$CDCInfantLengthForAgeCopyWithImpl<$Res, _$LengthForAgeImpl>
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
      {@DateConverter() this.observationDate,
      required this.sex,
      @AgeConverter() required this.age,
      @LengthConverter() required this.lengthHeight,
      required this.measure})
      : assert(age.ageInTotalDaysByNow >= 0 && age.ageInTotalMonthsByNow < 36,
            'Age must be in range of 0 - 35 months'),
        assert(
            observationDate == null ||
                observationDate.isSameOrBefore(Date.today()) ||
                observationDate.isSameOrAfter(age.dateOfBirth),
            'Observation date is impossible, because happen after today or before birth'),
        super._();

  factory _$LengthForAgeImpl.fromJson(Map<String, dynamic> json) =>
      _$$LengthForAgeImplFromJson(json);

  @override
  @DateConverter()
  final Date? observationDate;
  @override
  final Sex sex;
  @override
  @AgeConverter()
  final Age age;
  @override
  @LengthConverter()
  final Length lengthHeight;
  @override
  final LengthHeigthMeasurementPosition measure;

  @override
  String toString() {
    return 'CDCInfantLengthForAge(observationDate: $observationDate, sex: $sex, age: $age, lengthHeight: $lengthHeight, measure: $measure)';
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

abstract class _LengthForAge extends CDCInfantLengthForAge {
  factory _LengthForAge(
          {@DateConverter() final Date? observationDate,
          required final Sex sex,
          @AgeConverter() required final Age age,
          @LengthConverter() required final Length lengthHeight,
          required final LengthHeigthMeasurementPosition measure}) =
      _$LengthForAgeImpl;
  _LengthForAge._() : super._();

  factory _LengthForAge.fromJson(Map<String, dynamic> json) =
      _$LengthForAgeImpl.fromJson;

  @override
  @DateConverter()
  Date? get observationDate;
  @override
  Sex get sex;
  @override
  @AgeConverter()
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

CDCStatureForAge _$CDCStatureForAgeFromJson(Map<String, dynamic> json) {
  return _GrowthReferenceHeightForAge.fromJson(json);
}

/// @nodoc
mixin _$CDCStatureForAge {
  @DateConverter()
  Date? get observationDate => throw _privateConstructorUsedError;
  Sex get sex => throw _privateConstructorUsedError;
  @AgeConverter()
  Age get age => throw _privateConstructorUsedError;
  @LengthConverter()
  Length get lengthHeight => throw _privateConstructorUsedError;
  LengthHeigthMeasurementPosition get measure =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CDCStatureForAgeCopyWith<CDCStatureForAge> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CDCStatureForAgeCopyWith<$Res> {
  factory $CDCStatureForAgeCopyWith(
          CDCStatureForAge value, $Res Function(CDCStatureForAge) then) =
      _$CDCStatureForAgeCopyWithImpl<$Res, CDCStatureForAge>;
  @useResult
  $Res call(
      {@DateConverter() Date? observationDate,
      Sex sex,
      @AgeConverter() Age age,
      @LengthConverter() Length lengthHeight,
      LengthHeigthMeasurementPosition measure});

  $DateCopyWith<$Res>? get observationDate;
  $AgeCopyWith<$Res> get age;
}

/// @nodoc
class _$CDCStatureForAgeCopyWithImpl<$Res, $Val extends CDCStatureForAge>
    implements $CDCStatureForAgeCopyWith<$Res> {
  _$CDCStatureForAgeCopyWithImpl(this._value, this._then);

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
abstract class _$$GrowthReferenceHeightForAgeImplCopyWith<$Res>
    implements $CDCStatureForAgeCopyWith<$Res> {
  factory _$$GrowthReferenceHeightForAgeImplCopyWith(
          _$GrowthReferenceHeightForAgeImpl value,
          $Res Function(_$GrowthReferenceHeightForAgeImpl) then) =
      __$$GrowthReferenceHeightForAgeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@DateConverter() Date? observationDate,
      Sex sex,
      @AgeConverter() Age age,
      @LengthConverter() Length lengthHeight,
      LengthHeigthMeasurementPosition measure});

  @override
  $DateCopyWith<$Res>? get observationDate;
  @override
  $AgeCopyWith<$Res> get age;
}

/// @nodoc
class __$$GrowthReferenceHeightForAgeImplCopyWithImpl<$Res>
    extends _$CDCStatureForAgeCopyWithImpl<$Res,
        _$GrowthReferenceHeightForAgeImpl>
    implements _$$GrowthReferenceHeightForAgeImplCopyWith<$Res> {
  __$$GrowthReferenceHeightForAgeImplCopyWithImpl(
      _$GrowthReferenceHeightForAgeImpl _value,
      $Res Function(_$GrowthReferenceHeightForAgeImpl) _then)
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
    return _then(_$GrowthReferenceHeightForAgeImpl(
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
class _$GrowthReferenceHeightForAgeImpl extends _GrowthReferenceHeightForAge {
  _$GrowthReferenceHeightForAgeImpl(
      {@DateConverter() this.observationDate,
      required this.sex,
      @AgeConverter() required this.age,
      @LengthConverter() required this.lengthHeight,
      required this.measure})
      : assert(
            age.ageInTotalMonthsByNow >= 24 && age.ageInTotalMonthsByNow <= 240,
            'Age must be in range of 24 - 240 months'),
        assert(
            observationDate == null ||
                observationDate.isSameOrBefore(Date.today()) ||
                observationDate.isSameOrAfter(age.dateOfBirth),
            'Observation date is impossible, because happen after today or before birth'),
        assert(
            observationDate == null ||
                observationDate.isSameOrAfter(age.dateAtMonthsAfterBirth(24)),
            'Observation date is impossible, because happen after today or before birth'),
        super._();

  factory _$GrowthReferenceHeightForAgeImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$GrowthReferenceHeightForAgeImplFromJson(json);

  @override
  @DateConverter()
  final Date? observationDate;
  @override
  final Sex sex;
  @override
  @AgeConverter()
  final Age age;
  @override
  @LengthConverter()
  final Length lengthHeight;
  @override
  final LengthHeigthMeasurementPosition measure;

  @override
  String toString() {
    return 'CDCStatureForAge(observationDate: $observationDate, sex: $sex, age: $age, lengthHeight: $lengthHeight, measure: $measure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GrowthReferenceHeightForAgeImpl &&
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
  _$$GrowthReferenceHeightForAgeImplCopyWith<_$GrowthReferenceHeightForAgeImpl>
      get copyWith => __$$GrowthReferenceHeightForAgeImplCopyWithImpl<
          _$GrowthReferenceHeightForAgeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GrowthReferenceHeightForAgeImplToJson(
      this,
    );
  }
}

abstract class _GrowthReferenceHeightForAge extends CDCStatureForAge {
  factory _GrowthReferenceHeightForAge(
          {@DateConverter() final Date? observationDate,
          required final Sex sex,
          @AgeConverter() required final Age age,
          @LengthConverter() required final Length lengthHeight,
          required final LengthHeigthMeasurementPosition measure}) =
      _$GrowthReferenceHeightForAgeImpl;
  _GrowthReferenceHeightForAge._() : super._();

  factory _GrowthReferenceHeightForAge.fromJson(Map<String, dynamic> json) =
      _$GrowthReferenceHeightForAgeImpl.fromJson;

  @override
  @DateConverter()
  Date? get observationDate;
  @override
  Sex get sex;
  @override
  @AgeConverter()
  Age get age;
  @override
  @LengthConverter()
  Length get lengthHeight;
  @override
  LengthHeigthMeasurementPosition get measure;
  @override
  @JsonKey(ignore: true)
  _$$GrowthReferenceHeightForAgeImplCopyWith<_$GrowthReferenceHeightForAgeImpl>
      get copyWith => throw _privateConstructorUsedError;
}

CDCWeightForAge _$CDCWeightForAgeFromJson(Map<String, dynamic> json) {
  return _CDCWeightForAge.fromJson(json);
}

/// @nodoc
mixin _$CDCWeightForAge {
  @DateConverter()
  Date? get observationDate => throw _privateConstructorUsedError;
  Sex get sex => throw _privateConstructorUsedError;
  @AgeConverter()
  Age get age => throw _privateConstructorUsedError;
  @MassConverter()
  Mass get weight => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CDCWeightForAgeCopyWith<CDCWeightForAge> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CDCWeightForAgeCopyWith<$Res> {
  factory $CDCWeightForAgeCopyWith(
          CDCWeightForAge value, $Res Function(CDCWeightForAge) then) =
      _$CDCWeightForAgeCopyWithImpl<$Res, CDCWeightForAge>;
  @useResult
  $Res call(
      {@DateConverter() Date? observationDate,
      Sex sex,
      @AgeConverter() Age age,
      @MassConverter() Mass weight});

  $DateCopyWith<$Res>? get observationDate;
  $AgeCopyWith<$Res> get age;
}

/// @nodoc
class _$CDCWeightForAgeCopyWithImpl<$Res, $Val extends CDCWeightForAge>
    implements $CDCWeightForAgeCopyWith<$Res> {
  _$CDCWeightForAgeCopyWithImpl(this._value, this._then);

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
abstract class _$$CDCWeightForAgeImplCopyWith<$Res>
    implements $CDCWeightForAgeCopyWith<$Res> {
  factory _$$CDCWeightForAgeImplCopyWith(_$CDCWeightForAgeImpl value,
          $Res Function(_$CDCWeightForAgeImpl) then) =
      __$$CDCWeightForAgeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@DateConverter() Date? observationDate,
      Sex sex,
      @AgeConverter() Age age,
      @MassConverter() Mass weight});

  @override
  $DateCopyWith<$Res>? get observationDate;
  @override
  $AgeCopyWith<$Res> get age;
}

/// @nodoc
class __$$CDCWeightForAgeImplCopyWithImpl<$Res>
    extends _$CDCWeightForAgeCopyWithImpl<$Res, _$CDCWeightForAgeImpl>
    implements _$$CDCWeightForAgeImplCopyWith<$Res> {
  __$$CDCWeightForAgeImplCopyWithImpl(
      _$CDCWeightForAgeImpl _value, $Res Function(_$CDCWeightForAgeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? observationDate = freezed,
    Object? sex = null,
    Object? age = null,
    Object? weight = null,
  }) {
    return _then(_$CDCWeightForAgeImpl(
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
class _$CDCWeightForAgeImpl extends _CDCWeightForAge {
  _$CDCWeightForAgeImpl(
      {@DateConverter() this.observationDate,
      required this.sex,
      @AgeConverter() required this.age,
      @MassConverter() required this.weight})
      : assert(
            age.ageInTotalMonthsByNow >= 24 && age.ageInTotalMonthsByNow <= 240,
            'Age must be in range of 24 - 240 months'),
        assert(
            observationDate == null ||
                observationDate.isSameOrBefore(Date.today()) ||
                observationDate.isSameOrAfter(age.dateOfBirth),
            'Observation date is impossible, because happen after today or before birth'),
        assert(
            observationDate == null ||
                observationDate.isSameOrAfter(age.dateAtMonthsAfterBirth(24)),
            'Observation date is impossible, because happen after today or before birth'),
        super._();

  factory _$CDCWeightForAgeImpl.fromJson(Map<String, dynamic> json) =>
      _$$CDCWeightForAgeImplFromJson(json);

  @override
  @DateConverter()
  final Date? observationDate;
  @override
  final Sex sex;
  @override
  @AgeConverter()
  final Age age;
  @override
  @MassConverter()
  final Mass weight;

  @override
  String toString() {
    return 'CDCWeightForAge(observationDate: $observationDate, sex: $sex, age: $age, weight: $weight)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CDCWeightForAgeImpl &&
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
  _$$CDCWeightForAgeImplCopyWith<_$CDCWeightForAgeImpl> get copyWith =>
      __$$CDCWeightForAgeImplCopyWithImpl<_$CDCWeightForAgeImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CDCWeightForAgeImplToJson(
      this,
    );
  }
}

abstract class _CDCWeightForAge extends CDCWeightForAge {
  factory _CDCWeightForAge(
      {@DateConverter() final Date? observationDate,
      required final Sex sex,
      @AgeConverter() required final Age age,
      @MassConverter() required final Mass weight}) = _$CDCWeightForAgeImpl;
  _CDCWeightForAge._() : super._();

  factory _CDCWeightForAge.fromJson(Map<String, dynamic> json) =
      _$CDCWeightForAgeImpl.fromJson;

  @override
  @DateConverter()
  Date? get observationDate;
  @override
  Sex get sex;
  @override
  @AgeConverter()
  Age get age;
  @override
  @MassConverter()
  Mass get weight;
  @override
  @JsonKey(ignore: true)
  _$$CDCWeightForAgeImplCopyWith<_$CDCWeightForAgeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CDCInfantWeightForAge _$CDCInfantWeightForAgeFromJson(
    Map<String, dynamic> json) {
  return _CDCInfantWeightForAge.fromJson(json);
}

/// @nodoc
mixin _$CDCInfantWeightForAge {
  @DateConverter()
  Date? get observationDate => throw _privateConstructorUsedError;
  Sex get sex => throw _privateConstructorUsedError;
  @AgeConverter()
  Age get age => throw _privateConstructorUsedError;
  @MassConverter()
  Mass get weight => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CDCInfantWeightForAgeCopyWith<CDCInfantWeightForAge> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CDCInfantWeightForAgeCopyWith<$Res> {
  factory $CDCInfantWeightForAgeCopyWith(CDCInfantWeightForAge value,
          $Res Function(CDCInfantWeightForAge) then) =
      _$CDCInfantWeightForAgeCopyWithImpl<$Res, CDCInfantWeightForAge>;
  @useResult
  $Res call(
      {@DateConverter() Date? observationDate,
      Sex sex,
      @AgeConverter() Age age,
      @MassConverter() Mass weight});

  $DateCopyWith<$Res>? get observationDate;
  $AgeCopyWith<$Res> get age;
}

/// @nodoc
class _$CDCInfantWeightForAgeCopyWithImpl<$Res,
        $Val extends CDCInfantWeightForAge>
    implements $CDCInfantWeightForAgeCopyWith<$Res> {
  _$CDCInfantWeightForAgeCopyWithImpl(this._value, this._then);

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
abstract class _$$CDCInfantWeightForAgeImplCopyWith<$Res>
    implements $CDCInfantWeightForAgeCopyWith<$Res> {
  factory _$$CDCInfantWeightForAgeImplCopyWith(
          _$CDCInfantWeightForAgeImpl value,
          $Res Function(_$CDCInfantWeightForAgeImpl) then) =
      __$$CDCInfantWeightForAgeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@DateConverter() Date? observationDate,
      Sex sex,
      @AgeConverter() Age age,
      @MassConverter() Mass weight});

  @override
  $DateCopyWith<$Res>? get observationDate;
  @override
  $AgeCopyWith<$Res> get age;
}

/// @nodoc
class __$$CDCInfantWeightForAgeImplCopyWithImpl<$Res>
    extends _$CDCInfantWeightForAgeCopyWithImpl<$Res,
        _$CDCInfantWeightForAgeImpl>
    implements _$$CDCInfantWeightForAgeImplCopyWith<$Res> {
  __$$CDCInfantWeightForAgeImplCopyWithImpl(_$CDCInfantWeightForAgeImpl _value,
      $Res Function(_$CDCInfantWeightForAgeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? observationDate = freezed,
    Object? sex = null,
    Object? age = null,
    Object? weight = null,
  }) {
    return _then(_$CDCInfantWeightForAgeImpl(
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
class _$CDCInfantWeightForAgeImpl extends _CDCInfantWeightForAge {
  _$CDCInfantWeightForAgeImpl(
      {@DateConverter() this.observationDate,
      required this.sex,
      @AgeConverter() required this.age,
      @MassConverter() required this.weight})
      : assert(age.ageInTotalDaysByNow >= 0 && age.ageInTotalMonthsByNow <= 36,
            'Age must be in range of 0 - 36 months'),
        assert(
            observationDate == null ||
                observationDate.isSameOrBefore(Date.today()) ||
                observationDate.isSameOrAfter(age.dateOfBirth),
            'Observation date is impossible, because happen after today or before birth'),
        super._();

  factory _$CDCInfantWeightForAgeImpl.fromJson(Map<String, dynamic> json) =>
      _$$CDCInfantWeightForAgeImplFromJson(json);

  @override
  @DateConverter()
  final Date? observationDate;
  @override
  final Sex sex;
  @override
  @AgeConverter()
  final Age age;
  @override
  @MassConverter()
  final Mass weight;

  @override
  String toString() {
    return 'CDCInfantWeightForAge(observationDate: $observationDate, sex: $sex, age: $age, weight: $weight)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CDCInfantWeightForAgeImpl &&
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
  _$$CDCInfantWeightForAgeImplCopyWith<_$CDCInfantWeightForAgeImpl>
      get copyWith => __$$CDCInfantWeightForAgeImplCopyWithImpl<
          _$CDCInfantWeightForAgeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CDCInfantWeightForAgeImplToJson(
      this,
    );
  }
}

abstract class _CDCInfantWeightForAge extends CDCInfantWeightForAge {
  factory _CDCInfantWeightForAge(
          {@DateConverter() final Date? observationDate,
          required final Sex sex,
          @AgeConverter() required final Age age,
          @MassConverter() required final Mass weight}) =
      _$CDCInfantWeightForAgeImpl;
  _CDCInfantWeightForAge._() : super._();

  factory _CDCInfantWeightForAge.fromJson(Map<String, dynamic> json) =
      _$CDCInfantWeightForAgeImpl.fromJson;

  @override
  @DateConverter()
  Date? get observationDate;
  @override
  Sex get sex;
  @override
  @AgeConverter()
  Age get age;
  @override
  @MassConverter()
  Mass get weight;
  @override
  @JsonKey(ignore: true)
  _$$CDCInfantWeightForAgeImplCopyWith<_$CDCInfantWeightForAgeImpl>
      get copyWith => throw _privateConstructorUsedError;
}

CDCInfantWeigthForLength _$CDCInfantWeigthForLengthFromJson(
    Map<String, dynamic> json) {
  return _CDCInfantWeigthForLength.fromJson(json);
}

/// @nodoc
mixin _$CDCInfantWeigthForLength {
  @DateConverter()
  Date? get observationDate => throw _privateConstructorUsedError;
  Sex get sex => throw _privateConstructorUsedError;
  @AgeConverter()
  Age get age => throw _privateConstructorUsedError;
  @LengthConverter()
  Length get length => throw _privateConstructorUsedError;
  @MassConverter()
  Mass get weight => throw _privateConstructorUsedError;
  LengthHeigthMeasurementPosition get measure =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CDCInfantWeigthForLengthCopyWith<CDCInfantWeigthForLength> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CDCInfantWeigthForLengthCopyWith<$Res> {
  factory $CDCInfantWeigthForLengthCopyWith(CDCInfantWeigthForLength value,
          $Res Function(CDCInfantWeigthForLength) then) =
      _$CDCInfantWeigthForLengthCopyWithImpl<$Res, CDCInfantWeigthForLength>;
  @useResult
  $Res call(
      {@DateConverter() Date? observationDate,
      Sex sex,
      @AgeConverter() Age age,
      @LengthConverter() Length length,
      @MassConverter() Mass weight,
      LengthHeigthMeasurementPosition measure});

  $DateCopyWith<$Res>? get observationDate;
  $AgeCopyWith<$Res> get age;
}

/// @nodoc
class _$CDCInfantWeigthForLengthCopyWithImpl<$Res,
        $Val extends CDCInfantWeigthForLength>
    implements $CDCInfantWeigthForLengthCopyWith<$Res> {
  _$CDCInfantWeigthForLengthCopyWithImpl(this._value, this._then);

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
abstract class _$$CDCInfantWeigthForLengthImplCopyWith<$Res>
    implements $CDCInfantWeigthForLengthCopyWith<$Res> {
  factory _$$CDCInfantWeigthForLengthImplCopyWith(
          _$CDCInfantWeigthForLengthImpl value,
          $Res Function(_$CDCInfantWeigthForLengthImpl) then) =
      __$$CDCInfantWeigthForLengthImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@DateConverter() Date? observationDate,
      Sex sex,
      @AgeConverter() Age age,
      @LengthConverter() Length length,
      @MassConverter() Mass weight,
      LengthHeigthMeasurementPosition measure});

  @override
  $DateCopyWith<$Res>? get observationDate;
  @override
  $AgeCopyWith<$Res> get age;
}

/// @nodoc
class __$$CDCInfantWeigthForLengthImplCopyWithImpl<$Res>
    extends _$CDCInfantWeigthForLengthCopyWithImpl<$Res,
        _$CDCInfantWeigthForLengthImpl>
    implements _$$CDCInfantWeigthForLengthImplCopyWith<$Res> {
  __$$CDCInfantWeigthForLengthImplCopyWithImpl(
      _$CDCInfantWeigthForLengthImpl _value,
      $Res Function(_$CDCInfantWeigthForLengthImpl) _then)
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
    return _then(_$CDCInfantWeigthForLengthImpl(
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
class _$CDCInfantWeigthForLengthImpl extends _CDCInfantWeigthForLength {
  _$CDCInfantWeigthForLengthImpl(
      {@DateConverter() this.observationDate,
      required this.sex,
      @AgeConverter() required this.age,
      @LengthConverter() required this.length,
      @MassConverter() required this.weight,
      required this.measure})
      : assert(
            adjustedLengthHeight(
                      measure: measure,
                      age: age,
                      lengthHeight: length,
                      type: AdjustedLengthType.cdc,
                    ).value >=
                    45 &&
                adjustedLengthHeight(
                      measure: measure,
                      age: age,
                      lengthHeight: length,
                      type: AdjustedLengthType.cdc,
                    ).value <
                    104 &&
                length.toCentimeters.value >= 45 &&
                length.toCentimeters.value < 104,
            'Please correcting measurement position based on age'),
        assert(
            adjustedLengthHeight(
                      measure: measure,
                      age: age,
                      lengthHeight: length,
                      type: AdjustedLengthType.cdc,
                    ).value >=
                    45 &&
                adjustedLengthHeight(
                      measure: measure,
                      age: age,
                      lengthHeight: length,
                      type: AdjustedLengthType.cdc,
                    ).value <
                    104,
            'Length must be in range of 45.0 - 103.9 cm'),
        assert(
            observationDate == null ||
                observationDate.isSameOrBefore(Date.today()) ||
                observationDate.isSameOrAfter(age.dateOfBirth),
            'Observation date is impossible, because happen after today or before birth'),
        super._();

  factory _$CDCInfantWeigthForLengthImpl.fromJson(Map<String, dynamic> json) =>
      _$$CDCInfantWeigthForLengthImplFromJson(json);

  @override
  @DateConverter()
  final Date? observationDate;
  @override
  final Sex sex;
  @override
  @AgeConverter()
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
    return 'CDCInfantWeigthForLength(observationDate: $observationDate, sex: $sex, age: $age, length: $length, weight: $weight, measure: $measure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CDCInfantWeigthForLengthImpl &&
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
  _$$CDCInfantWeigthForLengthImplCopyWith<_$CDCInfantWeigthForLengthImpl>
      get copyWith => __$$CDCInfantWeigthForLengthImplCopyWithImpl<
          _$CDCInfantWeigthForLengthImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CDCInfantWeigthForLengthImplToJson(
      this,
    );
  }
}

abstract class _CDCInfantWeigthForLength extends CDCInfantWeigthForLength {
  factory _CDCInfantWeigthForLength(
          {@DateConverter() final Date? observationDate,
          required final Sex sex,
          @AgeConverter() required final Age age,
          @LengthConverter() required final Length length,
          @MassConverter() required final Mass weight,
          required final LengthHeigthMeasurementPosition measure}) =
      _$CDCInfantWeigthForLengthImpl;
  _CDCInfantWeigthForLength._() : super._();

  factory _CDCInfantWeigthForLength.fromJson(Map<String, dynamic> json) =
      _$CDCInfantWeigthForLengthImpl.fromJson;

  @override
  @DateConverter()
  Date? get observationDate;
  @override
  Sex get sex;
  @override
  @AgeConverter()
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
  _$$CDCInfantWeigthForLengthImplCopyWith<_$CDCInfantWeigthForLengthImpl>
      get copyWith => throw _privateConstructorUsedError;
}

CDCWeigthForStature _$CDCWeigthForStatureFromJson(Map<String, dynamic> json) {
  return _CDCWeigthForStature.fromJson(json);
}

/// @nodoc
mixin _$CDCWeigthForStature {
  @DateConverter()
  Date? get observationDate => throw _privateConstructorUsedError;
  Sex get sex => throw _privateConstructorUsedError;
  @AgeConverter()
  Age get age => throw _privateConstructorUsedError;
  @LengthConverter()
  Length get length => throw _privateConstructorUsedError;
  @MassConverter()
  Mass get weight => throw _privateConstructorUsedError;
  LengthHeigthMeasurementPosition get measure =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CDCWeigthForStatureCopyWith<CDCWeigthForStature> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CDCWeigthForStatureCopyWith<$Res> {
  factory $CDCWeigthForStatureCopyWith(
          CDCWeigthForStature value, $Res Function(CDCWeigthForStature) then) =
      _$CDCWeigthForStatureCopyWithImpl<$Res, CDCWeigthForStature>;
  @useResult
  $Res call(
      {@DateConverter() Date? observationDate,
      Sex sex,
      @AgeConverter() Age age,
      @LengthConverter() Length length,
      @MassConverter() Mass weight,
      LengthHeigthMeasurementPosition measure});

  $DateCopyWith<$Res>? get observationDate;
  $AgeCopyWith<$Res> get age;
}

/// @nodoc
class _$CDCWeigthForStatureCopyWithImpl<$Res, $Val extends CDCWeigthForStature>
    implements $CDCWeigthForStatureCopyWith<$Res> {
  _$CDCWeigthForStatureCopyWithImpl(this._value, this._then);

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
abstract class _$$CDCWeigthForStatureImplCopyWith<$Res>
    implements $CDCWeigthForStatureCopyWith<$Res> {
  factory _$$CDCWeigthForStatureImplCopyWith(_$CDCWeigthForStatureImpl value,
          $Res Function(_$CDCWeigthForStatureImpl) then) =
      __$$CDCWeigthForStatureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@DateConverter() Date? observationDate,
      Sex sex,
      @AgeConverter() Age age,
      @LengthConverter() Length length,
      @MassConverter() Mass weight,
      LengthHeigthMeasurementPosition measure});

  @override
  $DateCopyWith<$Res>? get observationDate;
  @override
  $AgeCopyWith<$Res> get age;
}

/// @nodoc
class __$$CDCWeigthForStatureImplCopyWithImpl<$Res>
    extends _$CDCWeigthForStatureCopyWithImpl<$Res, _$CDCWeigthForStatureImpl>
    implements _$$CDCWeigthForStatureImplCopyWith<$Res> {
  __$$CDCWeigthForStatureImplCopyWithImpl(_$CDCWeigthForStatureImpl _value,
      $Res Function(_$CDCWeigthForStatureImpl) _then)
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
    return _then(_$CDCWeigthForStatureImpl(
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
class _$CDCWeigthForStatureImpl extends _CDCWeigthForStature {
  _$CDCWeigthForStatureImpl(
      {@DateConverter() this.observationDate,
      required this.sex,
      @AgeConverter() required this.age,
      @LengthConverter() required this.length,
      @MassConverter() required this.weight,
      required this.measure})
      : assert(
            adjustedLengthHeight(
                      measure: measure,
                      age: age,
                      lengthHeight: length,
                      type: AdjustedLengthType.cdc,
                    ).value >=
                    77 &&
                adjustedLengthHeight(
                      measure: measure,
                      age: age,
                      lengthHeight: length,
                      type: AdjustedLengthType.cdc,
                    ).value <
                    122 &&
                length.toCentimeters.value >= 77 &&
                length.toCentimeters.value < 122,
            'Please correcting measurement position based on age'),
        assert(
            adjustedLengthHeight(
                      measure: measure,
                      age: age,
                      lengthHeight: length,
                      type: AdjustedLengthType.cdc,
                    ).value >=
                    77 &&
                adjustedLengthHeight(
                      measure: measure,
                      age: age,
                      lengthHeight: length,
                      type: AdjustedLengthType.cdc,
                    ).value <
                    122,
            'Length must be in range of 77.0 - 121.9 cm'),
        assert(
            observationDate == null ||
                observationDate.isSameOrBefore(Date.today()) ||
                observationDate.isSameOrAfter(age.dateOfBirth),
            'Observation date is impossible, because happen after today or before birth'),
        super._();

  factory _$CDCWeigthForStatureImpl.fromJson(Map<String, dynamic> json) =>
      _$$CDCWeigthForStatureImplFromJson(json);

  @override
  @DateConverter()
  final Date? observationDate;
  @override
  final Sex sex;
  @override
  @AgeConverter()
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
    return 'CDCWeigthForStature(observationDate: $observationDate, sex: $sex, age: $age, length: $length, weight: $weight, measure: $measure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CDCWeigthForStatureImpl &&
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
  _$$CDCWeigthForStatureImplCopyWith<_$CDCWeigthForStatureImpl> get copyWith =>
      __$$CDCWeigthForStatureImplCopyWithImpl<_$CDCWeigthForStatureImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CDCWeigthForStatureImplToJson(
      this,
    );
  }
}

abstract class _CDCWeigthForStature extends CDCWeigthForStature {
  factory _CDCWeigthForStature(
          {@DateConverter() final Date? observationDate,
          required final Sex sex,
          @AgeConverter() required final Age age,
          @LengthConverter() required final Length length,
          @MassConverter() required final Mass weight,
          required final LengthHeigthMeasurementPosition measure}) =
      _$CDCWeigthForStatureImpl;
  _CDCWeigthForStature._() : super._();

  factory _CDCWeigthForStature.fromJson(Map<String, dynamic> json) =
      _$CDCWeigthForStatureImpl.fromJson;

  @override
  @DateConverter()
  Date? get observationDate;
  @override
  Sex get sex;
  @override
  @AgeConverter()
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
  _$$CDCWeigthForStatureImplCopyWith<_$CDCWeigthForStatureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
