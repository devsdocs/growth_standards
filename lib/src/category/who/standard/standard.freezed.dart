// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'standard.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$WHOGrowthStandardsArmCircumferenceForAge {
  Date? get observationDate;
  Sex get sex;
  Age get age;
  Length get measurementResult;

  /// Create a copy of WHOGrowthStandardsArmCircumferenceForAge
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $WHOGrowthStandardsArmCircumferenceForAgeCopyWith<
          WHOGrowthStandardsArmCircumferenceForAge>
      get copyWith => _$WHOGrowthStandardsArmCircumferenceForAgeCopyWithImpl<
              WHOGrowthStandardsArmCircumferenceForAge>(
          this as WHOGrowthStandardsArmCircumferenceForAge, _$identity);

  /// Serializes this WHOGrowthStandardsArmCircumferenceForAge to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is WHOGrowthStandardsArmCircumferenceForAge &&
            (identical(other.observationDate, observationDate) ||
                other.observationDate == observationDate) &&
            (identical(other.sex, sex) || other.sex == sex) &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.measurementResult, measurementResult) ||
                other.measurementResult == measurementResult));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, observationDate, sex, age, measurementResult);

  @override
  String toString() {
    return 'WHOGrowthStandardsArmCircumferenceForAge(observationDate: $observationDate, sex: $sex, age: $age, measurementResult: $measurementResult)';
  }
}

/// @nodoc
abstract mixin class $WHOGrowthStandardsArmCircumferenceForAgeCopyWith<$Res> {
  factory $WHOGrowthStandardsArmCircumferenceForAgeCopyWith(
          WHOGrowthStandardsArmCircumferenceForAge value,
          $Res Function(WHOGrowthStandardsArmCircumferenceForAge) _then) =
      _$WHOGrowthStandardsArmCircumferenceForAgeCopyWithImpl;
  @useResult
  $Res call(
      {Date? observationDate, Sex sex, Age age, Length measurementResult});

  $DateCopyWith<$Res>? get observationDate;
  $AgeCopyWith<$Res> get age;
}

/// @nodoc
class _$WHOGrowthStandardsArmCircumferenceForAgeCopyWithImpl<$Res>
    implements $WHOGrowthStandardsArmCircumferenceForAgeCopyWith<$Res> {
  _$WHOGrowthStandardsArmCircumferenceForAgeCopyWithImpl(
      this._self, this._then);

  final WHOGrowthStandardsArmCircumferenceForAge _self;
  final $Res Function(WHOGrowthStandardsArmCircumferenceForAge) _then;

  /// Create a copy of WHOGrowthStandardsArmCircumferenceForAge
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? observationDate = freezed,
    Object? sex = null,
    Object? age = null,
    Object? measurementResult = null,
  }) {
    return _then(_self.copyWith(
      observationDate: freezed == observationDate
          ? _self.observationDate
          : observationDate // ignore: cast_nullable_to_non_nullable
              as Date?,
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

  /// Create a copy of WHOGrowthStandardsArmCircumferenceForAge
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DateCopyWith<$Res>? get observationDate {
    if (_self.observationDate == null) {
      return null;
    }

    return $DateCopyWith<$Res>(_self.observationDate!, (value) {
      return _then(_self.copyWith(observationDate: value));
    });
  }

  /// Create a copy of WHOGrowthStandardsArmCircumferenceForAge
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
class _WHOGrowthStandardsArmCircumferenceForAge
    extends WHOGrowthStandardsArmCircumferenceForAge {
  _WHOGrowthStandardsArmCircumferenceForAge(
      {this.observationDate,
      required this.sex,
      required this.age,
      required this.measurementResult})
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
  factory _WHOGrowthStandardsArmCircumferenceForAge.fromJson(
          Map<String, dynamic> json) =>
      _$WHOGrowthStandardsArmCircumferenceForAgeFromJson(json);

  @override
  final Date? observationDate;
  @override
  final Sex sex;
  @override
  final Age age;
  @override
  final Length measurementResult;

  /// Create a copy of WHOGrowthStandardsArmCircumferenceForAge
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$WHOGrowthStandardsArmCircumferenceForAgeCopyWith<
          _WHOGrowthStandardsArmCircumferenceForAge>
      get copyWith => __$WHOGrowthStandardsArmCircumferenceForAgeCopyWithImpl<
          _WHOGrowthStandardsArmCircumferenceForAge>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$WHOGrowthStandardsArmCircumferenceForAgeToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WHOGrowthStandardsArmCircumferenceForAge &&
            (identical(other.observationDate, observationDate) ||
                other.observationDate == observationDate) &&
            (identical(other.sex, sex) || other.sex == sex) &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.measurementResult, measurementResult) ||
                other.measurementResult == measurementResult));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, observationDate, sex, age, measurementResult);

  @override
  String toString() {
    return 'WHOGrowthStandardsArmCircumferenceForAge(observationDate: $observationDate, sex: $sex, age: $age, measurementResult: $measurementResult)';
  }
}

/// @nodoc
abstract mixin class _$WHOGrowthStandardsArmCircumferenceForAgeCopyWith<$Res>
    implements $WHOGrowthStandardsArmCircumferenceForAgeCopyWith<$Res> {
  factory _$WHOGrowthStandardsArmCircumferenceForAgeCopyWith(
          _WHOGrowthStandardsArmCircumferenceForAge value,
          $Res Function(_WHOGrowthStandardsArmCircumferenceForAge) _then) =
      __$WHOGrowthStandardsArmCircumferenceForAgeCopyWithImpl;
  @override
  @useResult
  $Res call(
      {Date? observationDate, Sex sex, Age age, Length measurementResult});

  @override
  $DateCopyWith<$Res>? get observationDate;
  @override
  $AgeCopyWith<$Res> get age;
}

/// @nodoc
class __$WHOGrowthStandardsArmCircumferenceForAgeCopyWithImpl<$Res>
    implements _$WHOGrowthStandardsArmCircumferenceForAgeCopyWith<$Res> {
  __$WHOGrowthStandardsArmCircumferenceForAgeCopyWithImpl(
      this._self, this._then);

  final _WHOGrowthStandardsArmCircumferenceForAge _self;
  final $Res Function(_WHOGrowthStandardsArmCircumferenceForAge) _then;

  /// Create a copy of WHOGrowthStandardsArmCircumferenceForAge
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? observationDate = freezed,
    Object? sex = null,
    Object? age = null,
    Object? measurementResult = null,
  }) {
    return _then(_WHOGrowthStandardsArmCircumferenceForAge(
      observationDate: freezed == observationDate
          ? _self.observationDate
          : observationDate // ignore: cast_nullable_to_non_nullable
              as Date?,
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

  /// Create a copy of WHOGrowthStandardsArmCircumferenceForAge
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DateCopyWith<$Res>? get observationDate {
    if (_self.observationDate == null) {
      return null;
    }

    return $DateCopyWith<$Res>(_self.observationDate!, (value) {
      return _then(_self.copyWith(observationDate: value));
    });
  }

  /// Create a copy of WHOGrowthStandardsArmCircumferenceForAge
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
mixin _$WHOGrowthStandardsBodyMassIndexMeasurement {
  num get value;
  Age get age;

  /// Create a copy of WHOGrowthStandardsBodyMassIndexMeasurement
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $WHOGrowthStandardsBodyMassIndexMeasurementCopyWith<
          WHOGrowthStandardsBodyMassIndexMeasurement>
      get copyWith => _$WHOGrowthStandardsBodyMassIndexMeasurementCopyWithImpl<
              WHOGrowthStandardsBodyMassIndexMeasurement>(
          this as WHOGrowthStandardsBodyMassIndexMeasurement, _$identity);

  /// Serializes this WHOGrowthStandardsBodyMassIndexMeasurement to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is WHOGrowthStandardsBodyMassIndexMeasurement &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.age, age) || other.age == age));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, value, age);

  @override
  String toString() {
    return 'WHOGrowthStandardsBodyMassIndexMeasurement(value: $value, age: $age)';
  }
}

/// @nodoc
abstract mixin class $WHOGrowthStandardsBodyMassIndexMeasurementCopyWith<$Res> {
  factory $WHOGrowthStandardsBodyMassIndexMeasurementCopyWith(
          WHOGrowthStandardsBodyMassIndexMeasurement value,
          $Res Function(WHOGrowthStandardsBodyMassIndexMeasurement) _then) =
      _$WHOGrowthStandardsBodyMassIndexMeasurementCopyWithImpl;
  @useResult
  $Res call({num value, Age age});

  $AgeCopyWith<$Res> get age;
}

/// @nodoc
class _$WHOGrowthStandardsBodyMassIndexMeasurementCopyWithImpl<$Res>
    implements $WHOGrowthStandardsBodyMassIndexMeasurementCopyWith<$Res> {
  _$WHOGrowthStandardsBodyMassIndexMeasurementCopyWithImpl(
      this._self, this._then);

  final WHOGrowthStandardsBodyMassIndexMeasurement _self;
  final $Res Function(WHOGrowthStandardsBodyMassIndexMeasurement) _then;

  /// Create a copy of WHOGrowthStandardsBodyMassIndexMeasurement
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
    Object? age = null,
  }) {
    return _then(_self.copyWith(
      value: null == value
          ? _self.value
          : value // ignore: cast_nullable_to_non_nullable
              as num,
      age: null == age
          ? _self.age
          : age // ignore: cast_nullable_to_non_nullable
              as Age,
    ));
  }

  /// Create a copy of WHOGrowthStandardsBodyMassIndexMeasurement
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
class _WHOGrowthStandardsBodyMassIndexMeasurement
    extends WHOGrowthStandardsBodyMassIndexMeasurement {
  _WHOGrowthStandardsBodyMassIndexMeasurement(this.value, {required this.age})
      : super._();
  factory _WHOGrowthStandardsBodyMassIndexMeasurement.fromJson(
          Map<String, dynamic> json) =>
      _$WHOGrowthStandardsBodyMassIndexMeasurementFromJson(json);

  @override
  final num value;
  @override
  final Age age;

  /// Create a copy of WHOGrowthStandardsBodyMassIndexMeasurement
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$WHOGrowthStandardsBodyMassIndexMeasurementCopyWith<
          _WHOGrowthStandardsBodyMassIndexMeasurement>
      get copyWith => __$WHOGrowthStandardsBodyMassIndexMeasurementCopyWithImpl<
          _WHOGrowthStandardsBodyMassIndexMeasurement>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$WHOGrowthStandardsBodyMassIndexMeasurementToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WHOGrowthStandardsBodyMassIndexMeasurement &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.age, age) || other.age == age));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, value, age);

  @override
  String toString() {
    return 'WHOGrowthStandardsBodyMassIndexMeasurement(value: $value, age: $age)';
  }
}

/// @nodoc
abstract mixin class _$WHOGrowthStandardsBodyMassIndexMeasurementCopyWith<$Res>
    implements $WHOGrowthStandardsBodyMassIndexMeasurementCopyWith<$Res> {
  factory _$WHOGrowthStandardsBodyMassIndexMeasurementCopyWith(
          _WHOGrowthStandardsBodyMassIndexMeasurement value,
          $Res Function(_WHOGrowthStandardsBodyMassIndexMeasurement) _then) =
      __$WHOGrowthStandardsBodyMassIndexMeasurementCopyWithImpl;
  @override
  @useResult
  $Res call({num value, Age age});

  @override
  $AgeCopyWith<$Res> get age;
}

