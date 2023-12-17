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
  @JsonKey(includeToJson: false, includeFromJson: false)
  ArmCircumferenceForAgeData? get armCircumferenceData =>
      throw _privateConstructorUsedError;

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
      @LengthConverter() Length measurementResult,
      @JsonKey(includeToJson: false, includeFromJson: false)
      ArmCircumferenceForAgeData? armCircumferenceData});

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
    Object? armCircumferenceData = freezed,
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
      armCircumferenceData: freezed == armCircumferenceData
          ? _value.armCircumferenceData
          : armCircumferenceData // ignore: cast_nullable_to_non_nullable
              as ArmCircumferenceForAgeData?,
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
      @LengthConverter() Length measurementResult,
      @JsonKey(includeToJson: false, includeFromJson: false)
      ArmCircumferenceForAgeData? armCircumferenceData});

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
    Object? armCircumferenceData = freezed,
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
      armCircumferenceData: freezed == armCircumferenceData
          ? _value.armCircumferenceData
          : armCircumferenceData // ignore: cast_nullable_to_non_nullable
              as ArmCircumferenceForAgeData?,
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
      @LengthConverter() required this.measurementResult,
      @JsonKey(includeToJson: false, includeFromJson: false)
      this.armCircumferenceData})
      : assert(age.ageInTotalDaysByNow >= 91 && age.ageInTotalDaysByNow <= 1856,
            'Age must be in range of 91 - 1856 days'),
        assert(
            observationDate == null ||
                observationDate.isBefore(Date.today()) ||
                observationDate.isAfter(age.dateOfBirth),
            'Observation date is impossible, because happen after today or before birth'),
        assert(
            observationDate == null ||
                observationDate.isAfter(age.dateAtDaysAfterBirth(91)),
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
  @JsonKey(includeToJson: false, includeFromJson: false)
  final ArmCircumferenceForAgeData? armCircumferenceData;

  @override
  String toString() {
    return 'ArmCircumferenceForAge(observationDate: $observationDate, sex: $sex, age: $age, measurementResult: $measurementResult, armCircumferenceData: $armCircumferenceData)';
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
                other.measurementResult == measurementResult) &&
            (identical(other.armCircumferenceData, armCircumferenceData) ||
                other.armCircumferenceData == armCircumferenceData));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, observationDate, sex, age,
      measurementResult, armCircumferenceData);

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
          @LengthConverter() required final Length measurementResult,
          @JsonKey(includeToJson: false, includeFromJson: false)
          final ArmCircumferenceForAgeData? armCircumferenceData}) =
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
  @JsonKey(includeToJson: false, includeFromJson: false)
  ArmCircumferenceForAgeData? get armCircumferenceData;
  @override
  @JsonKey(ignore: true)
  _$$ArmCircumferenceForAgeImplCopyWith<_$ArmCircumferenceForAgeImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$BodyMassIndexForAge {
  Date? get observationDate => throw _privateConstructorUsedError;
  Sex get sex => throw _privateConstructorUsedError;
  BodyMassIndexMeasurement get bodyMassIndexMeasurement =>
      throw _privateConstructorUsedError;
  BodyMassIndexForAgeData get bodyMassIndexData =>
      throw _privateConstructorUsedError;

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
      BodyMassIndexMeasurement bodyMassIndexMeasurement,
      BodyMassIndexForAgeData bodyMassIndexData});

  $DateCopyWith<$Res>? get observationDate;
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
    Object? bodyMassIndexData = null,
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
      bodyMassIndexData: null == bodyMassIndexData
          ? _value.bodyMassIndexData
          : bodyMassIndexData // ignore: cast_nullable_to_non_nullable
              as BodyMassIndexForAgeData,
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
      BodyMassIndexMeasurement bodyMassIndexMeasurement,
      BodyMassIndexForAgeData bodyMassIndexData});

  @override
  $DateCopyWith<$Res>? get observationDate;
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
    Object? bodyMassIndexData = null,
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
      bodyMassIndexData: null == bodyMassIndexData
          ? _value.bodyMassIndexData
          : bodyMassIndexData // ignore: cast_nullable_to_non_nullable
              as BodyMassIndexForAgeData,
    ));
  }
}

/// @nodoc

