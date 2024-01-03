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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FentonHeadCircumferenceForAge _$FentonHeadCircumferenceForAgeFromJson(
    Map<String, dynamic> json) {
  return _FentonHeadCircumferenceForAge.fromJson(json);
}

/// @nodoc
mixin _$FentonHeadCircumferenceForAge {
  Date? get observationDate => throw _privateConstructorUsedError;
  Sex get sex => throw _privateConstructorUsedError;
  Age get age => throw _privateConstructorUsedError;
  @LengthConverter()
  Length get measurementResult => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
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
  $Res call(
      {Date? observationDate,
      Sex sex,
      Age age,
      @LengthConverter() Length measurementResult});

  $DateCopyWith<$Res>? get observationDate;
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
abstract class _$$FentonHeadCircumferenceForAgeImplCopyWith<$Res>
    implements $FentonHeadCircumferenceForAgeCopyWith<$Res> {
  factory _$$FentonHeadCircumferenceForAgeImplCopyWith(
          _$FentonHeadCircumferenceForAgeImpl value,
          $Res Function(_$FentonHeadCircumferenceForAgeImpl) then) =
      __$$FentonHeadCircumferenceForAgeImplCopyWithImpl<$Res>;
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
class __$$FentonHeadCircumferenceForAgeImplCopyWithImpl<$Res>
    extends _$FentonHeadCircumferenceForAgeCopyWithImpl<$Res,
        _$FentonHeadCircumferenceForAgeImpl>
    implements _$$FentonHeadCircumferenceForAgeImplCopyWith<$Res> {
  __$$FentonHeadCircumferenceForAgeImplCopyWithImpl(
      _$FentonHeadCircumferenceForAgeImpl _value,
      $Res Function(_$FentonHeadCircumferenceForAgeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? observationDate = freezed,
    Object? sex = null,
    Object? age = null,
    Object? measurementResult = null,
  }) {
    return _then(_$FentonHeadCircumferenceForAgeImpl(
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
class _$FentonHeadCircumferenceForAgeImpl
    extends _FentonHeadCircumferenceForAge {
  _$FentonHeadCircumferenceForAgeImpl(
      {this.observationDate,
      required this.sex,
      required this.age,
      @LengthConverter() required this.measurementResult})
      : assert(age.ageInTotalWeeksByNow >= 22 && age.ageInTotalWeeksByNow <= 50,
            'Age must be in range of 22 - 50 weeks'),
        assert(
            observationDate == null ||
                observationDate.isSameOrBefore(Date.today()) ||
                observationDate.isSameOrAfter(age.dateOfBirth),
            'Observation date is impossible, because happen after today or before birth'),
        assert(
            observationDate == null ||
                observationDate.isSameOrAfter(age.dateAtWeeksAfterBirth(22)),
            'Observation date is impossible, because happen after today or before birth'),
        super._();

  factory _$FentonHeadCircumferenceForAgeImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$FentonHeadCircumferenceForAgeImplFromJson(json);

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
    return 'FentonHeadCircumferenceForAge(observationDate: $observationDate, sex: $sex, age: $age, measurementResult: $measurementResult)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FentonHeadCircumferenceForAgeImpl &&
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
          {final Date? observationDate,
          required final Sex sex,
          required final Age age,
          @LengthConverter() required final Length measurementResult}) =
      _$FentonHeadCircumferenceForAgeImpl;
  _FentonHeadCircumferenceForAge._() : super._();

  factory _FentonHeadCircumferenceForAge.fromJson(Map<String, dynamic> json) =
      _$FentonHeadCircumferenceForAgeImpl.fromJson;

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
  _$$FentonHeadCircumferenceForAgeImplCopyWith<
          _$FentonHeadCircumferenceForAgeImpl>
      get copyWith => throw _privateConstructorUsedError;
}

FentonLengthForAge _$FentonLengthForAgeFromJson(Map<String, dynamic> json) {
  return _FentonLengthForAge.fromJson(json);
}

/// @nodoc
mixin _$FentonLengthForAge {
  Date? get observationDate => throw _privateConstructorUsedError;
  Sex get sex => throw _privateConstructorUsedError;
  Age get age => throw _privateConstructorUsedError;
  @LengthConverter()
  Length get lengthHeight => throw _privateConstructorUsedError;
  LengthHeigthMeasurementPosition get measure =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
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
      {Date? observationDate,
      Sex sex,
      Age age,
      @LengthConverter() Length lengthHeight,
      LengthHeigthMeasurementPosition measure});

  $DateCopyWith<$Res>? get observationDate;
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
abstract class _$$FentonLengthForAgeImplCopyWith<$Res>
    implements $FentonLengthForAgeCopyWith<$Res> {
  factory _$$FentonLengthForAgeImplCopyWith(_$FentonLengthForAgeImpl value,
          $Res Function(_$FentonLengthForAgeImpl) then) =
      __$$FentonLengthForAgeImplCopyWithImpl<$Res>;
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
class __$$FentonLengthForAgeImplCopyWithImpl<$Res>
    extends _$FentonLengthForAgeCopyWithImpl<$Res, _$FentonLengthForAgeImpl>
    implements _$$FentonLengthForAgeImplCopyWith<$Res> {
  __$$FentonLengthForAgeImplCopyWithImpl(_$FentonLengthForAgeImpl _value,
      $Res Function(_$FentonLengthForAgeImpl) _then)
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
    return _then(_$FentonLengthForAgeImpl(
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
class _$FentonLengthForAgeImpl extends _FentonLengthForAge {
  _$FentonLengthForAgeImpl(
      {this.observationDate,
      required this.sex,
      required this.age,
      @LengthConverter() required this.lengthHeight,
      required this.measure})
      : assert(age.ageInTotalWeeksByNow >= 22 && age.ageInTotalWeeksByNow <= 50,
            'Age must be in range of 22 - 50 weeks'),
        assert(
            observationDate == null ||
                observationDate.isSameOrBefore(Date.today()) ||
                observationDate.isSameOrAfter(age.dateOfBirth),
            'Observation date is impossible, because happen after today or before birth'),
        assert(
            observationDate == null ||
                observationDate.isSameOrAfter(age.dateAtWeeksAfterBirth(22)),
            'Observation date is impossible, because happen after today or before birth'),
        super._();

  factory _$FentonLengthForAgeImpl.fromJson(Map<String, dynamic> json) =>
      _$$FentonLengthForAgeImplFromJson(json);

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
    return 'FentonLengthForAge(observationDate: $observationDate, sex: $sex, age: $age, lengthHeight: $lengthHeight, measure: $measure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FentonLengthForAgeImpl &&
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
          {final Date? observationDate,
          required final Sex sex,
          required final Age age,
          @LengthConverter() required final Length lengthHeight,
          required final LengthHeigthMeasurementPosition measure}) =
      _$FentonLengthForAgeImpl;
  _FentonLengthForAge._() : super._();

  factory _FentonLengthForAge.fromJson(Map<String, dynamic> json) =
      _$FentonLengthForAgeImpl.fromJson;

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
  _$$FentonLengthForAgeImplCopyWith<_$FentonLengthForAgeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FentonWeightForAge _$FentonWeightForAgeFromJson(Map<String, dynamic> json) {
  return _FentonWeightForAge.fromJson(json);
}

/// @nodoc
mixin _$FentonWeightForAge {
  Date? get observationDate => throw _privateConstructorUsedError;
  Sex get sex => throw _privateConstructorUsedError;
  Age get age => throw _privateConstructorUsedError;
  @MassConverter()
  Mass get weight => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FentonWeightForAgeCopyWith<FentonWeightForAge> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FentonWeightForAgeCopyWith<$Res> {
  factory $FentonWeightForAgeCopyWith(
          FentonWeightForAge value, $Res Function(FentonWeightForAge) then) =
      _$FentonWeightForAgeCopyWithImpl<$Res, FentonWeightForAge>;
  @useResult
  $Res call(
      {Date? observationDate, Sex sex, Age age, @MassConverter() Mass weight});

  $DateCopyWith<$Res>? get observationDate;
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
abstract class _$$FentonWeightForAgeImplCopyWith<$Res>
    implements $FentonWeightForAgeCopyWith<$Res> {
  factory _$$FentonWeightForAgeImplCopyWith(_$FentonWeightForAgeImpl value,
          $Res Function(_$FentonWeightForAgeImpl) then) =
      __$$FentonWeightForAgeImplCopyWithImpl<$Res>;
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
class __$$FentonWeightForAgeImplCopyWithImpl<$Res>
    extends _$FentonWeightForAgeCopyWithImpl<$Res, _$FentonWeightForAgeImpl>
    implements _$$FentonWeightForAgeImplCopyWith<$Res> {
  __$$FentonWeightForAgeImplCopyWithImpl(_$FentonWeightForAgeImpl _value,
      $Res Function(_$FentonWeightForAgeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? observationDate = freezed,
    Object? sex = null,
    Object? age = null,
    Object? weight = null,
  }) {
    return _then(_$FentonWeightForAgeImpl(
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
class _$FentonWeightForAgeImpl extends _FentonWeightForAge {
  _$FentonWeightForAgeImpl(
      {this.observationDate,
      required this.sex,
      required this.age,
      @MassConverter() required this.weight})
      : assert(age.ageInTotalWeeksByNow >= 22 && age.ageInTotalWeeksByNow <= 50,
            'Age must be in range of 22 - 50 weeks'),
        assert(
            observationDate == null ||
                observationDate.isSameOrBefore(Date.today()) ||
                observationDate.isSameOrAfter(age.dateOfBirth),
            'Observation date is impossible, because happen after today or before birth'),
        assert(
            observationDate == null ||
                observationDate.isSameOrAfter(age.dateAtWeeksAfterBirth(22)),
            'Observation date is impossible, because happen after today or before birth'),
        super._();

  factory _$FentonWeightForAgeImpl.fromJson(Map<String, dynamic> json) =>
      _$$FentonWeightForAgeImplFromJson(json);

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
    return 'FentonWeightForAge(observationDate: $observationDate, sex: $sex, age: $age, weight: $weight)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FentonWeightForAgeImpl &&
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
      {final Date? observationDate,
      required final Sex sex,
      required final Age age,
      @MassConverter() required final Mass weight}) = _$FentonWeightForAgeImpl;
  _FentonWeightForAge._() : super._();

  factory _FentonWeightForAge.fromJson(Map<String, dynamic> json) =
      _$FentonWeightForAgeImpl.fromJson;

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
  _$$FentonWeightForAgeImplCopyWith<_$FentonWeightForAgeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