/// @nodoc
class __$WHOGrowthStandardsBodyMassIndexMeasurementCopyWithImpl<$Res>
    implements _$WHOGrowthStandardsBodyMassIndexMeasurementCopyWith<$Res> {
  __$WHOGrowthStandardsBodyMassIndexMeasurementCopyWithImpl(
      this._self, this._then);

  final _WHOGrowthStandardsBodyMassIndexMeasurement _self;
  final $Res Function(_WHOGrowthStandardsBodyMassIndexMeasurement) _then;

  /// Create a copy of WHOGrowthStandardsBodyMassIndexMeasurement
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? value = null,
    Object? age = null,
  }) {
    return _then(_WHOGrowthStandardsBodyMassIndexMeasurement(
      null == value
          ? _self.value
          : value // ignore: cast_nullable_to_non_nullable
              as num,
      age: null == age
          ? _self.age
          : age // ignore: cast_nullable_to_non_nullable
              as Age,
    ));
  }

  /// Create a copy of WHOGrowthStandardsBodyMassIndexMeasurement
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
mixin _$WHOGrowthStandardsBodyMassIndexForAge {
  Date? get observationDate;
  Sex get sex;
  bool get oedemaExist;
  @WHOGrowthStandardsBodyMassIndexMeasurementConverter()
  WHOGrowthStandardsBodyMassIndexMeasurement get bodyMassIndexMeasurement;

  /// Create a copy of WHOGrowthStandardsBodyMassIndexForAge
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $WHOGrowthStandardsBodyMassIndexForAgeCopyWith<
          WHOGrowthStandardsBodyMassIndexForAge>
      get copyWith => _$WHOGrowthStandardsBodyMassIndexForAgeCopyWithImpl<
              WHOGrowthStandardsBodyMassIndexForAge>(
          this as WHOGrowthStandardsBodyMassIndexForAge, _$identity);

  /// Serializes this WHOGrowthStandardsBodyMassIndexForAge to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is WHOGrowthStandardsBodyMassIndexForAge &&
            (identical(other.observationDate, observationDate) ||
                other.observationDate == observationDate) &&
            (identical(other.sex, sex) || other.sex == sex) &&
            (identical(other.oedemaExist, oedemaExist) ||
                other.oedemaExist == oedemaExist) &&
            (identical(
                    other.bodyMassIndexMeasurement, bodyMassIndexMeasurement) ||
                other.bodyMassIndexMeasurement == bodyMassIndexMeasurement));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, observationDate, sex, oedemaExist, bodyMassIndexMeasurement);

  @override
  String toString() {
    return 'WHOGrowthStandardsBodyMassIndexForAge(observationDate: $observationDate, sex: $sex, oedemaExist: $oedemaExist, bodyMassIndexMeasurement: $bodyMassIndexMeasurement)';
  }
}

/// @nodoc
abstract mixin class $WHOGrowthStandardsBodyMassIndexForAgeCopyWith<$Res> {
  factory $WHOGrowthStandardsBodyMassIndexForAgeCopyWith(
          WHOGrowthStandardsBodyMassIndexForAge value,
          $Res Function(WHOGrowthStandardsBodyMassIndexForAge) _then) =
      _$WHOGrowthStandardsBodyMassIndexForAgeCopyWithImpl;
  @useResult
  $Res call(
      {Date? observationDate,
      Sex sex,
      bool oedemaExist,
      @WHOGrowthStandardsBodyMassIndexMeasurementConverter()
      WHOGrowthStandardsBodyMassIndexMeasurement bodyMassIndexMeasurement});

  $DateCopyWith<$Res>? get observationDate;
  $WHOGrowthStandardsBodyMassIndexMeasurementCopyWith<$Res>
      get bodyMassIndexMeasurement;
}

/// @nodoc
class _$WHOGrowthStandardsBodyMassIndexForAgeCopyWithImpl<$Res>
    implements $WHOGrowthStandardsBodyMassIndexForAgeCopyWith<$Res> {
  _$WHOGrowthStandardsBodyMassIndexForAgeCopyWithImpl(this._self, this._then);

  final WHOGrowthStandardsBodyMassIndexForAge _self;
  final $Res Function(WHOGrowthStandardsBodyMassIndexForAge) _then;

  /// Create a copy of WHOGrowthStandardsBodyMassIndexForAge
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? observationDate = freezed,
    Object? sex = null,
    Object? oedemaExist = null,
    Object? bodyMassIndexMeasurement = null,
  }) {
    return _then(_self.copyWith(
      observationDate: freezed == observationDate
          ? _self.observationDate
          : observationDate // ignore: cast_nullable_to_non_nullable
              as Date?,
      sex: null == sex
          ? _self.sex
          : sex // ignore: cast_nullable_to_non_nullable
              as Sex,
      oedemaExist: null == oedemaExist
          ? _self.oedemaExist
          : oedemaExist // ignore: cast_nullable_to_non_nullable
              as bool,
      bodyMassIndexMeasurement: null == bodyMassIndexMeasurement
          ? _self.bodyMassIndexMeasurement
          : bodyMassIndexMeasurement // ignore: cast_nullable_to_non_nullable
              as WHOGrowthStandardsBodyMassIndexMeasurement,
    ));
  }

  /// Create a copy of WHOGrowthStandardsBodyMassIndexForAge
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DateCopyWith<$Res>? get observationDate {
    if (_self.observationDate == null) {
      return null;
    }

    return $DateCopyWith<$Res>(_self.observationDate!, (value) {
      return _then(_self.copyWith(observationDate: value));
    });
  }

  /// Create a copy of WHOGrowthStandardsBodyMassIndexForAge
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WHOGrowthStandardsBodyMassIndexMeasurementCopyWith<$Res>
      get bodyMassIndexMeasurement {
    return $WHOGrowthStandardsBodyMassIndexMeasurementCopyWith<$Res>(
        _self.bodyMassIndexMeasurement, (value) {
      return _then(_self.copyWith(bodyMassIndexMeasurement: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _WHOGrowthStandardsBodyMassIndexForAge
    extends WHOGrowthStandardsBodyMassIndexForAge {
  _WHOGrowthStandardsBodyMassIndexForAge(
      {this.observationDate,
      required this.sex,
      this.oedemaExist = false,
      @WHOGrowthStandardsBodyMassIndexMeasurementConverter()
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
  factory _WHOGrowthStandardsBodyMassIndexForAge.fromJson(
          Map<String, dynamic> json) =>
      _$WHOGrowthStandardsBodyMassIndexForAgeFromJson(json);

  @override
  final Date? observationDate;
  @override
  final Sex sex;
  @override
  @JsonKey()
  final bool oedemaExist;
  @override
  @WHOGrowthStandardsBodyMassIndexMeasurementConverter()
  final WHOGrowthStandardsBodyMassIndexMeasurement bodyMassIndexMeasurement;

  /// Create a copy of WHOGrowthStandardsBodyMassIndexForAge
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$WHOGrowthStandardsBodyMassIndexForAgeCopyWith<
          _WHOGrowthStandardsBodyMassIndexForAge>
      get copyWith => __$WHOGrowthStandardsBodyMassIndexForAgeCopyWithImpl<
          _WHOGrowthStandardsBodyMassIndexForAge>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$WHOGrowthStandardsBodyMassIndexForAgeToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WHOGrowthStandardsBodyMassIndexForAge &&
            (identical(other.observationDate, observationDate) ||
                other.observationDate == observationDate) &&
            (identical(other.sex, sex) || other.sex == sex) &&
            (identical(other.oedemaExist, oedemaExist) ||
                other.oedemaExist == oedemaExist) &&
            (identical(
                    other.bodyMassIndexMeasurement, bodyMassIndexMeasurement) ||
                other.bodyMassIndexMeasurement == bodyMassIndexMeasurement));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, observationDate, sex, oedemaExist, bodyMassIndexMeasurement);

  @override
  String toString() {
    return 'WHOGrowthStandardsBodyMassIndexForAge(observationDate: $observationDate, sex: $sex, oedemaExist: $oedemaExist, bodyMassIndexMeasurement: $bodyMassIndexMeasurement)';
  }
}

/// @nodoc
abstract mixin class _$WHOGrowthStandardsBodyMassIndexForAgeCopyWith<$Res>
    implements $WHOGrowthStandardsBodyMassIndexForAgeCopyWith<$Res> {
  factory _$WHOGrowthStandardsBodyMassIndexForAgeCopyWith(
          _WHOGrowthStandardsBodyMassIndexForAge value,
          $Res Function(_WHOGrowthStandardsBodyMassIndexForAge) _then) =
      __$WHOGrowthStandardsBodyMassIndexForAgeCopyWithImpl;
  @override
  @useResult
  $Res call(
      {Date? observationDate,
      Sex sex,
      bool oedemaExist,
      @WHOGrowthStandardsBodyMassIndexMeasurementConverter()
      WHOGrowthStandardsBodyMassIndexMeasurement bodyMassIndexMeasurement});

  @override
  $DateCopyWith<$Res>? get observationDate;
  @override
  $WHOGrowthStandardsBodyMassIndexMeasurementCopyWith<$Res>
      get bodyMassIndexMeasurement;
}

/// @nodoc
class __$WHOGrowthStandardsBodyMassIndexForAgeCopyWithImpl<$Res>
    implements _$WHOGrowthStandardsBodyMassIndexForAgeCopyWith<$Res> {
  __$WHOGrowthStandardsBodyMassIndexForAgeCopyWithImpl(this._self, this._then);

  final _WHOGrowthStandardsBodyMassIndexForAge _self;
  final $Res Function(_WHOGrowthStandardsBodyMassIndexForAge) _then;

  /// Create a copy of WHOGrowthStandardsBodyMassIndexForAge
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? observationDate = freezed,
    Object? sex = null,
    Object? oedemaExist = null,
    Object? bodyMassIndexMeasurement = null,
  }) {
    return _then(_WHOGrowthStandardsBodyMassIndexForAge(
      observationDate: freezed == observationDate
          ? _self.observationDate
          : observationDate // ignore: cast_nullable_to_non_nullable
              as Date?,
      sex: null == sex
          ? _self.sex
          : sex // ignore: cast_nullable_to_non_nullable
              as Sex,
      oedemaExist: null == oedemaExist
          ? _self.oedemaExist
          : oedemaExist // ignore: cast_nullable_to_non_nullable
              as bool,
      bodyMassIndexMeasurement: null == bodyMassIndexMeasurement
          ? _self.bodyMassIndexMeasurement
          : bodyMassIndexMeasurement // ignore: cast_nullable_to_non_nullable
              as WHOGrowthStandardsBodyMassIndexMeasurement,
    ));
  }

  /// Create a copy of WHOGrowthStandardsBodyMassIndexForAge
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DateCopyWith<$Res>? get observationDate {
    if (_self.observationDate == null) {
      return null;
    }

    return $DateCopyWith<$Res>(_self.observationDate!, (value) {
      return _then(_self.copyWith(observationDate: value));
    });
  }

  /// Create a copy of WHOGrowthStandardsBodyMassIndexForAge
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WHOGrowthStandardsBodyMassIndexMeasurementCopyWith<$Res>
      get bodyMassIndexMeasurement {
    return $WHOGrowthStandardsBodyMassIndexMeasurementCopyWith<$Res>(
        _self.bodyMassIndexMeasurement, (value) {
      return _then(_self.copyWith(bodyMassIndexMeasurement: value));
    });
  }
}

/// @nodoc
mixin _$WHOGrowthStandardsHeadCircumferenceForAge {
  Date? get observationDate;
  Sex get sex;
  Age get age;
  Length get measurementResult;

  /// Create a copy of WHOGrowthStandardsHeadCircumferenceForAge
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $WHOGrowthStandardsHeadCircumferenceForAgeCopyWith<
          WHOGrowthStandardsHeadCircumferenceForAge>
      get copyWith => _$WHOGrowthStandardsHeadCircumferenceForAgeCopyWithImpl<
              WHOGrowthStandardsHeadCircumferenceForAge>(
          this as WHOGrowthStandardsHeadCircumferenceForAge, _$identity);

  /// Serializes this WHOGrowthStandardsHeadCircumferenceForAge to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is WHOGrowthStandardsHeadCircumferenceForAge &&
            (identical(other.observationDate, observationDate) ||
                other.observationDate == observationDate) &&
            (identical(other.sex, sex) || other.sex == sex) &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.measurementResult, measurementResult) ||
                other.measurementResult == measurementResult));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, observationDate, sex, age, measurementResult);

  @override
  String toString() {
    return 'WHOGrowthStandardsHeadCircumferenceForAge(observationDate: $observationDate, sex: $sex, age: $age, measurementResult: $measurementResult)';
  }
}

/// @nodoc
abstract mixin class $WHOGrowthStandardsHeadCircumferenceForAgeCopyWith<$Res> {
  factory $WHOGrowthStandardsHeadCircumferenceForAgeCopyWith(
          WHOGrowthStandardsHeadCircumferenceForAge value,
          $Res Function(WHOGrowthStandardsHeadCircumferenceForAge) _then) =
      _$WHOGrowthStandardsHeadCircumferenceForAgeCopyWithImpl;
  @useResult
  $Res call(
      {Date? observationDate, Sex sex, Age age, Length measurementResult});

  $DateCopyWith<$Res>? get observationDate;
  $AgeCopyWith<$Res> get age;
}