class _$BodyMassIndexForAgeImpl extends _BodyMassIndexForAge {
  _$BodyMassIndexForAgeImpl(
      {this.observationDate,
      required this.sex,
      required this.bodyMassIndexMeasurement,
      required this.bodyMassIndexData})
      : assert(
            bodyMassIndexMeasurement.age.ageInTotalDaysByNow >= 0 &&
                bodyMassIndexMeasurement.age.ageInTotalDaysByNow <= 1856,
            'Age must be in range of 0 - 1856 days'),
        super._();

  @override
  final Date? observationDate;
  @override
  final Sex sex;
  @override
  final BodyMassIndexMeasurement bodyMassIndexMeasurement;
  @override
  final BodyMassIndexForAgeData bodyMassIndexData;

  @override
  String toString() {
    return 'BodyMassIndexForAge(observationDate: $observationDate, sex: $sex, bodyMassIndexMeasurement: $bodyMassIndexMeasurement, bodyMassIndexData: $bodyMassIndexData)';
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
                other.bodyMassIndexMeasurement == bodyMassIndexMeasurement) &&
            (identical(other.bodyMassIndexData, bodyMassIndexData) ||
                other.bodyMassIndexData == bodyMassIndexData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, observationDate, sex,
      bodyMassIndexMeasurement, bodyMassIndexData);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BodyMassIndexForAgeImplCopyWith<_$BodyMassIndexForAgeImpl> get copyWith =>
      __$$BodyMassIndexForAgeImplCopyWithImpl<_$BodyMassIndexForAgeImpl>(
          this, _$identity);
}

abstract class _BodyMassIndexForAge extends BodyMassIndexForAge {
  factory _BodyMassIndexForAge(
          {final Date? observationDate,
          required final Sex sex,
          required final BodyMassIndexMeasurement bodyMassIndexMeasurement,
          required final BodyMassIndexForAgeData bodyMassIndexData}) =
      _$BodyMassIndexForAgeImpl;
  _BodyMassIndexForAge._() : super._();

  @override
  Date? get observationDate;
  @override
  Sex get sex;
  @override
  BodyMassIndexMeasurement get bodyMassIndexMeasurement;
  @override
  BodyMassIndexForAgeData get bodyMassIndexData;
  @override
  @JsonKey(ignore: true)
  _$$BodyMassIndexForAgeImplCopyWith<_$BodyMassIndexForAgeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HeadCircumferenceForAge {
  Date? get observationDate => throw _privateConstructorUsedError;
  Sex get sex => throw _privateConstructorUsedError;
  Age get age => throw _privateConstructorUsedError;
  Length get measurementResult => throw _privateConstructorUsedError;
  HeadCircumferenceForAgeData get headCircumferenceData =>
      throw _privateConstructorUsedError;

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
      Length measurementResult,
      HeadCircumferenceForAgeData headCircumferenceData});

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
    Object? headCircumferenceData = null,
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
      headCircumferenceData: null == headCircumferenceData
          ? _value.headCircumferenceData
          : headCircumferenceData // ignore: cast_nullable_to_non_nullable
              as HeadCircumferenceForAgeData,
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
      Length measurementResult,
      HeadCircumferenceForAgeData headCircumferenceData});

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
    Object? headCircumferenceData = null,
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
      headCircumferenceData: null == headCircumferenceData
          ? _value.headCircumferenceData
          : headCircumferenceData // ignore: cast_nullable_to_non_nullable
              as HeadCircumferenceForAgeData,
    ));
  }
}

/// @nodoc

class _$HeadCircumferenceForAgeImpl extends _HeadCircumferenceForAge {
  _$HeadCircumferenceForAgeImpl(
      {this.observationDate,
      required this.sex,
      required this.age,
      required this.measurementResult,
      required this.headCircumferenceData})
      : assert(age.ageInTotalDaysByNow >= 0 && age.ageInTotalDaysByNow <= 1856,
            'Age must be in range of 0 - 1856 days'),
        super._();

  @override
  final Date? observationDate;
  @override
  final Sex sex;
  @override
  final Age age;
  @override
  final Length measurementResult;
  @override
  final HeadCircumferenceForAgeData headCircumferenceData;

