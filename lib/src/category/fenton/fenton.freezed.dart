// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
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
  Date? get observationDate;
  Sex get sex;
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
    return 'FentonHeadCircumferenceForAge(observationDate: $observationDate, sex: $sex, age: $age, measurementResult: $measurementResult)';
  }
}

/// @nodoc
abstract mixin class $FentonHeadCircumferenceForAgeCopyWith<$Res> {
  factory $FentonHeadCircumferenceForAgeCopyWith(
          FentonHeadCircumferenceForAge value,
          $Res Function(FentonHeadCircumferenceForAge) _then) =
      _$FentonHeadCircumferenceForAgeCopyWithImpl;
  @useResult
  $Res call(
      {Date? observationDate, Sex sex, Age age, Length measurementResult});

  $DateCopyWith<$Res>? get observationDate;
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

  /// Create a copy of FentonHeadCircumferenceForAge
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
@JsonSerializable()
class _FentonHeadCircumferenceForAge extends FentonHeadCircumferenceForAge {
  _FentonHeadCircumferenceForAge(
      {this.observationDate,
      required this.sex,
      required this.age,
      required this.measurementResult})
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
  factory _FentonHeadCircumferenceForAge.fromJson(Map<String, dynamic> json) =>
      _$FentonHeadCircumferenceForAgeFromJson(json);

  @override
  final Date? observationDate;
  @override
  final Sex sex;
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
    return 'FentonHeadCircumferenceForAge(observationDate: $observationDate, sex: $sex, age: $age, measurementResult: $measurementResult)';
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
  $Res call(
      {Date? observationDate, Sex sex, Age age, Length measurementResult});

  @override
  $DateCopyWith<$Res>? get observationDate;
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
    Object? observationDate = freezed,
    Object? sex = null,
    Object? age = null,
    Object? measurementResult = null,
  }) {
    return _then(_FentonHeadCircumferenceForAge(
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

  /// Create a copy of FentonHeadCircumferenceForAge
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
  Date? get observationDate;
  Sex get sex;
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
    return 'FentonLengthForAge(observationDate: $observationDate, sex: $sex, age: $age, lengthHeight: $lengthHeight, measure: $measure)';
  }
}

/// @nodoc
abstract mixin class $FentonLengthForAgeCopyWith<$Res> {
  factory $FentonLengthForAgeCopyWith(
          FentonLengthForAge value, $Res Function(FentonLengthForAge) _then) =
      _$FentonLengthForAgeCopyWithImpl;
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

  /// Create a copy of FentonLengthForAge
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
@JsonSerializable()
class _FentonLengthForAge extends FentonLengthForAge {
  _FentonLengthForAge(
      {this.observationDate,
      required this.sex,
      required this.age,
      required this.lengthHeight,
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
  factory _FentonLengthForAge.fromJson(Map<String, dynamic> json) =>
      _$FentonLengthForAgeFromJson(json);

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
    return 'FentonLengthForAge(observationDate: $observationDate, sex: $sex, age: $age, lengthHeight: $lengthHeight, measure: $measure)';
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
    Object? observationDate = freezed,
    Object? sex = null,
    Object? age = null,
    Object? lengthHeight = null,
    Object? measure = null,
  }) {
    return _then(_FentonLengthForAge(
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

  /// Create a copy of FentonLengthForAge
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
  Date? get observationDate;
  Sex get sex;
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
            (identical(other.observationDate, observationDate) ||
                other.observationDate == observationDate) &&
            (identical(other.sex, sex) || other.sex == sex) &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.weight, weight) || other.weight == weight));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, observationDate, sex, age, weight);

  @override
  String toString() {
    return 'FentonWeightForAge(observationDate: $observationDate, sex: $sex, age: $age, weight: $weight)';
  }
}

/// @nodoc
abstract mixin class $FentonWeightForAgeCopyWith<$Res> {
  factory $FentonWeightForAgeCopyWith(
          FentonWeightForAge value, $Res Function(FentonWeightForAge) _then) =
      _$FentonWeightForAgeCopyWithImpl;
  @useResult
  $Res call({Date? observationDate, Sex sex, Age age, Mass weight});

  $DateCopyWith<$Res>? get observationDate;
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
    Object? observationDate = freezed,
    Object? sex = null,
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
  $DateCopyWith<$Res>? get observationDate {
    if (_self.observationDate == null) {
      return null;
    }

    return $DateCopyWith<$Res>(_self.observationDate!, (value) {
      return _then(_self.copyWith(observationDate: value));
    });
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

/// @nodoc
@JsonSerializable()
class _FentonWeightForAge extends FentonWeightForAge {
  _FentonWeightForAge(
      {this.observationDate,
      required this.sex,
      required this.age,
      required this.weight})
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
  factory _FentonWeightForAge.fromJson(Map<String, dynamic> json) =>
      _$FentonWeightForAgeFromJson(json);

  @override
  final Date? observationDate;
  @override
  final Sex sex;
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
            (identical(other.observationDate, observationDate) ||
                other.observationDate == observationDate) &&
            (identical(other.sex, sex) || other.sex == sex) &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.weight, weight) || other.weight == weight));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, observationDate, sex, age, weight);

  @override
  String toString() {
    return 'FentonWeightForAge(observationDate: $observationDate, sex: $sex, age: $age, weight: $weight)';
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
  $Res call({Date? observationDate, Sex sex, Age age, Mass weight});

  @override
  $DateCopyWith<$Res>? get observationDate;
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
    Object? observationDate = freezed,
    Object? sex = null,
    Object? age = null,
    Object? weight = null,
  }) {
    return _then(_FentonWeightForAge(
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
  $DateCopyWith<$Res>? get observationDate {
    if (_self.observationDate == null) {
      return null;
    }

    return $DateCopyWith<$Res>(_self.observationDate!, (value) {
      return _then(_self.copyWith(observationDate: value));
    });
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