/// @nodoc
class _$WHOGrowthStandardsHeadCircumferenceForAgeCopyWithImpl<$Res>
    implements $WHOGrowthStandardsHeadCircumferenceForAgeCopyWith<$Res> {
  _$WHOGrowthStandardsHeadCircumferenceForAgeCopyWithImpl(
      this._self, this._then);

  final WHOGrowthStandardsHeadCircumferenceForAge _self;
  final $Res Function(WHOGrowthStandardsHeadCircumferenceForAge) _then;

  /// Create a copy of WHOGrowthStandardsHeadCircumferenceForAge
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? observationDate = freezed,
    Object? sex = null,
    Object? age = null,
    Object? measurementResult = null,
  }) {
    return _then(_self.copyWith(
      observationDate: freezed == observationDate
          ? _self.observationDate
          : observationDate // ignore: cast_nullable_to_non_nullable
              as Date?,
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

  /// Create a copy of WHOGrowthStandardsHeadCircumferenceForAge
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DateCopyWith<$Res>? get observationDate {
    if (_self.observationDate == null) {
      return null;
    }

    return $DateCopyWith<$Res>(_self.observationDate!, (value) {
      return _then(_self.copyWith(observationDate: value));
    });
  }

  /// Create a copy of WHOGrowthStandardsHeadCircumferenceForAge
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
class _WHOGrowthStandardsHeadCircumferenceForAge
    extends WHOGrowthStandardsHeadCircumferenceForAge {
  _WHOGrowthStandardsHeadCircumferenceForAge(
      {this.observationDate,
      required this.sex,
      required this.age,
      required this.measurementResult})
      : assert(age.ageInTotalDaysByNow >= 0 && age.ageInTotalDaysByNow <= 1856,
            'Age must be in range of 0 - 1856 days'),
        assert(
            observationDate == null ||
                observationDate.isSameOrBefore(Date.today()) ||
                observationDate.isSameOrAfter(age.dateOfBirth),
            'Observation date is impossible, because happen after today or before birth'),
        super._();
  factory _WHOGrowthStandardsHeadCircumferenceForAge.fromJson(
          Map<String, dynamic> json) =>
      _$WHOGrowthStandardsHeadCircumferenceForAgeFromJson(json);

  @override
  final Date? observationDate;
  @override
  final Sex sex;
  @override
  final Age age;
  @override
  final Length measurementResult;

  /// Create a copy of WHOGrowthStandardsHeadCircumferenceForAge
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$WHOGrowthStandardsHeadCircumferenceForAgeCopyWith<
          _WHOGrowthStandardsHeadCircumferenceForAge>
      get copyWith => __$WHOGrowthStandardsHeadCircumferenceForAgeCopyWithImpl<
          _WHOGrowthStandardsHeadCircumferenceForAge>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$WHOGrowthStandardsHeadCircumferenceForAgeToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WHOGrowthStandardsHeadCircumferenceForAge &&
            (identical(other.observationDate, observationDate) ||
                other.observationDate == observationDate) &&
            (identical(other.sex, sex) || other.sex == sex) &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.measurementResult, measurementResult) ||
                other.measurementResult == measurementResult));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, observationDate, sex, age, measurementResult);

  @override
  String toString() {
    return 'WHOGrowthStandardsHeadCircumferenceForAge(observationDate: $observationDate, sex: $sex, age: $age, measurementResult: $measurementResult)';
  }
}

/// @nodoc
abstract mixin class _$WHOGrowthStandardsHeadCircumferenceForAgeCopyWith<$Res>
    implements $WHOGrowthStandardsHeadCircumferenceForAgeCopyWith<$Res> {
  factory _$WHOGrowthStandardsHeadCircumferenceForAgeCopyWith(
          _WHOGrowthStandardsHeadCircumferenceForAge value,
          $Res Function(_WHOGrowthStandardsHeadCircumferenceForAge) _then) =
      __$WHOGrowthStandardsHeadCircumferenceForAgeCopyWithImpl;
  @override
  @useResult
  $Res call(
      {Date? observationDate, Sex sex, Age age, Length measurementResult});

  @override
  $DateCopyWith<$Res>? get observationDate;
  @override
  $AgeCopyWith<$Res> get age;
}

/// @nodoc
class __$WHOGrowthStandardsHeadCircumferenceForAgeCopyWithImpl<$Res>
    implements _$WHOGrowthStandardsHeadCircumferenceForAgeCopyWith<$Res> {
  __$WHOGrowthStandardsHeadCircumferenceForAgeCopyWithImpl(
      this._self, this._then);

  final _WHOGrowthStandardsHeadCircumferenceForAge _self;
  final $Res Function(_WHOGrowthStandardsHeadCircumferenceForAge) _then;

  /// Create a copy of WHOGrowthStandardsHeadCircumferenceForAge
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? observationDate = freezed,
    Object? sex = null,
    Object? age = null,
    Object? measurementResult = null,
  }) {
    return _then(_WHOGrowthStandardsHeadCircumferenceForAge(
      observationDate: freezed == observationDate
          ? _self.observationDate
          : observationDate // ignore: cast_nullable_to_non_nullable
              as Date?,
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

  /// Create a copy of WHOGrowthStandardsHeadCircumferenceForAge
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DateCopyWith<$Res>? get observationDate {
    if (_self.observationDate == null) {
      return null;
    }

    return $DateCopyWith<$Res>(_self.observationDate!, (value) {
      return _then(_self.copyWith(observationDate: value));
    });
  }

  /// Create a copy of WHOGrowthStandardsHeadCircumferenceForAge
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
mixin _$WHOGrowthStandardsHeadCircumferenceVelocityForAge {
  Sex get sex;
  Age get age;
  List<LengthMeasurementHistory> get pastMeasurement;

  /// Create a copy of WHOGrowthStandardsHeadCircumferenceVelocityForAge
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $WHOGrowthStandardsHeadCircumferenceVelocityForAgeCopyWith<
          WHOGrowthStandardsHeadCircumferenceVelocityForAge>
      get copyWith =>
          _$WHOGrowthStandardsHeadCircumferenceVelocityForAgeCopyWithImpl<
                  WHOGrowthStandardsHeadCircumferenceVelocityForAge>(
              this as WHOGrowthStandardsHeadCircumferenceVelocityForAge,
              _$identity);

  /// Serializes this WHOGrowthStandardsHeadCircumferenceVelocityForAge to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is WHOGrowthStandardsHeadCircumferenceVelocityForAge &&
            (identical(other.sex, sex) || other.sex == sex) &&
            (identical(other.age, age) || other.age == age) &&
            const DeepCollectionEquality()
                .equals(other.pastMeasurement, pastMeasurement));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, sex, age,
      const DeepCollectionEquality().hash(pastMeasurement));

  @override
  String toString() {
    return 'WHOGrowthStandardsHeadCircumferenceVelocityForAge(sex: $sex, age: $age, pastMeasurement: $pastMeasurement)';
  }
}

/// @nodoc
abstract mixin class $WHOGrowthStandardsHeadCircumferenceVelocityForAgeCopyWith<
    $Res> {
  factory $WHOGrowthStandardsHeadCircumferenceVelocityForAgeCopyWith(
          WHOGrowthStandardsHeadCircumferenceVelocityForAge value,
          $Res Function(WHOGrowthStandardsHeadCircumferenceVelocityForAge)
              _then) =
      _$WHOGrowthStandardsHeadCircumferenceVelocityForAgeCopyWithImpl;
  @useResult
  $Res call({Sex sex, Age age, List<LengthMeasurementHistory> pastMeasurement});

  $AgeCopyWith<$Res> get age;
}

/// @nodoc
class _$WHOGrowthStandardsHeadCircumferenceVelocityForAgeCopyWithImpl<$Res>
    implements
        $WHOGrowthStandardsHeadCircumferenceVelocityForAgeCopyWith<$Res> {
  _$WHOGrowthStandardsHeadCircumferenceVelocityForAgeCopyWithImpl(
      this._self, this._then);

  final WHOGrowthStandardsHeadCircumferenceVelocityForAge _self;
  final $Res Function(WHOGrowthStandardsHeadCircumferenceVelocityForAge) _then;

  /// Create a copy of WHOGrowthStandardsHeadCircumferenceVelocityForAge
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sex = null,
    Object? age = null,
    Object? pastMeasurement = null,
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
      pastMeasurement: null == pastMeasurement
          ? _self.pastMeasurement
          : pastMeasurement // ignore: cast_nullable_to_non_nullable
              as List<LengthMeasurementHistory>,
    ));
  }

  /// Create a copy of WHOGrowthStandardsHeadCircumferenceVelocityForAge
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
class _WHOGrowthStandardsHeadCircumferenceVelocityForAge
    extends WHOGrowthStandardsHeadCircumferenceVelocityForAge {
  _WHOGrowthStandardsHeadCircumferenceVelocityForAge(
      {required this.sex,
      required this.age,
      required final List<LengthMeasurementHistory> pastMeasurement})
      : assert(age.ageInTotalDaysByNow >= 0 && age.ageInTotalMonthsByNow <= 24,
            'Age must be in range of 0 days - 24 months'),
        assert(pastMeasurement.isNotEmpty,
            'Calculation can not be done as past measurement is empty'),
        assert(pastMeasurement.toSet().length > 1,
            'Calculation can not be done as there is only one measurement history'),
        assert(
            pastMeasurement
                .every((element) => element.date.isSameOrBefore(Date.today())),
            'Calculation can not be done as there is future date in past measurement'),
        assert(
            pastMeasurement.every(
                (element) => element.date.isSameOrAfter(age.dateOfBirth)),
            'Calculation can not be done as there is date less than Date of Birth in past measurement, if you find this exception is a mistake, try to provide exact $Age'),
        _pastMeasurement = pastMeasurement,
        super._();
  factory _WHOGrowthStandardsHeadCircumferenceVelocityForAge.fromJson(
          Map<String, dynamic> json) =>
      _$WHOGrowthStandardsHeadCircumferenceVelocityForAgeFromJson(json);

  @override
  final Sex sex;
  @override
  final Age age;
  final List<LengthMeasurementHistory> _pastMeasurement;
  @override
  List<LengthMeasurementHistory> get pastMeasurement {
    if (_pastMeasurement is EqualUnmodifiableListView) return _pastMeasurement;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_pastMeasurement);
  }

  /// Create a copy of WHOGrowthStandardsHeadCircumferenceVelocityForAge
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$WHOGrowthStandardsHeadCircumferenceVelocityForAgeCopyWith<
          _WHOGrowthStandardsHeadCircumferenceVelocityForAge>
      get copyWith =>
          __$WHOGrowthStandardsHeadCircumferenceVelocityForAgeCopyWithImpl<
                  _WHOGrowthStandardsHeadCircumferenceVelocityForAge>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$WHOGrowthStandardsHeadCircumferenceVelocityForAgeToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WHOGrowthStandardsHeadCircumferenceVelocityForAge &&
            (identical(other.sex, sex) || other.sex == sex) &&
            (identical(other.age, age) || other.age == age) &&
            const DeepCollectionEquality()
                .equals(other._pastMeasurement, _pastMeasurement));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, sex, age,
      const DeepCollectionEquality().hash(_pastMeasurement));

  @override
  String toString() {
    return 'WHOGrowthStandardsHeadCircumferenceVelocityForAge(sex: $sex, age: $age, pastMeasurement: $pastMeasurement)';
  }
}

/// @nodoc
abstract mixin class _$WHOGrowthStandardsHeadCircumferenceVelocityForAgeCopyWith<
        $Res>
    implements
        $WHOGrowthStandardsHeadCircumferenceVelocityForAgeCopyWith<$Res> {
  factory _$WHOGrowthStandardsHeadCircumferenceVelocityForAgeCopyWith(
          _WHOGrowthStandardsHeadCircumferenceVelocityForAge value,
          $Res Function(_WHOGrowthStandardsHeadCircumferenceVelocityForAge)
              _then) =
      __$WHOGrowthStandardsHeadCircumferenceVelocityForAgeCopyWithImpl;
  @override
  @useResult
  $Res call({Sex sex, Age age, List<LengthMeasurementHistory> pastMeasurement});

  @override
  $AgeCopyWith<$Res> get age;
}

/// @nodoc
class __$WHOGrowthStandardsHeadCircumferenceVelocityForAgeCopyWithImpl<$Res>
    implements
        _$WHOGrowthStandardsHeadCircumferenceVelocityForAgeCopyWith<$Res> {
  __$WHOGrowthStandardsHeadCircumferenceVelocityForAgeCopyWithImpl(
      this._self, this._then);

  final _WHOGrowthStandardsHeadCircumferenceVelocityForAge _self;
  final $Res Function(_WHOGrowthStandardsHeadCircumferenceVelocityForAge) _then;

  /// Create a copy of WHOGrowthStandardsHeadCircumferenceVelocityForAge
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? sex = null,
    Object? age = null,
    Object? pastMeasurement = null,
  }) {
    return _then(_WHOGrowthStandardsHeadCircumferenceVelocityForAge(
      sex: null == sex
          ? _self.sex
          : sex // ignore: cast_nullable_to_non_nullable
              as Sex,
      age: null == age
          ? _self.age
          : age // ignore: cast_nullable_to_non_nullable
              as Age,
      pastMeasurement: null == pastMeasurement
          ? _self._pastMeasurement
          : pastMeasurement // ignore: cast_nullable_to_non_nullable
              as List<LengthMeasurementHistory>,
    ));
  }

  /// Create a copy of WHOGrowthStandardsHeadCircumferenceVelocityForAge
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
mixin _$WHOGrowthStandardsLengthForAge {
  Date? get observationDate;
  Sex get sex;
  Age get age;
  Length get lengthHeight;
  LengthHeightMeasurementPosition get measure;

  /// Create a copy of WHOGrowthStandardsLengthForAge
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $WHOGrowthStandardsLengthForAgeCopyWith<WHOGrowthStandardsLengthForAge>
      get copyWith => _$WHOGrowthStandardsLengthForAgeCopyWithImpl<
              WHOGrowthStandardsLengthForAge>(
          this as WHOGrowthStandardsLengthForAge, _$identity);

  /// Serializes this WHOGrowthStandardsLengthForAge to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is WHOGrowthStandardsLengthForAge &&
            (identical(other.observationDate, observationDate) ||
                other.observationDate == observationDate) &&
            (identical(other.sex, sex) || other.sex == sex) &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.lengthHeight, lengthHeight) ||
                other.lengthHeight == lengthHeight) &&
            (identical(other.measure, measure) || other.measure == measure));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, observationDate, sex, age, lengthHeight, measure);

  @override
  String toString() {
    return 'WHOGrowthStandardsLengthForAge(observationDate: $observationDate, sex: $sex, age: $age, lengthHeight: $lengthHeight, measure: $measure)';
  }
}

