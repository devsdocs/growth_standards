// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'age.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Age {
  Date get dateOfBirth;
  Date? get observedDate;

  /// Create a copy of Age
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AgeCopyWith<Age> get copyWith =>
      _$AgeCopyWithImpl<Age>(this as Age, _$identity);

  /// Serializes this Age to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Age &&
            (identical(other.dateOfBirth, dateOfBirth) ||
                other.dateOfBirth == dateOfBirth) &&
            (identical(other.observedDate, observedDate) ||
                other.observedDate == observedDate));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, dateOfBirth, observedDate);

  @override
  String toString() {
    return 'Age(dateOfBirth: $dateOfBirth, observedDate: $observedDate)';
  }
}

/// @nodoc
abstract mixin class $AgeCopyWith<$Res> {
  factory $AgeCopyWith(Age value, $Res Function(Age) _then) = _$AgeCopyWithImpl;
  @useResult
  $Res call({Date dateOfBirth, Date? observedDate});

  $DateCopyWith<$Res> get dateOfBirth;
  $DateCopyWith<$Res>? get observedDate;
}

/// @nodoc
class _$AgeCopyWithImpl<$Res> implements $AgeCopyWith<$Res> {
  _$AgeCopyWithImpl(this._self, this._then);

  final Age _self;
  final $Res Function(Age) _then;

  /// Create a copy of Age
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dateOfBirth = null,
    Object? observedDate = freezed,
  }) {
    return _then(_self.copyWith(
      dateOfBirth: null == dateOfBirth
          ? _self.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as Date,
      observedDate: freezed == observedDate
          ? _self.observedDate
          : observedDate // ignore: cast_nullable_to_non_nullable
              as Date?,
    ));
  }

  /// Create a copy of Age
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DateCopyWith<$Res> get dateOfBirth {
    return $DateCopyWith<$Res>(_self.dateOfBirth, (value) {
      return _then(_self.copyWith(dateOfBirth: value));
    });
  }

  /// Create a copy of Age
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DateCopyWith<$Res>? get observedDate {
    if (_self.observedDate == null) {
      return null;
    }

    return $DateCopyWith<$Res>(_self.observedDate!, (value) {
      return _then(_self.copyWith(observedDate: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _Age extends Age {
  _Age(this.dateOfBirth, {this.observedDate})
      : assert(observedDate == null || observedDate.isSameOrAfter(dateOfBirth),
            'Age is impossible because observed date is before date of birth'),
        assert(
            observedDate == null || observedDate.isSameOrBefore(Date.today()),
            'Observed date cannot be in the future'),
        assert(dateOfBirth.isSameOrBefore(Date.today()),
            'Date of birth cannot be in the future'),
        assert(dateOfBirth.year >= 1900, 'Date of birth must be after 1900'),
        super._();
  factory _Age.fromJson(Map<String, dynamic> json) => _$AgeFromJson(json);

  @override
  final Date dateOfBirth;
  @override
  final Date? observedDate;

  /// Create a copy of Age
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AgeCopyWith<_Age> get copyWith =>
      __$AgeCopyWithImpl<_Age>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$AgeToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Age &&
            (identical(other.dateOfBirth, dateOfBirth) ||
                other.dateOfBirth == dateOfBirth) &&
            (identical(other.observedDate, observedDate) ||
                other.observedDate == observedDate));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, dateOfBirth, observedDate);

  @override
  String toString() {
    return 'Age(dateOfBirth: $dateOfBirth, observedDate: $observedDate)';
  }
}

/// @nodoc
abstract mixin class _$AgeCopyWith<$Res> implements $AgeCopyWith<$Res> {
  factory _$AgeCopyWith(_Age value, $Res Function(_Age) _then) =
      __$AgeCopyWithImpl;
  @override
  @useResult
  $Res call({Date dateOfBirth, Date? observedDate});

  @override
  $DateCopyWith<$Res> get dateOfBirth;
  @override
  $DateCopyWith<$Res>? get observedDate;
}

/// @nodoc
class __$AgeCopyWithImpl<$Res> implements _$AgeCopyWith<$Res> {
  __$AgeCopyWithImpl(this._self, this._then);

  final _Age _self;
  final $Res Function(_Age) _then;

  /// Create a copy of Age
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? dateOfBirth = null,
    Object? observedDate = freezed,
  }) {
    return _then(_Age(
      null == dateOfBirth
          ? _self.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as Date,
      observedDate: freezed == observedDate
          ? _self.observedDate
          : observedDate // ignore: cast_nullable_to_non_nullable
              as Date?,
    ));
  }

  /// Create a copy of Age
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DateCopyWith<$Res> get dateOfBirth {
    return $DateCopyWith<$Res>(_self.dateOfBirth, (value) {
      return _then(_self.copyWith(dateOfBirth: value));
    });
  }

  /// Create a copy of Age
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DateCopyWith<$Res>? get observedDate {
    if (_self.observedDate == null) {
      return null;
    }

    return $DateCopyWith<$Res>(_self.observedDate!, (value) {
      return _then(_self.copyWith(observedDate: value));
    });
  }
}

/// @nodoc
mixin _$Date {
  int get year;
  Months get month;
  int get date;

  /// Create a copy of Date
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DateCopyWith<Date> get copyWith =>
      _$DateCopyWithImpl<Date>(this as Date, _$identity);

  /// Serializes this Date to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Date &&
            (identical(other.year, year) || other.year == year) &&
            (identical(other.month, month) || other.month == month) &&
            (identical(other.date, date) || other.date == date));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, year, month, date);

  @override
  String toString() {
    return 'Date(year: $year, month: $month, date: $date)';
  }
}