  @override
  String toString() {
    return 'HeadCircumferenceForAge(observationDate: $observationDate, sex: $sex, age: $age, measurementResult: $measurementResult, headCircumferenceData: $headCircumferenceData)';
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
                other.measurementResult == measurementResult) &&
            (identical(other.headCircumferenceData, headCircumferenceData) ||
                other.headCircumferenceData == headCircumferenceData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, observationDate, sex, age,
      measurementResult, headCircumferenceData);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HeadCircumferenceForAgeImplCopyWith<_$HeadCircumferenceForAgeImpl>
      get copyWith => __$$HeadCircumferenceForAgeImplCopyWithImpl<
          _$HeadCircumferenceForAgeImpl>(this, _$identity);
}

abstract class _HeadCircumferenceForAge extends HeadCircumferenceForAge {
  factory _HeadCircumferenceForAge(
          {final Date? observationDate,
          required final Sex sex,
          required final Age age,
          required final Length measurementResult,
          required final HeadCircumferenceForAgeData headCircumferenceData}) =
      _$HeadCircumferenceForAgeImpl;
  _HeadCircumferenceForAge._() : super._();

  @override
  Date? get observationDate;
  @override
  Sex get sex;
  @override
  Age get age;
  @override
  Length get measurementResult;
  @override
  HeadCircumferenceForAgeData get headCircumferenceData;
  @override
  @JsonKey(ignore: true)
  _$$HeadCircumferenceForAgeImplCopyWith<_$HeadCircumferenceForAgeImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LengthForAge {
  Date? get observationDate => throw _privateConstructorUsedError;
  Sex get sex => throw _privateConstructorUsedError;
  Age get age => throw _privateConstructorUsedError;
  Length get lengthHeight => throw _privateConstructorUsedError;
  LengthHeigthMeasurementPosition get measure =>
      throw _privateConstructorUsedError;
  LengthForAgeData get lengthForAgeData => throw _privateConstructorUsedError;

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
      Length lengthHeight,
      LengthHeigthMeasurementPosition measure,
      LengthForAgeData lengthForAgeData});

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
    Object? lengthForAgeData = null,
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
      lengthForAgeData: null == lengthForAgeData
          ? _value.lengthForAgeData
          : lengthForAgeData // ignore: cast_nullable_to_non_nullable
              as LengthForAgeData,
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
      Length lengthHeight,
      LengthHeigthMeasurementPosition measure,
      LengthForAgeData lengthForAgeData});

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
    Object? lengthForAgeData = null,
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
      lengthForAgeData: null == lengthForAgeData
          ? _value.lengthForAgeData
          : lengthForAgeData // ignore: cast_nullable_to_non_nullable
              as LengthForAgeData,
    ));
  }
}

/// @nodoc

class _$LengthForAgeImpl extends _LengthForAge {
  _$LengthForAgeImpl(
      {this.observationDate,
      required this.sex,
      required this.age,
      required this.lengthHeight,
      required this.measure,
      required this.lengthForAgeData})
      : assert(age.ageInTotalDaysByNow >= 0 && age.ageInTotalDaysByNow <= 1856,
            'Age must be in range of 0 - 1856 days'),
        super._();

  @override
  final Date? observationDate;
  @override
  final Sex sex;
  @override
  final Age age;
  @override
  final Length lengthHeight;
  @override
  final LengthHeigthMeasurementPosition measure;
  @override
  final LengthForAgeData lengthForAgeData;

  @override
  String toString() {
    return 'LengthForAge(observationDate: $observationDate, sex: $sex, age: $age, lengthHeight: $lengthHeight, measure: $measure, lengthForAgeData: $lengthForAgeData)';
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
            (identical(other.measure, measure) || other.measure == measure) &&
            (identical(other.lengthForAgeData, lengthForAgeData) ||
                other.lengthForAgeData == lengthForAgeData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, observationDate, sex, age,
      lengthHeight, measure, lengthForAgeData);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LengthForAgeImplCopyWith<_$LengthForAgeImpl> get copyWith =>
      __$$LengthForAgeImplCopyWithImpl<_$LengthForAgeImpl>(this, _$identity);
}

abstract class _LengthForAge extends LengthForAge {
  factory _LengthForAge(
      {final Date? observationDate,
      required final Sex sex,
      required final Age age,
      required final Length lengthHeight,
      required final LengthHeigthMeasurementPosition measure,
      required final LengthForAgeData lengthForAgeData}) = _$LengthForAgeImpl;
  _LengthForAge._() : super._();