/// @nodoc
abstract mixin class $WHOGrowthStandardsLengthForAgeCopyWith<$Res> {
  factory $WHOGrowthStandardsLengthForAgeCopyWith(
          WHOGrowthStandardsLengthForAge value,
          $Res Function(WHOGrowthStandardsLengthForAge) _then) =
      _$WHOGrowthStandardsLengthForAgeCopyWithImpl;
  @useResult
  $Res call(
      {Date? observationDate,
      Sex sex,
      Age age,
      Length lengthHeight,
      LengthHeightMeasurementPosition measure});

  $DateCopyWith<$Res>? get observationDate;
  $AgeCopyWith<$Res> get age;
}

/// @nodoc
class _$WHOGrowthStandardsLengthForAgeCopyWithImpl<$Res>
    implements $WHOGrowthStandardsLengthForAgeCopyWith<$Res> {
  _$WHOGrowthStandardsLengthForAgeCopyWithImpl(this._self, this._then);

  final WHOGrowthStandardsLengthForAge _self;
  final $Res Function(WHOGrowthStandardsLengthForAge) _then;

  /// Create a copy of WHOGrowthStandardsLengthForAge
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? observationDate = freezed,
    Object? sex = null,
    Object? age = null,
    Object? lengthHeight = null,
    Object? measure = null,
  }) {
    return _then(_self.copyWith(
      observationDate: freezed == observationDate
          ? _self.observationDate
          : observationDate // ignore: cast_nullable_to_non_nullable
              as Date?,
      sex: null == sex
          ? _self.sex
          : sex // ignore: cast_nullable_to_non_nullable
              as Sex,
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

  /// Create a copy of WHOGrowthStandardsLengthForAge
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DateCopyWith<$Res>? get observationDate {
    if (_self.observationDate == null) {
      return null;
    }

    return $DateCopyWith<$Res>(_self.observationDate!, (value) {
      return _then(_self.copyWith(observationDate: value));
    });
  }

  /// Create a copy of WHOGrowthStandardsLengthForAge
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
class _WHOGrowthStandardsLengthForAge extends WHOGrowthStandardsLengthForAge {
  _WHOGrowthStandardsLengthForAge(
      {this.observationDate,
      required this.sex,
      required this.age,
      required this.lengthHeight,
      required this.measure})
      : assert(age.ageInTotalDaysByNow >= 0 && age.ageInTotalDaysByNow <= 1856,
            'Age must be in range of 0 - 1856 days'),
        assert(
            observationDate == null ||
                observationDate.isSameOrBefore(Date.today()) ||
                observationDate.isSameOrAfter(age.dateOfBirth),
            'Observation date is impossible, because happen after today or before birth'),
        super._();
  factory _WHOGrowthStandardsLengthForAge.fromJson(Map<String, dynamic> json) =>
      _$WHOGrowthStandardsLengthForAgeFromJson(json);

  @override
  final Date? observationDate;
  @override
  final Sex sex;
  @override
  final Age age;
  @override
  final Length lengthHeight;
  @override
  final LengthHeightMeasurementPosition measure;

  /// Create a copy of WHOGrowthStandardsLengthForAge
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$WHOGrowthStandardsLengthForAgeCopyWith<_WHOGrowthStandardsLengthForAge>
      get copyWith => __$WHOGrowthStandardsLengthForAgeCopyWithImpl<
          _WHOGrowthStandardsLengthForAge>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$WHOGrowthStandardsLengthForAgeToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WHOGrowthStandardsLengthForAge &&
            (identical(other.observationDate, observationDate) ||
                other.observationDate == observationDate) &&
            (identical(other.sex, sex) || other.sex == sex) &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.lengthHeight, lengthHeight) ||
                other.lengthHeight == lengthHeight) &&
            (identical(other.measure, measure) || other.measure == measure));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, observationDate, sex, age, lengthHeight, measure);

  @override
  String toString() {
    return 'WHOGrowthStandardsLengthForAge(observationDate: $observationDate, sex: $sex, age: $age, lengthHeight: $lengthHeight, measure: $measure)';
  }
}

/// @nodoc
abstract mixin class _$WHOGrowthStandardsLengthForAgeCopyWith<$Res>
    implements $WHOGrowthStandardsLengthForAgeCopyWith<$Res> {
  factory _$WHOGrowthStandardsLengthForAgeCopyWith(
          _WHOGrowthStandardsLengthForAge value,
          $Res Function(_WHOGrowthStandardsLengthForAge) _then) =
      __$WHOGrowthStandardsLengthForAgeCopyWithImpl;
  @override
  @useResult
  $Res call(
      {Date? observationDate,
      Sex sex,
      Age age,
      Length lengthHeight,
      LengthHeightMeasurementPosition measure});

  @override
  $DateCopyWith<$Res>? get observationDate;
  @override
  $AgeCopyWith<$Res> get age;
}

/// @nodoc
class __$WHOGrowthStandardsLengthForAgeCopyWithImpl<$Res>
    implements _$WHOGrowthStandardsLengthForAgeCopyWith<$Res> {
  __$WHOGrowthStandardsLengthForAgeCopyWithImpl(this._self, this._then);

  final _WHOGrowthStandardsLengthForAge _self;
  final $Res Function(_WHOGrowthStandardsLengthForAge) _then;

  /// Create a copy of WHOGrowthStandardsLengthForAge
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? observationDate = freezed,
    Object? sex = null,
    Object? age = null,
    Object? lengthHeight = null,
    Object? measure = null,
  }) {
    return _then(_WHOGrowthStandardsLengthForAge(
      observationDate: freezed == observationDate
          ? _self.observationDate
          : observationDate // ignore: cast_nullable_to_non_nullable
              as Date?,
      sex: null == sex
          ? _self.sex
          : sex // ignore: cast_nullable_to_non_nullable
              as Sex,
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

  /// Create a copy of WHOGrowthStandardsLengthForAge
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DateCopyWith<$Res>? get observationDate {
    if (_self.observationDate == null) {
      return null;
    }

    return $DateCopyWith<$Res>(_self.observationDate!, (value) {
      return _then(_self.copyWith(observationDate: value));
    });
  }

  /// Create a copy of WHOGrowthStandardsLengthForAge
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
mixin _$WHOGrowthStandardsLengthVelocityForAge {
  Sex get sex;
  Age get age;
  List<LengthMeasurementHistory> get pastMeasurement;

  /// Create a copy of WHOGrowthStandardsLengthVelocityForAge
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $WHOGrowthStandardsLengthVelocityForAgeCopyWith<
          WHOGrowthStandardsLengthVelocityForAge>
      get copyWith => _$WHOGrowthStandardsLengthVelocityForAgeCopyWithImpl<
              WHOGrowthStandardsLengthVelocityForAge>(
          this as WHOGrowthStandardsLengthVelocityForAge, _$identity);

  /// Serializes this WHOGrowthStandardsLengthVelocityForAge to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is WHOGrowthStandardsLengthVelocityForAge &&
            (identical(other.sex, sex) || other.sex == sex) &&
            (identical(other.age, age) || other.age == age) &&
            const DeepCollectionEquality()
                .equals(other.pastMeasurement, pastMeasurement));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, sex, age,
      const DeepCollectionEquality().hash(pastMeasurement));

  @override
  String toString() {
    return 'WHOGrowthStandardsLengthVelocityForAge(sex: $sex, age: $age, pastMeasurement: $pastMeasurement)';
  }
}

/// @nodoc
abstract mixin class $WHOGrowthStandardsLengthVelocityForAgeCopyWith<$Res> {
  factory $WHOGrowthStandardsLengthVelocityForAgeCopyWith(
          WHOGrowthStandardsLengthVelocityForAge value,
          $Res Function(WHOGrowthStandardsLengthVelocityForAge) _then) =
      _$WHOGrowthStandardsLengthVelocityForAgeCopyWithImpl;
  @useResult
  $Res call({Sex sex, Age age, List<LengthMeasurementHistory> pastMeasurement});

  $AgeCopyWith<$Res> get age;
}

/// @nodoc
class _$WHOGrowthStandardsLengthVelocityForAgeCopyWithImpl<$Res>
    implements $WHOGrowthStandardsLengthVelocityForAgeCopyWith<$Res> {
  _$WHOGrowthStandardsLengthVelocityForAgeCopyWithImpl(this._self, this._then);

  final WHOGrowthStandardsLengthVelocityForAge _self;
  final $Res Function(WHOGrowthStandardsLengthVelocityForAge) _then;

  /// Create a copy of WHOGrowthStandardsLengthVelocityForAge
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sex = null,
    Object? age = null,
    Object? pastMeasurement = null,
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
      pastMeasurement: null == pastMeasurement
          ? _self.pastMeasurement
          : pastMeasurement // ignore: cast_nullable_to_non_nullable
              as List<LengthMeasurementHistory>,
    ));
  }

  /// Create a copy of WHOGrowthStandardsLengthVelocityForAge
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
class _WHOGrowthStandardsLengthVelocityForAge
    extends WHOGrowthStandardsLengthVelocityForAge {
  _WHOGrowthStandardsLengthVelocityForAge(
      {required this.sex,
      required this.age,
      required final List<LengthMeasurementHistory> pastMeasurement})
      : assert(age.ageInTotalDaysByNow >= 0 && age.ageInTotalMonthsByNow <= 24,
            'Age must be in range of 0 days - 24 months'),
        assert(pastMeasurement.isNotEmpty,
            'Calculation can not be done as past measurement is empty'),
        assert(pastMeasurement.toSet().length > 1,
            'Calculation can not be done as there is only one measurement history'),
        assert(
            pastMeasurement
                .every((element) => element.date.isSameOrBefore(Date.today())),
            'Calculation can not be done as there is future date in past measurement'),
        assert(
            pastMeasurement.every(
                (element) => element.date.isSameOrAfter(age.dateOfBirth)),
            'Calculation can not be done as there is date less than Date of Birth in past measurement, if you find this exception is a mistake, try to provide exact $Age'),
        _pastMeasurement = pastMeasurement,
        super._();
  factory _WHOGrowthStandardsLengthVelocityForAge.fromJson(
          Map<String, dynamic> json) =>
      _$WHOGrowthStandardsLengthVelocityForAgeFromJson(json);

  @override
  final Sex sex;
  @override
  final Age age;
  final List<LengthMeasurementHistory> _pastMeasurement;
  @override
  List<LengthMeasurementHistory> get pastMeasurement {
    if (_pastMeasurement is EqualUnmodifiableListView) return _pastMeasurement;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_pastMeasurement);
  }

  /// Create a copy of WHOGrowthStandardsLengthVelocityForAge
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$WHOGrowthStandardsLengthVelocityForAgeCopyWith<
          _WHOGrowthStandardsLengthVelocityForAge>
      get copyWith => __$WHOGrowthStandardsLengthVelocityForAgeCopyWithImpl<
          _WHOGrowthStandardsLengthVelocityForAge>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$WHOGrowthStandardsLengthVelocityForAgeToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WHOGrowthStandardsLengthVelocityForAge &&
            (identical(other.sex, sex) || other.sex == sex) &&
            (identical(other.age, age) || other.age == age) &&
            const DeepCollectionEquality()
                .equals(other._pastMeasurement, _pastMeasurement));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, sex, age,
      const DeepCollectionEquality().hash(_pastMeasurement));

  @override
  String toString() {
    return 'WHOGrowthStandardsLengthVelocityForAge(sex: $sex, age: $age, pastMeasurement: $pastMeasurement)';
  }
}