/// @nodoc
abstract mixin class $DateCopyWith<$Res> {
  factory $DateCopyWith(Date value, $Res Function(Date) _then) =
      _$DateCopyWithImpl;
  @useResult
  $Res call({int year, Months month, int date});
}

/// @nodoc
class _$DateCopyWithImpl<$Res> implements $DateCopyWith<$Res> {
  _$DateCopyWithImpl(this._self, this._then);

  final Date _self;
  final $Res Function(Date) _then;

  /// Create a copy of Date
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? year = null,
    Object? month = null,
    Object? date = null,
  }) {
    return _then(_self.copyWith(
      year: null == year
          ? _self.year
          : year // ignore: cast_nullable_to_non_nullable
              as int,
      month: null == month
          ? _self.month
          : month // ignore: cast_nullable_to_non_nullable
              as Months,
      date: null == date
          ? _self.date
          : date // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _Date extends Date {
  _Date({required this.year, required this.month, required this.date})
      : assert(year > 0 && date > 0 && date < 32,
            'Date impossible, use ${Date.fromDateTime} for safety, in cost of increased risk of wrong growth calculation'),
        assert(date <= DateTimeUtils.getDaysInMonth(year, month.number),
            'Date exceeded, max date is at ${DateTimeUtils.getDaysInMonth(year, month.number)} in ${month.text} $year'),
        assert(year >= 1900 && year <= 2100,
            'Year should be between 1900 and 2100 for reasonable date ranges'),
        assert(month.number >= 1 && month.number <= 12,
            'Month number must be between 1 and 12'),
        super._();
  factory _Date.fromJson(Map<String, dynamic> json) => _$DateFromJson(json);

  @override
  final int year;
  @override
  final Months month;
  @override
  final int date;

  /// Create a copy of Date
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$DateCopyWith<_Date> get copyWith =>
      __$DateCopyWithImpl<_Date>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$DateToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Date &&
            (identical(other.year, year) || other.year == year) &&
            (identical(other.month, month) || other.month == month) &&
            (identical(other.date, date) || other.date == date));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, year, month, date);

  @override
  String toString() {
    return 'Date(year: $year, month: $month, date: $date)';
  }
}

/// @nodoc
abstract mixin class _$DateCopyWith<$Res> implements $DateCopyWith<$Res> {
  factory _$DateCopyWith(_Date value, $Res Function(_Date) _then) =
      __$DateCopyWithImpl;
  @override
  @useResult
  $Res call({int year, Months month, int date});
}

/// @nodoc
class __$DateCopyWithImpl<$Res> implements _$DateCopyWith<$Res> {
  __$DateCopyWithImpl(this._self, this._then);

  final _Date _self;
  final $Res Function(_Date) _then;

  /// Create a copy of Date
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? year = null,
    Object? month = null,
    Object? date = null,
  }) {
    return _then(_Date(
      year: null == year
          ? _self.year
          : year // ignore: cast_nullable_to_non_nullable
              as int,
      month: null == month
          ? _self.month
          : month // ignore: cast_nullable_to_non_nullable
              as Months,
      date: null == date
          ? _self.date
          : date // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

// dart format on