  @override
  Date? get observationDate;
  @override
  Sex get sex;
  @override
  Age get age;
  @override
  Length get lengthHeight;
  @override
  LengthHeigthMeasurementPosition get measure;
  @override
  LengthForAgeData get lengthForAgeData;
  @override
  @JsonKey(ignore: true)
  _$$LengthForAgeImplCopyWith<_$LengthForAgeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SubscapularSkinfoldForAge {
  Date? get observationDate => throw _privateConstructorUsedError;
  Sex get sex => throw _privateConstructorUsedError;
  Age get age => throw _privateConstructorUsedError;
  Length get measurementResult => throw _privateConstructorUsedError;
  SubscapularSkinfoldForAgeData get subscapularSkinfoldData =>
      throw _privateConstructorUsedError;

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
      Length measurementResult,
      SubscapularSkinfoldForAgeData subscapularSkinfoldData});

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
    Object? subscapularSkinfoldData = null,
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
      subscapularSkinfoldData: null == subscapularSkinfoldData
          ? _value.subscapularSkinfoldData
          : subscapularSkinfoldData // ignore: cast_nullable_to_non_nullable
              as SubscapularSkinfoldForAgeData,
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
      Length measurementResult,
      SubscapularSkinfoldForAgeData subscapularSkinfoldData});

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
    Object? subscapularSkinfoldData = null,
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
      subscapularSkinfoldData: null == subscapularSkinfoldData
          ? _value.subscapularSkinfoldData
          : subscapularSkinfoldData // ignore: cast_nullable_to_non_nullable
              as SubscapularSkinfoldForAgeData,
    ));
  }
}

/// @nodoc

class _$SubscapularSkinfoldForAgeImpl extends _SubscapularSkinfoldForAge {
  _$SubscapularSkinfoldForAgeImpl(
      {this.observationDate,
      required this.sex,
      required this.age,
      required this.measurementResult,
      required this.subscapularSkinfoldData})
      : assert(age.ageInTotalDaysByNow >= 91 && age.ageInTotalDaysByNow <= 1856,
            'Age must be in range of 91 - 1856 days'),
        super._();

  @override
  final Date? observationDate;
  @override
  final Sex sex;
  @override
  final Age age;
  @override
  final Length measurementResult;
  @override
  final SubscapularSkinfoldForAgeData subscapularSkinfoldData;

  @override
  String toString() {
    return 'SubscapularSkinfoldForAge(observationDate: $observationDate, sex: $sex, age: $age, measurementResult: $measurementResult, subscapularSkinfoldData: $subscapularSkinfoldData)';
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
                other.measurementResult == measurementResult) &&
            (identical(
                    other.subscapularSkinfoldData, subscapularSkinfoldData) ||
                other.subscapularSkinfoldData == subscapularSkinfoldData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, observationDate, sex, age,
      measurementResult, subscapularSkinfoldData);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SubscapularSkinfoldForAgeImplCopyWith<_$SubscapularSkinfoldForAgeImpl>
      get copyWith => __$$SubscapularSkinfoldForAgeImplCopyWithImpl<
          _$SubscapularSkinfoldForAgeImpl>(this, _$identity);
}

abstract class _SubscapularSkinfoldForAge extends SubscapularSkinfoldForAge {
  factory _SubscapularSkinfoldForAge(
      {final Date? observationDate,
      required final Sex sex,
      required final Age age,
      required final Length measurementResult,
      required final SubscapularSkinfoldForAgeData
          subscapularSkinfoldData}) = _$SubscapularSkinfoldForAgeImpl;
  _SubscapularSkinfoldForAge._() : super._();