/// @nodoc
abstract mixin class _$WHOGrowthStandardsLengthVelocityForAgeCopyWith<$Res>
    implements $WHOGrowthStandardsLengthVelocityForAgeCopyWith<$Res> {
  factory _$WHOGrowthStandardsLengthVelocityForAgeCopyWith(
          _WHOGrowthStandardsLengthVelocityForAge value,
          $Res Function(_WHOGrowthStandardsLengthVelocityForAge) _then) =
      __$WHOGrowthStandardsLengthVelocityForAgeCopyWithImpl;
  @override
  @useResult
  $Res call({Sex sex, Age age, List<LengthMeasurementHistory> pastMeasurement});

  @override
  $AgeCopyWith<$Res> get age;
}

/// @nodoc
class __$WHOGrowthStandardsLengthVelocityForAgeCopyWithImpl<$Res>
    implements _$WHOGrowthStandardsLengthVelocityForAgeCopyWith<$Res> {
  __$WHOGrowthStandardsLengthVelocityForAgeCopyWithImpl(this._self, this._then);

  final _WHOGrowthStandardsLengthVelocityForAge _self;
  final $Res Function(_WHOGrowthStandardsLengthVelocityForAge) _then;

  /// Create a copy of WHOGrowthStandardsLengthVelocityForAge
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? sex = null,
    Object? age = null,
    Object? pastMeasurement = null,
  }) {
    return _then(_WHOGrowthStandardsLengthVelocityForAge(
      sex: null == sex
          ? _self.sex
          : sex // ignore: cast_nullable_to_non_nullable
              as Sex,
      age: null == age
          ? _self.age
          : age // ignore: cast_nullable_to_non_nullable
              as Age,
      pastMeasurement: null == pastMeasurement
          ? _self._pastMeasurement
          : pastMeasurement // ignore: cast_nullable_to_non_nullable
              as List<LengthMeasurementHistory>,
    ));
  }

  /// Create a copy of WHOGrowthStandardsLengthVelocityForAge
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
mixin _$WHOGrowthStandardsSubscapularSkinfoldForAge {
  Date? get observationDate;
  Sex get sex;
  Age get age;
  Length get measurementResult;

  /// Create a copy of WHOGrowthStandardsSubscapularSkinfoldForAge
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $WHOGrowthStandardsSubscapularSkinfoldForAgeCopyWith<
          WHOGrowthStandardsSubscapularSkinfoldForAge>
      get copyWith => _$WHOGrowthStandardsSubscapularSkinfoldForAgeCopyWithImpl<
              WHOGrowthStandardsSubscapularSkinfoldForAge>(
          this as WHOGrowthStandardsSubscapularSkinfoldForAge, _$identity);

  /// Serializes this WHOGrowthStandardsSubscapularSkinfoldForAge to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is WHOGrowthStandardsSubscapularSkinfoldForAge &&
            (identical(other.observationDate, observationDate) ||
                other.observationDate == observationDate) &&
            (identical(other.sex, sex) || other.sex == sex) &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.measurementResult, measurementResult) ||
                other.measurementResult == measurementResult));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, observationDate, sex, age, measurementResult);

  @override
  String toString() {
    return 'WHOGrowthStandardsSubscapularSkinfoldForAge(observationDate: $observationDate, sex: $sex, age: $age, measurementResult: $measurementResult)';
  }
}

/// @nodoc
abstract mixin class $WHOGrowthStandardsSubscapularSkinfoldForAgeCopyWith<
    $Res> {
  factory $WHOGrowthStandardsSubscapularSkinfoldForAgeCopyWith(
          WHOGrowthStandardsSubscapularSkinfoldForAge value,
          $Res Function(WHOGrowthStandardsSubscapularSkinfoldForAge) _then) =
      _$WHOGrowthStandardsSubscapularSkinfoldForAgeCopyWithImpl;
  @useResult
  $Res call(
      {Date? observationDate, Sex sex, Age age, Length measurementResult});

  $DateCopyWith<$Res>? get observationDate;
  $AgeCopyWith<$Res> get age;
}

/// @nodoc
class _$WHOGrowthStandardsSubscapularSkinfoldForAgeCopyWithImpl<$Res>
    implements $WHOGrowthStandardsSubscapularSkinfoldForAgeCopyWith<$Res> {
  _$WHOGrowthStandardsSubscapularSkinfoldForAgeCopyWithImpl(
      this._self, this._then);

  final WHOGrowthStandardsSubscapularSkinfoldForAge _self;
  final $Res Function(WHOGrowthStandardsSubscapularSkinfoldForAge) _then;

  /// Create a copy of WHOGrowthStandardsSubscapularSkinfoldForAge
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? observationDate = freezed,
    Object? sex = null,
    Object? age = null,
    Object? measurementResult = null,
  }) {
    return _then(_self.copyWith(
      observationDate: freezed == observationDate
          ? _self.observationDate
          : observationDate // ignore: cast_nullable_to_non_nullable
              as Date?,
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

  /// Create a copy of WHOGrowthStandardsSubscapularSkinfoldForAge
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DateCopyWith<$Res>? get observationDate {
    if (_self.observationDate == null) {
      return null;
    }

    return $DateCopyWith<$Res>(_self.observationDate!, (value) {
      return _then(_self.copyWith(observationDate: value));
    });
  }

  /// Create a copy of WHOGrowthStandardsSubscapularSkinfoldForAge
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
class _WHOGrowthStandardsSubscapularSkinfoldForAge
    extends WHOGrowthStandardsSubscapularSkinfoldForAge {
  _WHOGrowthStandardsSubscapularSkinfoldForAge(
      {this.observationDate,
      required this.sex,
      required this.age,
      required this.measurementResult})
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
  factory _WHOGrowthStandardsSubscapularSkinfoldForAge.fromJson(
          Map<String, dynamic> json) =>
      _$WHOGrowthStandardsSubscapularSkinfoldForAgeFromJson(json);

  @override
  final Date? observationDate;
  @override
  final Sex sex;
  @override
  final Age age;
  @override
  final Length measurementResult;

  /// Create a copy of WHOGrowthStandardsSubscapularSkinfoldForAge
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$WHOGrowthStandardsSubscapularSkinfoldForAgeCopyWith<
          _WHOGrowthStandardsSubscapularSkinfoldForAge>
      get copyWith =>
          __$WHOGrowthStandardsSubscapularSkinfoldForAgeCopyWithImpl<
              _WHOGrowthStandardsSubscapularSkinfoldForAge>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$WHOGrowthStandardsSubscapularSkinfoldForAgeToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WHOGrowthStandardsSubscapularSkinfoldForAge &&
            (identical(other.observationDate, observationDate) ||
                other.observationDate == observationDate) &&
            (identical(other.sex, sex) || other.sex == sex) &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.measurementResult, measurementResult) ||
                other.measurementResult == measurementResult));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, observationDate, sex, age, measurementResult);

  @override
  String toString() {
    return 'WHOGrowthStandardsSubscapularSkinfoldForAge(observationDate: $observationDate, sex: $sex, age: $age, measurementResult: $measurementResult)';
  }
}

/// @nodoc
abstract mixin class _$WHOGrowthStandardsSubscapularSkinfoldForAgeCopyWith<$Res>
    implements $WHOGrowthStandardsSubscapularSkinfoldForAgeCopyWith<$Res> {
  factory _$WHOGrowthStandardsSubscapularSkinfoldForAgeCopyWith(
          _WHOGrowthStandardsSubscapularSkinfoldForAge value,
          $Res Function(_WHOGrowthStandardsSubscapularSkinfoldForAge) _then) =
      __$WHOGrowthStandardsSubscapularSkinfoldForAgeCopyWithImpl;
  @override
  @useResult
  $Res call(
      {Date? observationDate, Sex sex, Age age, Length measurementResult});

  @override
  $DateCopyWith<$Res>? get observationDate;
  @override
  $AgeCopyWith<$Res> get age;
}

/// @nodoc
class __$WHOGrowthStandardsSubscapularSkinfoldForAgeCopyWithImpl<$Res>
    implements _$WHOGrowthStandardsSubscapularSkinfoldForAgeCopyWith<$Res> {
  __$WHOGrowthStandardsSubscapularSkinfoldForAgeCopyWithImpl(
      this._self, this._then);

  final _WHOGrowthStandardsSubscapularSkinfoldForAge _self;
  final $Res Function(_WHOGrowthStandardsSubscapularSkinfoldForAge) _then;

  /// Create a copy of WHOGrowthStandardsSubscapularSkinfoldForAge
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? observationDate = freezed,
    Object? sex = null,
    Object? age = null,
    Object? measurementResult = null,
  }) {
    return _then(_WHOGrowthStandardsSubscapularSkinfoldForAge(
      observationDate: freezed == observationDate
          ? _self.observationDate
          : observationDate // ignore: cast_nullable_to_non_nullable
              as Date?,
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

  /// Create a copy of WHOGrowthStandardsSubscapularSkinfoldForAge
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DateCopyWith<$Res>? get observationDate {
    if (_self.observationDate == null) {
      return null;
    }

    return $DateCopyWith<$Res>(_self.observationDate!, (value) {
      return _then(_self.copyWith(observationDate: value));
    });
  }

  /// Create a copy of WHOGrowthStandardsSubscapularSkinfoldForAge
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
mixin _$WHOGrowthStandardsTricepsSkinfoldForAge {
  Date? get observationDate;
  Sex get sex;
  Age get age;
  Length get measurementResult;

  /// Create a copy of WHOGrowthStandardsTricepsSkinfoldForAge
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $WHOGrowthStandardsTricepsSkinfoldForAgeCopyWith<
          WHOGrowthStandardsTricepsSkinfoldForAge>
      get copyWith => _$WHOGrowthStandardsTricepsSkinfoldForAgeCopyWithImpl<
              WHOGrowthStandardsTricepsSkinfoldForAge>(
          this as WHOGrowthStandardsTricepsSkinfoldForAge, _$identity);

  /// Serializes this WHOGrowthStandardsTricepsSkinfoldForAge to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is WHOGrowthStandardsTricepsSkinfoldForAge &&
            (identical(other.observationDate, observationDate) ||
                other.observationDate == observationDate) &&
            (identical(other.sex, sex) || other.sex == sex) &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.measurementResult, measurementResult) ||
                other.measurementResult == measurementResult));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, observationDate, sex, age, measurementResult);

  @override
  String toString() {
    return 'WHOGrowthStandardsTricepsSkinfoldForAge(observationDate: $observationDate, sex: $sex, age: $age, measurementResult: $measurementResult)';
  }
}

/// @nodoc
abstract mixin class $WHOGrowthStandardsTricepsSkinfoldForAgeCopyWith<$Res> {
  factory $WHOGrowthStandardsTricepsSkinfoldForAgeCopyWith(
          WHOGrowthStandardsTricepsSkinfoldForAge value,
          $Res Function(WHOGrowthStandardsTricepsSkinfoldForAge) _then) =
      _$WHOGrowthStandardsTricepsSkinfoldForAgeCopyWithImpl;
  @useResult
  $Res call(
      {Date? observationDate, Sex sex, Age age, Length measurementResult});

  $DateCopyWith<$Res>? get observationDate;
  $AgeCopyWith<$Res> get age;
}

/// @nodoc
class _$WHOGrowthStandardsTricepsSkinfoldForAgeCopyWithImpl<$Res>
    implements $WHOGrowthStandardsTricepsSkinfoldForAgeCopyWith<$Res> {
  _$WHOGrowthStandardsTricepsSkinfoldForAgeCopyWithImpl(this._self, this._then);

  final WHOGrowthStandardsTricepsSkinfoldForAge _self;
  final $Res Function(WHOGrowthStandardsTricepsSkinfoldForAge) _then;

  /// Create a copy of WHOGrowthStandardsTricepsSkinfoldForAge
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? observationDate = freezed,
    Object? sex = null,
    Object? age = null,
    Object? measurementResult = null,
  }) {
    return _then(_self.copyWith(
      observationDate: freezed == observationDate
          ? _self.observationDate
          : observationDate // ignore: cast_nullable_to_non_nullable
              as Date?,
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

  /// Create a copy of WHOGrowthStandardsTricepsSkinfoldForAge
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DateCopyWith<$Res>? get observationDate {
    if (_self.observationDate == null) {
      return null;
    }

    return $DateCopyWith<$Res>(_self.observationDate!, (value) {
      return _then(_self.copyWith(observationDate: value));
    });
  }

  /// Create a copy of WHOGrowthStandardsTricepsSkinfoldForAge
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
class _WHOGrowthStandardsTricepsSkinfoldForAge
    extends WHOGrowthStandardsTricepsSkinfoldForAge {
  _WHOGrowthStandardsTricepsSkinfoldForAge(
      {this.observationDate,
      required this.sex,
      required this.age,
      required this.measurementResult})
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
  factory _WHOGrowthStandardsTricepsSkinfoldForAge.fromJson(
          Map<String, dynamic> json) =>
      _$WHOGrowthStandardsTricepsSkinfoldForAgeFromJson(json);

  @override
  final Date? observationDate;
  @override
  final Sex sex;
  @override
  final Age age;
  @override
  final Length measurementResult;

  /// Create a copy of WHOGrowthStandardsTricepsSkinfoldForAge
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$WHOGrowthStandardsTricepsSkinfoldForAgeCopyWith<
          _WHOGrowthStandardsTricepsSkinfoldForAge>
      get copyWith => __$WHOGrowthStandardsTricepsSkinfoldForAgeCopyWithImpl<
          _WHOGrowthStandardsTricepsSkinfoldForAge>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$WHOGrowthStandardsTricepsSkinfoldForAgeToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WHOGrowthStandardsTricepsSkinfoldForAge &&
            (identical(other.observationDate, observationDate) ||
                other.observationDate == observationDate) &&
            (identical(other.sex, sex) || other.sex == sex) &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.measurementResult, measurementResult) ||
                other.measurementResult == measurementResult));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, observationDate, sex, age, measurementResult);

  @override
  String toString() {
    return 'WHOGrowthStandardsTricepsSkinfoldForAge(observationDate: $observationDate, sex: $sex, age: $age, measurementResult: $measurementResult)';
  }
}

