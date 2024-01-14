// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'age.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Age _$AgeFromJson(Map<String, dynamic> json) {
  return _Age.fromJson(json);
}

/// @nodoc
mixin _$Age {
  Date get dateOfBirth => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AgeCopyWith<Age> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AgeCopyWith<$Res> {
  factory $AgeCopyWith(Age value, $Res Function(Age) then) =
      _$AgeCopyWithImpl<$Res, Age>;
  @useResult
  $Res call({Date dateOfBirth});

  $DateCopyWith<$Res> get dateOfBirth;
}

/// @nodoc
class _$AgeCopyWithImpl<$Res, $Val extends Age> implements $AgeCopyWith<$Res> {
  _$AgeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dateOfBirth = null,
  }) {
    return _then(_value.copyWith(
      dateOfBirth: null == dateOfBirth
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as Date,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DateCopyWith<$Res> get dateOfBirth {
    return $DateCopyWith<$Res>(_value.dateOfBirth, (value) {
      return _then(_value.copyWith(dateOfBirth: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AgeImplCopyWith<$Res> implements $AgeCopyWith<$Res> {
  factory _$$AgeImplCopyWith(_$AgeImpl value, $Res Function(_$AgeImpl) then) =
      __$$AgeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Date dateOfBirth});

  @override
  $DateCopyWith<$Res> get dateOfBirth;
}

/// @nodoc
class __$$AgeImplCopyWithImpl<$Res> extends _$AgeCopyWithImpl<$Res, _$AgeImpl>
    implements _$$AgeImplCopyWith<$Res> {
  __$$AgeImplCopyWithImpl(_$AgeImpl _value, $Res Function(_$AgeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dateOfBirth = null,
  }) {
    return _then(_$AgeImpl(
      null == dateOfBirth
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as Date,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AgeImpl extends _Age {
  _$AgeImpl(this.dateOfBirth)
      : assert(
            !(DateTime(DateTimeUtils.now().year, DateTimeUtils.now().month,
                    DateTimeUtils.now().day)
                .difference(
                  DateTime(
                    dateOfBirth.year,
                    dateOfBirth.month.number,
                    dateOfBirth.date,
                  ),
                )
                .isNegative),
            'Age is impossible'),
        super._();

  factory _$AgeImpl.fromJson(Map<String, dynamic> json) =>
      _$$AgeImplFromJson(json);

  @override
  final Date dateOfBirth;

  @override
  String toString() {
    return 'Age(dateOfBirth: $dateOfBirth)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AgeImplCopyWith<_$AgeImpl> get copyWith =>
      __$$AgeImplCopyWithImpl<_$AgeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AgeImplToJson(
      this,
    );
  }
}

abstract class _Age extends Age {
  factory _Age(final Date dateOfBirth) = _$AgeImpl;
  _Age._() : super._();

  factory _Age.fromJson(Map<String, dynamic> json) = _$AgeImpl.fromJson;

  @override
  Date get dateOfBirth;
  @override
  @JsonKey(ignore: true)
  _$$AgeImplCopyWith<_$AgeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Date _$DateFromJson(Map<String, dynamic> json) {
  return _Date.fromJson(json);
}

/// @nodoc
mixin _$Date {
  int get year => throw _privateConstructorUsedError;
  Months get month => throw _privateConstructorUsedError;
  int get date => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DateCopyWith<Date> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DateCopyWith<$Res> {
  factory $DateCopyWith(Date value, $Res Function(Date) then) =
      _$DateCopyWithImpl<$Res, Date>;
  @useResult
  $Res call({int year, Months month, int date});
}

/// @nodoc
class _$DateCopyWithImpl<$Res, $Val extends Date>
    implements $DateCopyWith<$Res> {
  _$DateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? year = null,
    Object? month = null,
    Object? date = null,
  }) {
    return _then(_value.copyWith(
      year: null == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int,
      month: null == month
          ? _value.month
          : month // ignore: cast_nullable_to_non_nullable
              as Months,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DateImplCopyWith<$Res> implements $DateCopyWith<$Res> {
  factory _$$DateImplCopyWith(
          _$DateImpl value, $Res Function(_$DateImpl) then) =
      __$$DateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int year, Months month, int date});
}

/// @nodoc
class __$$DateImplCopyWithImpl<$Res>
    extends _$DateCopyWithImpl<$Res, _$DateImpl>
    implements _$$DateImplCopyWith<$Res> {
  __$$DateImplCopyWithImpl(_$DateImpl _value, $Res Function(_$DateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? year = null,
    Object? month = null,
    Object? date = null,
  }) {
    return _then(_$DateImpl(
      year: null == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int,
      month: null == month
          ? _value.month
          : month // ignore: cast_nullable_to_non_nullable
              as Months,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DateImpl extends _Date {
  _$DateImpl({required this.year, required this.month, required this.date})
      : assert(year > 0 || date > 0 || date < 32,
            'Date impossible, use ${Date.fromDateTime} for safety, in cost of increased risk of wrong growth calculation'),
        assert(date <= DateTimeUtils.datesInMonth(year, month.number),
            'Date exceeded, max date is at ${DateTimeUtils.datesInMonth(year, month.number)} in ${month.text} $year'),
        super._();

  factory _$DateImpl.fromJson(Map<String, dynamic> json) =>
      _$$DateImplFromJson(json);

  @override
  final int year;
  @override
  final Months month;
  @override
  final int date;

  @override
  String toString() {
    return 'Date(year: $year, month: $month, date: $date)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DateImplCopyWith<_$DateImpl> get copyWith =>
      __$$DateImplCopyWithImpl<_$DateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DateImplToJson(
      this,
    );
  }
}

abstract class _Date extends Date {
  factory _Date(
      {required final int year,
      required final Months month,
      required final int date}) = _$DateImpl;
  _Date._() : super._();

  factory _Date.fromJson(Map<String, dynamic> json) = _$DateImpl.fromJson;

  @override
  int get year;
  @override
  Months get month;
  @override
  int get date;
  @override
  @JsonKey(ignore: true)
  _$$DateImplCopyWith<_$DateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