  @override
  Date? get observationDate;
  @override
  Sex get sex;
  @override
  Age get age;
  @override
  Length get measurementResult;
  @override
  SubscapularSkinfoldForAgeData get subscapularSkinfoldData;
  @override
  @JsonKey(ignore: true)
  _$$SubscapularSkinfoldForAgeImplCopyWith<_$SubscapularSkinfoldForAgeImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TricepsSkinfoldForAge {
  Date? get observationDate => throw _privateConstructorUsedError;
  Sex get sex => throw _privateConstructorUsedError;
  Age get age => throw _privateConstructorUsedError;
  Length get measurementResult => throw _privateConstructorUsedError;
  TricepsSkinfoldForAgeData get tricepsSkinfoldData =>
      throw _privateConstructorUsedError;

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
      Length measurementResult,
      TricepsSkinfoldForAgeData tricepsSkinfoldData});

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
    Object? tricepsSkinfoldData = null,
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
      tricepsSkinfoldData: null == tricepsSkinfoldData
          ? _value.tricepsSkinfoldData
          : tricepsSkinfoldData // ignore: cast_nullable_to_non_nullable
              as TricepsSkinfoldForAgeData,
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
      Length measurementResult,
      TricepsSkinfoldForAgeData tricepsSkinfoldData});

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
    Object? tricepsSkinfoldData = null,
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
      tricepsSkinfoldData: null == tricepsSkinfoldData
          ? _value.tricepsSkinfoldData
          : tricepsSkinfoldData // ignore: cast_nullable_to_non_nullable
              as TricepsSkinfoldForAgeData,
    ));
  }
}

/// @nodoc

class _$TricepsSkinfoldForAgeImpl extends _TricepsSkinfoldForAge {
  _$TricepsSkinfoldForAgeImpl(
      {this.observationDate,
      required this.sex,
      required this.age,
      required this.measurementResult,
      required this.tricepsSkinfoldData})
      : assert(age.ageInTotalDaysByNow >= 91 && age.ageInTotalDaysByNow <= 1856,
            'Age must be in range of 91 - 1856 days'),
        super._();

  @override
  final Date? observationDate;
  @override
  final Sex sex;
  @override
  final Age age;
  @override
  final Length measurementResult;
  @override
  final TricepsSkinfoldForAgeData tricepsSkinfoldData;

  @override
  String toString() {
    return 'TricepsSkinfoldForAge(observationDate: $observationDate, sex: $sex, age: $age, measurementResult: $measurementResult, tricepsSkinfoldData: $tricepsSkinfoldData)';
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
                other.measurementResult == measurementResult) &&
            (identical(other.tricepsSkinfoldData, tricepsSkinfoldData) ||
                other.tricepsSkinfoldData == tricepsSkinfoldData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, observationDate, sex, age,
      measurementResult, tricepsSkinfoldData);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TricepsSkinfoldForAgeImplCopyWith<_$TricepsSkinfoldForAgeImpl>
      get copyWith => __$$TricepsSkinfoldForAgeImplCopyWithImpl<
          _$TricepsSkinfoldForAgeImpl>(this, _$identity);
}

abstract class _TricepsSkinfoldForAge extends TricepsSkinfoldForAge {
  factory _TricepsSkinfoldForAge(
          {final Date? observationDate,
          required final Sex sex,
          required final Age age,
          required final Length measurementResult,
          required final TricepsSkinfoldForAgeData tricepsSkinfoldData}) =
      _$TricepsSkinfoldForAgeImpl;
  _TricepsSkinfoldForAge._() : super._();

  @override
  Date? get observationDate;
  @override
  Sex get sex;
  @override
  Age get age;
  @override
  Length get measurementResult;
  @override
  TricepsSkinfoldForAgeData get tricepsSkinfoldData;
  @override
  @JsonKey(ignore: true)
  _$$TricepsSkinfoldForAgeImplCopyWith<_$TricepsSkinfoldForAgeImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$WeightForAge {
  Date? get observationDate => throw _privateConstructorUsedError;
  Sex get sex => throw _privateConstructorUsedError;
  Age get age => throw _privateConstructorUsedError;
  Mass get weight => throw _privateConstructorUsedError;
  WeightForAgeData get weightForAgeData => throw _privateConstructorUsedError;

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
      {Date? observationDate,
      Sex sex,
      Age age,
      Mass weight,
      WeightForAgeData weightForAgeData});

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
    Object? weightForAgeData = null,
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
      weightForAgeData: null == weightForAgeData
          ? _value.weightForAgeData
          : weightForAgeData // ignore: cast_nullable_to_non_nullable
              as WeightForAgeData,
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
      {Date? observationDate,
      Sex sex,
      Age age,
      Mass weight,
      WeightForAgeData weightForAgeData});

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
    Object? weightForAgeData = null,
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
      weightForAgeData: null == weightForAgeData
          ? _value.weightForAgeData
          : weightForAgeData // ignore: cast_nullable_to_non_nullable
              as WeightForAgeData,
    ));
  }
}