/// @nodoc
abstract mixin class _$WHOGrowthStandardsTricepsSkinfoldForAgeCopyWith<$Res>
    implements $WHOGrowthStandardsTricepsSkinfoldForAgeCopyWith<$Res> {
  factory _$WHOGrowthStandardsTricepsSkinfoldForAgeCopyWith(
          _WHOGrowthStandardsTricepsSkinfoldForAge value,
          $Res Function(_WHOGrowthStandardsTricepsSkinfoldForAge) _then) =
      __$WHOGrowthStandardsTricepsSkinfoldForAgeCopyWithImpl;
  @override
  @useResult
  $Res call(
      {Date? observationDate, Sex sex, Age age, Length measurementResult});

  @override
  $DateCopyWith<$Res>? get observationDate;
  @override
  $AgeCopyWith<$Res> get age;
}

/// @nodoc
class __$WHOGrowthStandardsTricepsSkinfoldForAgeCopyWithImpl<$Res>
    implements _$WHOGrowthStandardsTricepsSkinfoldForAgeCopyWith<$Res> {
  __$WHOGrowthStandardsTricepsSkinfoldForAgeCopyWithImpl(
      this._self, this._then);

  final _WHOGrowthStandardsTricepsSkinfoldForAge _self;
  final $Res Function(_WHOGrowthStandardsTricepsSkinfoldForAge) _then;

  /// Create a copy of WHOGrowthStandardsTricepsSkinfoldForAge
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? observationDate = freezed,
    Object? sex = null,
    Object? age = null,
    Object? measurementResult = null,
  }) {
    return _then(_WHOGrowthStandardsTricepsSkinfoldForAge(
      observationDate: freezed == observationDate
          ? _self.observationDate
          : observationDate // ignore: cast_nullable_to_non_nullable
              as Date?,
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

  /// Create a copy of WHOGrowthStandardsTricepsSkinfoldForAge
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DateCopyWith<$Res>? get observationDate {
    if (_self.observationDate == null) {
      return null;
    }

    return $DateCopyWith<$Res>(_self.observationDate!, (value) {
      return _then(_self.copyWith(observationDate: value));
    });
  }

  /// Create a copy of WHOGrowthStandardsTricepsSkinfoldForAge
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
mixin _$WHOGrowthStandardsWeightForAge {
  Date? get observationDate;
  Sex get sex;
  bool get oedemaExist;
  Age get age;
  Mass get weight;

  /// Create a copy of WHOGrowthStandardsWeightForAge
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $WHOGrowthStandardsWeightForAgeCopyWith<WHOGrowthStandardsWeightForAge>
      get copyWith => _$WHOGrowthStandardsWeightForAgeCopyWithImpl<
              WHOGrowthStandardsWeightForAge>(
          this as WHOGrowthStandardsWeightForAge, _$identity);

  /// Serializes this WHOGrowthStandardsWeightForAge to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is WHOGrowthStandardsWeightForAge &&
            (identical(other.observationDate, observationDate) ||
                other.observationDate == observationDate) &&
            (identical(other.sex, sex) || other.sex == sex) &&
            (identical(other.oedemaExist, oedemaExist) ||
                other.oedemaExist == oedemaExist) &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.weight, weight) || other.weight == weight));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, observationDate, sex, oedemaExist, age, weight);

  @override
  String toString() {
    return 'WHOGrowthStandardsWeightForAge(observationDate: $observationDate, sex: $sex, oedemaExist: $oedemaExist, age: $age, weight: $weight)';
  }
}

/// @nodoc
abstract mixin class $WHOGrowthStandardsWeightForAgeCopyWith<$Res> {
  factory $WHOGrowthStandardsWeightForAgeCopyWith(
          WHOGrowthStandardsWeightForAge value,
          $Res Function(WHOGrowthStandardsWeightForAge) _then) =
      _$WHOGrowthStandardsWeightForAgeCopyWithImpl;
  @useResult
  $Res call(
      {Date? observationDate, Sex sex, bool oedemaExist, Age age, Mass weight});

  $DateCopyWith<$Res>? get observationDate;
  $AgeCopyWith<$Res> get age;
}

/// @nodoc
class _$WHOGrowthStandardsWeightForAgeCopyWithImpl<$Res>
    implements $WHOGrowthStandardsWeightForAgeCopyWith<$Res> {
  _$WHOGrowthStandardsWeightForAgeCopyWithImpl(this._self, this._then);

  final WHOGrowthStandardsWeightForAge _self;
  final $Res Function(WHOGrowthStandardsWeightForAge) _then;

  /// Create a copy of WHOGrowthStandardsWeightForAge
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? observationDate = freezed,
    Object? sex = null,
    Object? oedemaExist = null,
    Object? age = null,
    Object? weight = null,
  }) {
    return _then(_self.copyWith(
      observationDate: freezed == observationDate
          ? _self.observationDate
          : observationDate // ignore: cast_nullable_to_non_nullable
              as Date?,
      sex: null == sex
          ? _self.sex
          : sex // ignore: cast_nullable_to_non_nullable
              as Sex,
      oedemaExist: null == oedemaExist
          ? _self.oedemaExist
          : oedemaExist // ignore: cast_nullable_to_non_nullable
              as bool,
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

  /// Create a copy of WHOGrowthStandardsWeightForAge
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DateCopyWith<$Res>? get observationDate {
    if (_self.observationDate == null) {
      return null;
    }

    return $DateCopyWith<$Res>(_self.observationDate!, (value) {
      return _then(_self.copyWith(observationDate: value));
    });
  }

  /// Create a copy of WHOGrowthStandardsWeightForAge
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
class _WHOGrowthStandardsWeightForAge extends WHOGrowthStandardsWeightForAge {
  _WHOGrowthStandardsWeightForAge(
      {this.observationDate,
      required this.sex,
      this.oedemaExist = false,
      required this.age,
      required this.weight})
      : assert(age.ageInTotalDaysByNow >= 0 && age.ageInTotalDaysByNow <= 1856,
            'Age must be in range of 0 - 1856 days'),
        assert(
            observationDate == null ||
                observationDate.isSameOrBefore(Date.today()) ||
                observationDate.isSameOrAfter(age.dateOfBirth),
            'Observation date is impossible, because happen after today or before birth'),
        super._();
  factory _WHOGrowthStandardsWeightForAge.fromJson(Map<String, dynamic> json) =>
      _$WHOGrowthStandardsWeightForAgeFromJson(json);

  @override
  final Date? observationDate;
  @override
  final Sex sex;
  @override
  @JsonKey()
  final bool oedemaExist;
  @override
  final Age age;
  @override
  final Mass weight;

  /// Create a copy of WHOGrowthStandardsWeightForAge
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$WHOGrowthStandardsWeightForAgeCopyWith<_WHOGrowthStandardsWeightForAge>
      get copyWith => __$WHOGrowthStandardsWeightForAgeCopyWithImpl<
          _WHOGrowthStandardsWeightForAge>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$WHOGrowthStandardsWeightForAgeToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WHOGrowthStandardsWeightForAge &&
            (identical(other.observationDate, observationDate) ||
                other.observationDate == observationDate) &&
            (identical(other.sex, sex) || other.sex == sex) &&
            (identical(other.oedemaExist, oedemaExist) ||
                other.oedemaExist == oedemaExist) &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.weight, weight) || other.weight == weight));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, observationDate, sex, oedemaExist, age, weight);

  @override
  String toString() {
    return 'WHOGrowthStandardsWeightForAge(observationDate: $observationDate, sex: $sex, oedemaExist: $oedemaExist, age: $age, weight: $weight)';
  }
}

/// @nodoc
abstract mixin class _$WHOGrowthStandardsWeightForAgeCopyWith<$Res>
    implements $WHOGrowthStandardsWeightForAgeCopyWith<$Res> {
  factory _$WHOGrowthStandardsWeightForAgeCopyWith(
          _WHOGrowthStandardsWeightForAge value,
          $Res Function(_WHOGrowthStandardsWeightForAge) _then) =
      __$WHOGrowthStandardsWeightForAgeCopyWithImpl;
  @override
  @useResult
  $Res call(
      {Date? observationDate, Sex sex, bool oedemaExist, Age age, Mass weight});

  @override
  $DateCopyWith<$Res>? get observationDate;
  @override
  $AgeCopyWith<$Res> get age;
}

/// @nodoc
class __$WHOGrowthStandardsWeightForAgeCopyWithImpl<$Res>
    implements _$WHOGrowthStandardsWeightForAgeCopyWith<$Res> {
  __$WHOGrowthStandardsWeightForAgeCopyWithImpl(this._self, this._then);

  final _WHOGrowthStandardsWeightForAge _self;
  final $Res Function(_WHOGrowthStandardsWeightForAge) _then;

  /// Create a copy of WHOGrowthStandardsWeightForAge
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? observationDate = freezed,
    Object? sex = null,
    Object? oedemaExist = null,
    Object? age = null,
    Object? weight = null,
  }) {
    return _then(_WHOGrowthStandardsWeightForAge(
      observationDate: freezed == observationDate
          ? _self.observationDate
          : observationDate // ignore: cast_nullable_to_non_nullable
              as Date?,
      sex: null == sex
          ? _self.sex
          : sex // ignore: cast_nullable_to_non_nullable
              as Sex,
      oedemaExist: null == oedemaExist
          ? _self.oedemaExist
          : oedemaExist // ignore: cast_nullable_to_non_nullable
              as bool,
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

  /// Create a copy of WHOGrowthStandardsWeightForAge
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DateCopyWith<$Res>? get observationDate {
    if (_self.observationDate == null) {
      return null;
    }

    return $DateCopyWith<$Res>(_self.observationDate!, (value) {
      return _then(_self.copyWith(observationDate: value));
    });
  }

  /// Create a copy of WHOGrowthStandardsWeightForAge
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
mixin _$WHOGrowthStandardsWeightForHeight {
  Date? get observationDate;
  Sex get sex;
  Age get age;
  bool get oedemaExist;
  Length get height;
  Mass get weight;
  LengthHeightMeasurementPosition get measure;

  /// Create a copy of WHOGrowthStandardsWeightForHeight
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $WHOGrowthStandardsWeightForHeightCopyWith<WHOGrowthStandardsWeightForHeight>
      get copyWith => _$WHOGrowthStandardsWeightForHeightCopyWithImpl<
              WHOGrowthStandardsWeightForHeight>(
          this as WHOGrowthStandardsWeightForHeight, _$identity);

  /// Serializes this WHOGrowthStandardsWeightForHeight to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is WHOGrowthStandardsWeightForHeight &&
            (identical(other.observationDate, observationDate) ||
                other.observationDate == observationDate) &&
            (identical(other.sex, sex) || other.sex == sex) &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.oedemaExist, oedemaExist) ||
                other.oedemaExist == oedemaExist) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.weight, weight) || other.weight == weight) &&
            (identical(other.measure, measure) || other.measure == measure));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, observationDate, sex, age,
      oedemaExist, height, weight, measure);

  @override
  String toString() {
    return 'WHOGrowthStandardsWeightForHeight(observationDate: $observationDate, sex: $sex, age: $age, oedemaExist: $oedemaExist, height: $height, weight: $weight, measure: $measure)';
  }
}

/// @nodoc
abstract mixin class $WHOGrowthStandardsWeightForHeightCopyWith<$Res> {
  factory $WHOGrowthStandardsWeightForHeightCopyWith(
          WHOGrowthStandardsWeightForHeight value,
          $Res Function(WHOGrowthStandardsWeightForHeight) _then) =
      _$WHOGrowthStandardsWeightForHeightCopyWithImpl;
  @useResult
  $Res call(
      {Date? observationDate,
      Sex sex,
      Age age,
      bool oedemaExist,
      Length height,
      Mass weight,
      LengthHeightMeasurementPosition measure});

  $DateCopyWith<$Res>? get observationDate;
  $AgeCopyWith<$Res> get age;
}

/// @nodoc
class _$WHOGrowthStandardsWeightForHeightCopyWithImpl<$Res>
    implements $WHOGrowthStandardsWeightForHeightCopyWith<$Res> {
  _$WHOGrowthStandardsWeightForHeightCopyWithImpl(this._self, this._then);

  final WHOGrowthStandardsWeightForHeight _self;
  final $Res Function(WHOGrowthStandardsWeightForHeight) _then;

  /// Create a copy of WHOGrowthStandardsWeightForHeight
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? observationDate = freezed,
    Object? sex = null,
    Object? age = null,
    Object? oedemaExist = null,
    Object? height = null,
    Object? weight = null,
    Object? measure = null,
  }) {
    return _then(_self.copyWith(
      observationDate: freezed == observationDate
          ? _self.observationDate
          : observationDate // ignore: cast_nullable_to_non_nullable
              as Date?,
      sex: null == sex
          ? _self.sex
          : sex // ignore: cast_nullable_to_non_nullable
              as Sex,
      age: null == age
          ? _self.age
          : age // ignore: cast_nullable_to_non_nullable
              as Age,
      oedemaExist: null == oedemaExist
          ? _self.oedemaExist
          : oedemaExist // ignore: cast_nullable_to_non_nullable
              as bool,
      height: null == height
          ? _self.height
          : height // ignore: cast_nullable_to_non_nullable
              as Length,
      weight: null == weight
          ? _self.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as Mass,
      measure: null == measure
          ? _self.measure
          : measure // ignore: cast_nullable_to_non_nullable
              as LengthHeightMeasurementPosition,
    ));
  }

  /// Create a copy of WHOGrowthStandardsWeightForHeight
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DateCopyWith<$Res>? get observationDate {
    if (_self.observationDate == null) {
      return null;
    }

    return $DateCopyWith<$Res>(_self.observationDate!, (value) {
      return _then(_self.copyWith(observationDate: value));
    });
  }

  /// Create a copy of WHOGrowthStandardsWeightForHeight
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
class _WHOGrowthStandardsWeightForHeight
    extends WHOGrowthStandardsWeightForHeight {
  _WHOGrowthStandardsWeightForHeight(
      {this.observationDate,
      required this.sex,
      required this.age,
      this.oedemaExist = false,
      required this.height,
      required this.weight,
      required this.measure})
      : assert(
            adjustedLengthHeight(
                      measure: measure,
                      age: age,
                      lengthHeight: height,
                      type: AdjustedLengthType.who,
                    ).value >=
                    65 &&
                adjustedLengthHeight(
                      measure: measure,
                      age: age,
                      lengthHeight: height,
                      type: AdjustedLengthType.who,
                    ).value <=
                    120 &&
                height.toCentimeter.value >= 65 &&
                height.toCentimeter.value <= 120,
            'Please correcting measurement position based on age'),
        assert(
            adjustedLengthHeight(
                      measure: measure,
                      age: age,
                      lengthHeight: height,
                      type: AdjustedLengthType.who,
                    ).value >=
                    65 &&
                adjustedLengthHeight(
                      measure: measure,
                      age: age,
                      lengthHeight: height,
                      type: AdjustedLengthType.who,
                    ).value <=
                    120,
            'Height must be in range of 65 - 120 cm'),
        assert(
            observationDate == null ||
                observationDate.isSameOrBefore(Date.today()) ||
                observationDate.isSameOrAfter(age.dateOfBirth),
            'Observation date is impossible, because happen after today or before birth'),
        super._();
  factory _WHOGrowthStandardsWeightForHeight.fromJson(
          Map<String, dynamic> json) =>
      _$WHOGrowthStandardsWeightForHeightFromJson(json);

  @override
  final Date? observationDate;
  @override
  final Sex sex;
  @override
  final Age age;
  @override
  @JsonKey()
  final bool oedemaExist;
  @override
  final Length height;
  @override
  final Mass weight;
  @override
  final LengthHeightMeasurementPosition measure;

  /// Create a copy of WHOGrowthStandardsWeightForHeight
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$WHOGrowthStandardsWeightForHeightCopyWith<
          _WHOGrowthStandardsWeightForHeight>
      get copyWith => __$WHOGrowthStandardsWeightForHeightCopyWithImpl<
          _WHOGrowthStandardsWeightForHeight>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$WHOGrowthStandardsWeightForHeightToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WHOGrowthStandardsWeightForHeight &&
            (identical(other.observationDate, observationDate) ||
                other.observationDate == observationDate) &&
            (identical(other.sex, sex) || other.sex == sex) &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.oedemaExist, oedemaExist) ||
                other.oedemaExist == oedemaExist) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.weight, weight) || other.weight == weight) &&
            (identical(other.measure, measure) || other.measure == measure));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, observationDate, sex, age,
      oedemaExist, height, weight, measure);

  @override
  String toString() {
    return 'WHOGrowthStandardsWeightForHeight(observationDate: $observationDate, sex: $sex, age: $age, oedemaExist: $oedemaExist, height: $height, weight: $weight, measure: $measure)';
  }
}

/// @nodoc
abstract mixin class _$WHOGrowthStandardsWeightForHeightCopyWith<$Res>
    implements $WHOGrowthStandardsWeightForHeightCopyWith<$Res> {
  factory _$WHOGrowthStandardsWeightForHeightCopyWith(
          _WHOGrowthStandardsWeightForHeight value,
          $Res Function(_WHOGrowthStandardsWeightForHeight) _then) =
      __$WHOGrowthStandardsWeightForHeightCopyWithImpl;
  @override
  @useResult
  $Res call(
      {Date? observationDate,
      Sex sex,
      Age age,
      bool oedemaExist,
      Length height,
      Mass weight,
      LengthHeightMeasurementPosition measure});

  @override
  $DateCopyWith<$Res>? get observationDate;
  @override
  $AgeCopyWith<$Res> get age;
}

/// @nodoc
class __$WHOGrowthStandardsWeightForHeightCopyWithImpl<$Res>
    implements _$WHOGrowthStandardsWeightForHeightCopyWith<$Res> {
  __$WHOGrowthStandardsWeightForHeightCopyWithImpl(this._self, this._then);

  final _WHOGrowthStandardsWeightForHeight _self;
  final $Res Function(_WHOGrowthStandardsWeightForHeight) _then;

  /// Create a copy of WHOGrowthStandardsWeightForHeight
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? observationDate = freezed,
    Object? sex = null,
    Object? age = null,
    Object? oedemaExist = null,
    Object? height = null,
    Object? weight = null,
    Object? measure = null,
  }) {
    return _then(_WHOGrowthStandardsWeightForHeight(
      observationDate: freezed == observationDate
          ? _self.observationDate
          : observationDate // ignore: cast_nullable_to_non_nullable
              as Date?,
      sex: null == sex
          ? _self.sex
          : sex // ignore: cast_nullable_to_non_nullable
              as Sex,
      age: null == age
          ? _self.age
          : age // ignore: cast_nullable_to_non_nullable
              as Age,
      oedemaExist: null == oedemaExist
          ? _self.oedemaExist
          : oedemaExist // ignore: cast_nullable_to_non_nullable
              as bool,
      height: null == height
          ? _self.height
          : height // ignore: cast_nullable_to_non_nullable
              as Length,
      weight: null == weight
          ? _self.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as Mass,
      measure: null == measure
          ? _self.measure
          : measure // ignore: cast_nullable_to_non_nullable
              as LengthHeightMeasurementPosition,
    ));
  }

  /// Create a copy of WHOGrowthStandardsWeightForHeight
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DateCopyWith<$Res>? get observationDate {
    if (_self.observationDate == null) {
      return null;
    }

    return $DateCopyWith<$Res>(_self.observationDate!, (value) {
      return _then(_self.copyWith(observationDate: value));
    });
  }

  /// Create a copy of WHOGrowthStandardsWeightForHeight
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
mixin _$WHOGrowthStandardsWeightForLength {
  Date? get observationDate;
  Sex get sex;
  Age get age;
  bool get oedemaExist;
  Length get length;
  Mass get weight;
  LengthHeightMeasurementPosition get measure;

  /// Create a copy of WHOGrowthStandardsWeightForLength
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $WHOGrowthStandardsWeightForLengthCopyWith<WHOGrowthStandardsWeightForLength>
      get copyWith => _$WHOGrowthStandardsWeightForLengthCopyWithImpl<
              WHOGrowthStandardsWeightForLength>(
          this as WHOGrowthStandardsWeightForLength, _$identity);

  /// Serializes this WHOGrowthStandardsWeightForLength to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is WHOGrowthStandardsWeightForLength &&
            (identical(other.observationDate, observationDate) ||
                other.observationDate == observationDate) &&
            (identical(other.sex, sex) || other.sex == sex) &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.oedemaExist, oedemaExist) ||
                other.oedemaExist == oedemaExist) &&
            (identical(other.length, length) || other.length == length) &&
            (identical(other.weight, weight) || other.weight == weight) &&
            (identical(other.measure, measure) || other.measure == measure));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, observationDate, sex, age,
      oedemaExist, length, weight, measure);

  @override
  String toString() {
    return 'WHOGrowthStandardsWeightForLength(observationDate: $observationDate, sex: $sex, age: $age, oedemaExist: $oedemaExist, length: $length, weight: $weight, measure: $measure)';
  }
}

/// @nodoc
abstract mixin class $WHOGrowthStandardsWeightForLengthCopyWith<$Res> {
  factory $WHOGrowthStandardsWeightForLengthCopyWith(
          WHOGrowthStandardsWeightForLength value,
          $Res Function(WHOGrowthStandardsWeightForLength) _then) =
      _$WHOGrowthStandardsWeightForLengthCopyWithImpl;
  @useResult
  $Res call(
      {Date? observationDate,
      Sex sex,
      Age age,
      bool oedemaExist,
      Length length,
      Mass weight,
      LengthHeightMeasurementPosition measure});

  $DateCopyWith<$Res>? get observationDate;
  $AgeCopyWith<$Res> get age;
}