/// @nodoc

class _$WeightForAgeImpl extends _WeightForAge {
  _$WeightForAgeImpl(
      {this.observationDate,
      required this.sex,
      required this.age,
      required this.weight,
      required this.weightForAgeData})
      : assert(age.ageInTotalDaysByNow >= 0 && age.ageInTotalDaysByNow <= 1856,
            'Age must be in range of 0 - 1856 days'),
        super._();

  @override
  final Date? observationDate;
  @override
  final Sex sex;
  @override
  final Age age;
  @override
  final Mass weight;
  @override
  final WeightForAgeData weightForAgeData;

  @override
  String toString() {
    return 'WeightForAge(observationDate: $observationDate, sex: $sex, age: $age, weight: $weight, weightForAgeData: $weightForAgeData)';
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
            (identical(other.weight, weight) || other.weight == weight) &&
            (identical(other.weightForAgeData, weightForAgeData) ||
                other.weightForAgeData == weightForAgeData));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, observationDate, sex, age, weight, weightForAgeData);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WeightForAgeImplCopyWith<_$WeightForAgeImpl> get copyWith =>
      __$$WeightForAgeImplCopyWithImpl<_$WeightForAgeImpl>(this, _$identity);
}

abstract class _WeightForAge extends WeightForAge {
  factory _WeightForAge(
      {final Date? observationDate,
      required final Sex sex,
      required final Age age,
      required final Mass weight,
      required final WeightForAgeData weightForAgeData}) = _$WeightForAgeImpl;
  _WeightForAge._() : super._();

  @override
  Date? get observationDate;
  @override
  Sex get sex;
  @override
  Age get age;
  @override
  Mass get weight;
  @override
  WeightForAgeData get weightForAgeData;
  @override
  @JsonKey(ignore: true)
  _$$WeightForAgeImplCopyWith<_$WeightForAgeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$WeightForHeight {
  Date? get observationDate => throw _privateConstructorUsedError;
  Sex get sex => throw _privateConstructorUsedError;
  Age get age => throw _privateConstructorUsedError;
  Length get height => throw _privateConstructorUsedError;
  Mass get mass => throw _privateConstructorUsedError;
  LengthHeigthMeasurementPosition get measure =>
      throw _privateConstructorUsedError;
  WeightForHeightData get weightForHeightData =>
      throw _privateConstructorUsedError;

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
      Length height,
      Mass mass,
      LengthHeigthMeasurementPosition measure,
      WeightForHeightData weightForHeightData});

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
    Object? mass = null,
    Object? measure = null,
    Object? weightForHeightData = null,
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
      mass: null == mass
          ? _value.mass
          : mass // ignore: cast_nullable_to_non_nullable
              as Mass,
      measure: null == measure
          ? _value.measure
          : measure // ignore: cast_nullable_to_non_nullable
              as LengthHeigthMeasurementPosition,
      weightForHeightData: null == weightForHeightData
          ? _value.weightForHeightData
          : weightForHeightData // ignore: cast_nullable_to_non_nullable
              as WeightForHeightData,
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
      Length height,
      Mass mass,
      LengthHeigthMeasurementPosition measure,
      WeightForHeightData weightForHeightData});

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
    Object? mass = null,
    Object? measure = null,
    Object? weightForHeightData = null,
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
      mass: null == mass
          ? _value.mass
          : mass // ignore: cast_nullable_to_non_nullable
              as Mass,
      measure: null == measure
          ? _value.measure
          : measure // ignore: cast_nullable_to_non_nullable
              as LengthHeigthMeasurementPosition,
      weightForHeightData: null == weightForHeightData
          ? _value.weightForHeightData
          : weightForHeightData // ignore: cast_nullable_to_non_nullable
              as WeightForHeightData,
    ));
  }
}

/// @nodoc