/// @nodoc
class _$WHOGrowthStandardsWeightForLengthCopyWithImpl<$Res>
    implements $WHOGrowthStandardsWeightForLengthCopyWith<$Res> {
  _$WHOGrowthStandardsWeightForLengthCopyWithImpl(this._self, this._then);

  final WHOGrowthStandardsWeightForLength _self;
  final $Res Function(WHOGrowthStandardsWeightForLength) _then;

  /// Create a copy of WHOGrowthStandardsWeightForLength
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? observationDate = freezed,
    Object? sex = null,
    Object? age = null,
    Object? oedemaExist = null,
    Object? length = null,
    Object? weight = null,
    Object? measure = null,
  }) {
    return _then(_self.copyWith(
      observationDate: freezed == observationDate
          ? _self.observationDate
          : observationDate // ignore: cast_nullable_to_non_nullable
              as Date?,
      sex: null == sex
          ? _self.sex
          : sex // ignore: cast_nullable_to_non_nullable
              as Sex,
      age: null == age
          ? _self.age
          : age // ignore: cast_nullable_to_non_nullable
              as Age,
      oedemaExist: null == oedemaExist
          ? _self.oedemaExist
          : oedemaExist // ignore: cast_nullable_to_non_nullable
              as bool,
      length: null == length
          ? _self.length
          : length // ignore: cast_nullable_to_non_nullable
              as Length,
      weight: null == weight
          ? _self.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as Mass,
      measure: null == measure
          ? _self.measure
          : measure // ignore: cast_nullable_to_non_nullable
              as LengthHeightMeasurementPosition,
    ));
  }

  /// Create a copy of WHOGrowthStandardsWeightForLength
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DateCopyWith<$Res>? get observationDate {
    if (_self.observationDate == null) {
      return null;
    }

    return $DateCopyWith<$Res>(_self.observationDate!, (value) {
      return _then(_self.copyWith(observationDate: value));
    });
  }

  /// Create a copy of WHOGrowthStandardsWeightForLength
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
class _WHOGrowthStandardsWeightForLength
    extends WHOGrowthStandardsWeightForLength {
  _WHOGrowthStandardsWeightForLength(
      {this.observationDate,
      required this.sex,
      required this.age,
      this.oedemaExist = false,
      required this.length,
      required this.weight,
      required this.measure})
      : assert(
            adjustedLengthHeight(
                            measure: measure,
                            age: age,
                            lengthHeight: length,
                            type: AdjustedLengthType.who)
                        .value >=
                    45 &&
                adjustedLengthHeight(
                            measure: measure,
                            age: age,
                            lengthHeight: length,
                            type: AdjustedLengthType.who)
                        .value <=
                    110 &&
                length.toCentimeter.value >= 45 &&
                length.toCentimeter.value <= 110,
            'Please correcting measurement position based on age'),
        assert(
            adjustedLengthHeight(
                            measure: measure,
                            age: age,
                            lengthHeight: length,
                            type: AdjustedLengthType.who)
                        .value >=
                    45 &&
                adjustedLengthHeight(
                            measure: measure,
                            age: age,
                            lengthHeight: length,
                            type: AdjustedLengthType.who)
                        .value <=
                    110,
            'Length must be in range of 45 - 110 cm'),
        assert(
            observationDate == null ||
                observationDate.isSameOrBefore(Date.today()) ||
                observationDate.isSameOrAfter(age.dateOfBirth),
            'Observation date is impossible, because happen after today or before birth'),
        super._();
  factory _WHOGrowthStandardsWeightForLength.fromJson(
          Map<String, dynamic> json) =>
      _$WHOGrowthStandardsWeightForLengthFromJson(json);

  @override
  final Date? observationDate;
  @override
  final Sex sex;
  @override
  final Age age;
  @override
  @JsonKey()
  final bool oedemaExist;
  @override
  final Length length;
  @override
  final Mass weight;
  @override
  final LengthHeightMeasurementPosition measure;

  /// Create a copy of WHOGrowthStandardsWeightForLength
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$WHOGrowthStandardsWeightForLengthCopyWith<
          _WHOGrowthStandardsWeightForLength>
      get copyWith => __$WHOGrowthStandardsWeightForLengthCopyWithImpl<
          _WHOGrowthStandardsWeightForLength>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$WHOGrowthStandardsWeightForLengthToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WHOGrowthStandardsWeightForLength &&
            (identical(other.observationDate, observationDate) ||
                other.observationDate == observationDate) &&
            (identical(other.sex, sex) || other.sex == sex) &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.oedemaExist, oedemaExist) ||
                other.oedemaExist == oedemaExist) &&
            (identical(other.length, length) || other.length == length) &&
            (identical(other.weight, weight) || other.weight == weight) &&
            (identical(other.measure, measure) || other.measure == measure));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, observationDate, sex, age,
      oedemaExist, length, weight, measure);

  @override
  String toString() {
    return 'WHOGrowthStandardsWeightForLength(observationDate: $observationDate, sex: $sex, age: $age, oedemaExist: $oedemaExist, length: $length, weight: $weight, measure: $measure)';
  }
}

/// @nodoc
abstract mixin class _$WHOGrowthStandardsWeightForLengthCopyWith<$Res>
    implements $WHOGrowthStandardsWeightForLengthCopyWith<$Res> {
  factory _$WHOGrowthStandardsWeightForLengthCopyWith(
          _WHOGrowthStandardsWeightForLength value,
          $Res Function(_WHOGrowthStandardsWeightForLength) _then) =
      __$WHOGrowthStandardsWeightForLengthCopyWithImpl;
  @override
  @useResult
  $Res call(
      {Date? observationDate,
      Sex sex,
      Age age,
      bool oedemaExist,
      Length length,
      Mass weight,
      LengthHeightMeasurementPosition measure});

  @override
  $DateCopyWith<$Res>? get observationDate;
  @override
  $AgeCopyWith<$Res> get age;
}

/// @nodoc
class __$WHOGrowthStandardsWeightForLengthCopyWithImpl<$Res>
    implements _$WHOGrowthStandardsWeightForLengthCopyWith<$Res> {
  __$WHOGrowthStandardsWeightForLengthCopyWithImpl(this._self, this._then);

  final _WHOGrowthStandardsWeightForLength _self;
  final $Res Function(_WHOGrowthStandardsWeightForLength) _then;

  /// Create a copy of WHOGrowthStandardsWeightForLength
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? observationDate = freezed,
    Object? sex = null,
    Object? age = null,
    Object? oedemaExist = null,
    Object? length = null,
    Object? weight = null,
    Object? measure = null,
  }) {
    return _then(_WHOGrowthStandardsWeightForLength(
      observationDate: freezed == observationDate
          ? _self.observationDate
          : observationDate // ignore: cast_nullable_to_non_nullable
              as Date?,
      sex: null == sex
          ? _self.sex
          : sex // ignore: cast_nullable_to_non_nullable
              as Sex,
      age: null == age
          ? _self.age
          : age // ignore: cast_nullable_to_non_nullable
              as Age,
      oedemaExist: null == oedemaExist
          ? _self.oedemaExist
          : oedemaExist // ignore: cast_nullable_to_non_nullable
              as bool,
      length: null == length
          ? _self.length
          : length // ignore: cast_nullable_to_non_nullable
              as Length,
      weight: null == weight
          ? _self.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as Mass,
      measure: null == measure
          ? _self.measure
          : measure // ignore: cast_nullable_to_non_nullable
              as LengthHeightMeasurementPosition,
    ));
  }

  /// Create a copy of WHOGrowthStandardsWeightForLength
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DateCopyWith<$Res>? get observationDate {
    if (_self.observationDate == null) {
      return null;
    }

    return $DateCopyWith<$Res>(_self.observationDate!, (value) {
      return _then(_self.copyWith(observationDate: value));
    });
  }

  /// Create a copy of WHOGrowthStandardsWeightForLength
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
mixin _$WHOGrowthStandardsWeightVelocityForAge {
  Sex get sex;
  Age get age;
  List<MassMeasurementHistory> get pastMeasurement;

  /// Create a copy of WHOGrowthStandardsWeightVelocityForAge
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $WHOGrowthStandardsWeightVelocityForAgeCopyWith<
          WHOGrowthStandardsWeightVelocityForAge>
      get copyWith => _$WHOGrowthStandardsWeightVelocityForAgeCopyWithImpl<
              WHOGrowthStandardsWeightVelocityForAge>(
          this as WHOGrowthStandardsWeightVelocityForAge, _$identity);

  /// Serializes this WHOGrowthStandardsWeightVelocityForAge to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is WHOGrowthStandardsWeightVelocityForAge &&
            (identical(other.sex, sex) || other.sex == sex) &&
            (identical(other.age, age) || other.age == age) &&
            const DeepCollectionEquality()
                .equals(other.pastMeasurement, pastMeasurement));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, sex, age,
      const DeepCollectionEquality().hash(pastMeasurement));

  @override
  String toString() {
    return 'WHOGrowthStandardsWeightVelocityForAge(sex: $sex, age: $age, pastMeasurement: $pastMeasurement)';
  }
}

/// @nodoc
abstract mixin class $WHOGrowthStandardsWeightVelocityForAgeCopyWith<$Res> {
  factory $WHOGrowthStandardsWeightVelocityForAgeCopyWith(
          WHOGrowthStandardsWeightVelocityForAge value,
          $Res Function(WHOGrowthStandardsWeightVelocityForAge) _then) =
      _$WHOGrowthStandardsWeightVelocityForAgeCopyWithImpl;
  @useResult
  $Res call({Sex sex, Age age, List<MassMeasurementHistory> pastMeasurement});

  $AgeCopyWith<$Res> get age;
}

/// @nodoc
class _$WHOGrowthStandardsWeightVelocityForAgeCopyWithImpl<$Res>
    implements $WHOGrowthStandardsWeightVelocityForAgeCopyWith<$Res> {
  _$WHOGrowthStandardsWeightVelocityForAgeCopyWithImpl(this._self, this._then);

  final WHOGrowthStandardsWeightVelocityForAge _self;
  final $Res Function(WHOGrowthStandardsWeightVelocityForAge) _then;

  /// Create a copy of WHOGrowthStandardsWeightVelocityForAge
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sex = null,
    Object? age = null,
    Object? pastMeasurement = null,
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
      pastMeasurement: null == pastMeasurement
          ? _self.pastMeasurement
          : pastMeasurement // ignore: cast_nullable_to_non_nullable
              as List<MassMeasurementHistory>,
    ));
  }

  /// Create a copy of WHOGrowthStandardsWeightVelocityForAge
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
class _WHOGrowthStandardsWeightVelocityForAge
    extends WHOGrowthStandardsWeightVelocityForAge {
  _WHOGrowthStandardsWeightVelocityForAge(
      {required this.sex,
      required this.age,
      required final List<MassMeasurementHistory> pastMeasurement})
      : assert(age.ageInTotalDaysByNow >= 0 && age.ageInTotalMonthsByNow <= 24,
            'Age must be in range of 0 days - 24 months'),
        assert(pastMeasurement.isNotEmpty,
            'Calculation can not be done as past measurement is empty'),
        assert(pastMeasurement.toSet().length > 1,
            'Calculation can not be done as there is only one measurement history'),
        assert(
            pastMeasurement
                .every((element) => element.date.isSameOrBefore(Date.today())),
            'Calculation can not be done as there is future date in past measurement'),
        assert(
            pastMeasurement.every(
                (element) => element.date.isSameOrAfter(age.dateOfBirth)),
            'Calculation can not be done as there is date less than Date of Birth in past measurement, if you find this exception is a mistake, try to provide exact $Age'),
        _pastMeasurement = pastMeasurement,
        super._();
  factory _WHOGrowthStandardsWeightVelocityForAge.fromJson(
          Map<String, dynamic> json) =>
      _$WHOGrowthStandardsWeightVelocityForAgeFromJson(json);

  @override
  final Sex sex;
  @override
  final Age age;
  final List<MassMeasurementHistory> _pastMeasurement;
  @override
  List<MassMeasurementHistory> get pastMeasurement {
    if (_pastMeasurement is EqualUnmodifiableListView) return _pastMeasurement;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_pastMeasurement);
  }

  /// Create a copy of WHOGrowthStandardsWeightVelocityForAge
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$WHOGrowthStandardsWeightVelocityForAgeCopyWith<
          _WHOGrowthStandardsWeightVelocityForAge>
      get copyWith => __$WHOGrowthStandardsWeightVelocityForAgeCopyWithImpl<
          _WHOGrowthStandardsWeightVelocityForAge>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$WHOGrowthStandardsWeightVelocityForAgeToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WHOGrowthStandardsWeightVelocityForAge &&
            (identical(other.sex, sex) || other.sex == sex) &&
            (identical(other.age, age) || other.age == age) &&
            const DeepCollectionEquality()
                .equals(other._pastMeasurement, _pastMeasurement));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, sex, age,
      const DeepCollectionEquality().hash(_pastMeasurement));

  @override
  String toString() {
    return 'WHOGrowthStandardsWeightVelocityForAge(sex: $sex, age: $age, pastMeasurement: $pastMeasurement)';
  }
}

/// @nodoc
abstract mixin class _$WHOGrowthStandardsWeightVelocityForAgeCopyWith<$Res>
    implements $WHOGrowthStandardsWeightVelocityForAgeCopyWith<$Res> {
  factory _$WHOGrowthStandardsWeightVelocityForAgeCopyWith(
          _WHOGrowthStandardsWeightVelocityForAge value,
          $Res Function(_WHOGrowthStandardsWeightVelocityForAge) _then) =
      __$WHOGrowthStandardsWeightVelocityForAgeCopyWithImpl;
  @override
  @useResult
  $Res call({Sex sex, Age age, List<MassMeasurementHistory> pastMeasurement});

  @override
  $AgeCopyWith<$Res> get age;
}

/// @nodoc
class __$WHOGrowthStandardsWeightVelocityForAgeCopyWithImpl<$Res>
    implements _$WHOGrowthStandardsWeightVelocityForAgeCopyWith<$Res> {
  __$WHOGrowthStandardsWeightVelocityForAgeCopyWithImpl(this._self, this._then);

  final _WHOGrowthStandardsWeightVelocityForAge _self;
  final $Res Function(_WHOGrowthStandardsWeightVelocityForAge) _then;

  /// Create a copy of WHOGrowthStandardsWeightVelocityForAge
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? sex = null,
    Object? age = null,
    Object? pastMeasurement = null,
  }) {
    return _then(_WHOGrowthStandardsWeightVelocityForAge(
      sex: null == sex
          ? _self.sex
          : sex // ignore: cast_nullable_to_non_nullable
              as Sex,
      age: null == age
          ? _self.age
          : age // ignore: cast_nullable_to_non_nullable
              as Age,
      pastMeasurement: null == pastMeasurement
          ? _self._pastMeasurement
          : pastMeasurement // ignore: cast_nullable_to_non_nullable
              as List<MassMeasurementHistory>,
    ));
  }

  /// Create a copy of WHOGrowthStandardsWeightVelocityForAge
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