class _$WeightForHeightImpl extends _WeightForHeight {
  _$WeightForHeightImpl(
      {this.observationDate,
      required this.sex,
      required this.age,
      required this.height,
      required this.mass,
      required this.measure,
      required this.weightForHeightData})
      : assert(
            adjustedLengthHeight(
                      measure: measure,
                      ageInDays: age.ageInTotalDaysByNow,
                      lengthHeight: height.toCentimeters.value!,
                    ) >=
                    65 &&
                adjustedLengthHeight(
                      measure: measure,
                      ageInDays: age.ageInTotalDaysByNow,
                      lengthHeight: height.toCentimeters.value!,
                    ) <=
                    120 &&
                height.toCentimeters.value! >= 65 &&
                height.toCentimeters.value! <= 120,
            'Please correcting measurement position based on age'),
        assert(
            adjustedLengthHeight(
                      measure: measure,
                      ageInDays: age.ageInTotalDaysByNow,
                      lengthHeight: height.toCentimeters.value!,
                    ) >=
                    65 &&
                adjustedLengthHeight(
                      measure: measure,
                      ageInDays: age.ageInTotalDaysByNow,
                      lengthHeight: height.toCentimeters.value!,
                    ) <=
                    120,
            'Height must be in range of 65 - 120 cm'),
        super._();

  @override
  final Date? observationDate;
  @override
  final Sex sex;
  @override
  final Age age;
  @override
  final Length height;
  @override
  final Mass mass;
  @override
  final LengthHeigthMeasurementPosition measure;
  @override
  final WeightForHeightData weightForHeightData;

  @override
  String toString() {
    return 'WeightForHeight(observationDate: $observationDate, sex: $sex, age: $age, height: $height, mass: $mass, measure: $measure, weightForHeightData: $weightForHeightData)';
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
            (identical(other.mass, mass) || other.mass == mass) &&
            (identical(other.measure, measure) || other.measure == measure) &&
            (identical(other.weightForHeightData, weightForHeightData) ||
                other.weightForHeightData == weightForHeightData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, observationDate, sex, age,
      height, mass, measure, weightForHeightData);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WeightForHeightImplCopyWith<_$WeightForHeightImpl> get copyWith =>
      __$$WeightForHeightImplCopyWithImpl<_$WeightForHeightImpl>(
          this, _$identity);
}

abstract class _WeightForHeight extends WeightForHeight {
  factory _WeightForHeight(
          {final Date? observationDate,
          required final Sex sex,
          required final Age age,
          required final Length height,
          required final Mass mass,
          required final LengthHeigthMeasurementPosition measure,
          required final WeightForHeightData weightForHeightData}) =
      _$WeightForHeightImpl;
  _WeightForHeight._() : super._();

  @override
  Date? get observationDate;
  @override
  Sex get sex;
  @override
  Age get age;
  @override
  Length get height;
  @override
  Mass get mass;
  @override
  LengthHeigthMeasurementPosition get measure;
  @override
  WeightForHeightData get weightForHeightData;
  @override
  @JsonKey(ignore: true)
  _$$WeightForHeightImplCopyWith<_$WeightForHeightImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$WeigthForLength {
  Date? get observationDate => throw _privateConstructorUsedError;
  Sex get sex => throw _privateConstructorUsedError;
  Age get age => throw _privateConstructorUsedError;
  Length get length => throw _privateConstructorUsedError;
  Mass get massMeasurementResult => throw _privateConstructorUsedError;
  LengthHeigthMeasurementPosition get measure =>
      throw _privateConstructorUsedError;
  WeigthForLengthData get weigthForLengthData =>
      throw _privateConstructorUsedError;

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
      Length length,
      Mass massMeasurementResult,
      LengthHeigthMeasurementPosition measure,
      WeigthForLengthData weigthForLengthData});

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
    Object? massMeasurementResult = null,
    Object? measure = null,
    Object? weigthForLengthData = null,
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
      massMeasurementResult: null == massMeasurementResult
          ? _value.massMeasurementResult
          : massMeasurementResult // ignore: cast_nullable_to_non_nullable
              as Mass,
      measure: null == measure
          ? _value.measure
          : measure // ignore: cast_nullable_to_non_nullable
              as LengthHeigthMeasurementPosition,
      weigthForLengthData: null == weigthForLengthData
          ? _value.weigthForLengthData
          : weigthForLengthData // ignore: cast_nullable_to_non_nullable
              as WeigthForLengthData,
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
      Length length,
      Mass massMeasurementResult,
      LengthHeigthMeasurementPosition measure,
      WeigthForLengthData weigthForLengthData});

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
    Object? massMeasurementResult = null,
    Object? measure = null,
    Object? weigthForLengthData = null,
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
      massMeasurementResult: null == massMeasurementResult
          ? _value.massMeasurementResult
          : massMeasurementResult // ignore: cast_nullable_to_non_nullable
              as Mass,
      measure: null == measure
          ? _value.measure
          : measure // ignore: cast_nullable_to_non_nullable
              as LengthHeigthMeasurementPosition,
      weigthForLengthData: null == weigthForLengthData
          ? _value.weigthForLengthData
          : weigthForLengthData // ignore: cast_nullable_to_non_nullable
              as WeigthForLengthData,
    ));
  }
}

/// @nodoc

class _$WeigthForLengthImpl extends _WeigthForLength {
  _$WeigthForLengthImpl(
      {this.observationDate,
      required this.sex,
      required this.age,
      required this.length,
      required this.massMeasurementResult,
      required this.measure,
      required this.weigthForLengthData})
      : assert(
            adjustedLengthHeight(
                      measure: measure,
                      ageInDays: age.ageInTotalDaysByNow,
                      lengthHeight: length.toCentimeters.value!,
                    ) >=
                    45 &&
                adjustedLengthHeight(
                      measure: measure,
                      ageInDays: age.ageInTotalDaysByNow,
                      lengthHeight: length.toCentimeters.value!,
                    ) <=
                    110 &&
                length.toCentimeters.value! >= 45 &&
                length.toCentimeters.value! <= 110,
            'Please correcting measurement position based on age'),
        assert(
            adjustedLengthHeight(
                      measure: measure,
                      ageInDays: age.ageInTotalDaysByNow,
                      lengthHeight: length.toCentimeters.value!,
                    ) >=
                    45 &&
                adjustedLengthHeight(
                      measure: measure,
                      ageInDays: age.ageInTotalDaysByNow,
                      lengthHeight: length.toCentimeters.value!,
                    ) <=
                    110,
            'Length must be in range of 45 - 110 cm'),
        super._();

  @override
  final Date? observationDate;
  @override
  final Sex sex;
  @override
  final Age age;
  @override
  final Length length;
  @override
  final Mass massMeasurementResult;
  @override
  final LengthHeigthMeasurementPosition measure;
  @override
  final WeigthForLengthData weigthForLengthData;

  @override
  String toString() {
    return 'WeigthForLength(observationDate: $observationDate, sex: $sex, age: $age, length: $length, massMeasurementResult: $massMeasurementResult, measure: $measure, weigthForLengthData: $weigthForLengthData)';
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
            (identical(other.massMeasurementResult, massMeasurementResult) ||
                other.massMeasurementResult == massMeasurementResult) &&
            (identical(other.measure, measure) || other.measure == measure) &&
            (identical(other.weigthForLengthData, weigthForLengthData) ||
                other.weigthForLengthData == weigthForLengthData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, observationDate, sex, age,
      length, massMeasurementResult, measure, weigthForLengthData);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WeigthForLengthImplCopyWith<_$WeigthForLengthImpl> get copyWith =>
      __$$WeigthForLengthImplCopyWithImpl<_$WeigthForLengthImpl>(
          this, _$identity);
}

abstract class _WeigthForLength extends WeigthForLength {
  factory _WeigthForLength(
          {final Date? observationDate,
          required final Sex sex,
          required final Age age,
          required final Length length,
          required final Mass massMeasurementResult,
          required final LengthHeigthMeasurementPosition measure,
          required final WeigthForLengthData weigthForLengthData}) =
      _$WeigthForLengthImpl;
  _WeigthForLength._() : super._();

  @override
  Date? get observationDate;
  @override
  Sex get sex;
  @override
  Age get age;
  @override
  Length get length;
  @override
  Mass get massMeasurementResult;
  @override
  LengthHeigthMeasurementPosition get measure;
  @override
  WeigthForLengthData get weigthForLengthData;
  @override
  @JsonKey(ignore: true)
  _$$WeigthForLengthImplCopyWith<_$WeigthForLengthImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
