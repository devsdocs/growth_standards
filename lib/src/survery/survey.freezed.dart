// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'survey.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PersonSurvery _$PersonSurveryFromJson(Map<String, dynamic> json) {
  return _PersonSurvery.fromJson(json);
}

/// @nodoc
mixin _$PersonSurvery {
  Person get person => throw _privateConstructorUsedError;
  MeasurementType get measurementType => throw _privateConstructorUsedError;
  Precision? get precision => throw _privateConstructorUsedError;
  @MassMeasurementHistoryConverter()
  List<MassMeasurementHistory> get massMeasurementHistory =>
      throw _privateConstructorUsedError;
  @LengthMeasurementHistoryConverter()
  List<LengthMeasurementHistory> get lengthHeightMeasurementHistory =>
      throw _privateConstructorUsedError;
  @LengthMeasurementHistoryConverter()
  List<LengthMeasurementHistory>? get headCircumferenceMeasurementHistory =>
      throw _privateConstructorUsedError;
  @LengthMeasurementHistoryConverter()
  List<LengthMeasurementHistory>? get subscapularSkinfoldMeasurementHistory =>
      throw _privateConstructorUsedError;
  @LengthMeasurementHistoryConverter()
  List<LengthMeasurementHistory>? get tricepsSkinfoldMeasurementHistory =>
      throw _privateConstructorUsedError;
  @LengthMeasurementHistoryConverter()
  List<LengthMeasurementHistory>? get armCircumferenceMeasurementHistory =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PersonSurveryCopyWith<PersonSurvery> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PersonSurveryCopyWith<$Res> {
  factory $PersonSurveryCopyWith(
          PersonSurvery value, $Res Function(PersonSurvery) then) =
      _$PersonSurveryCopyWithImpl<$Res, PersonSurvery>;
  @useResult
  $Res call(
      {Person person,
      MeasurementType measurementType,
      Precision? precision,
      @MassMeasurementHistoryConverter()
      List<MassMeasurementHistory> massMeasurementHistory,
      @LengthMeasurementHistoryConverter()
      List<LengthMeasurementHistory> lengthHeightMeasurementHistory,
      @LengthMeasurementHistoryConverter()
      List<LengthMeasurementHistory>? headCircumferenceMeasurementHistory,
      @LengthMeasurementHistoryConverter()
      List<LengthMeasurementHistory>? subscapularSkinfoldMeasurementHistory,
      @LengthMeasurementHistoryConverter()
      List<LengthMeasurementHistory>? tricepsSkinfoldMeasurementHistory,
      @LengthMeasurementHistoryConverter()
      List<LengthMeasurementHistory>? armCircumferenceMeasurementHistory});

  $PersonCopyWith<$Res> get person;
}

/// @nodoc
class _$PersonSurveryCopyWithImpl<$Res, $Val extends PersonSurvery>
    implements $PersonSurveryCopyWith<$Res> {
  _$PersonSurveryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? person = null,
    Object? measurementType = null,
    Object? precision = freezed,
    Object? massMeasurementHistory = null,
    Object? lengthHeightMeasurementHistory = null,
    Object? headCircumferenceMeasurementHistory = freezed,
    Object? subscapularSkinfoldMeasurementHistory = freezed,
    Object? tricepsSkinfoldMeasurementHistory = freezed,
    Object? armCircumferenceMeasurementHistory = freezed,
  }) {
    return _then(_value.copyWith(
      person: null == person
          ? _value.person
          : person // ignore: cast_nullable_to_non_nullable
              as Person,
      measurementType: null == measurementType
          ? _value.measurementType
          : measurementType // ignore: cast_nullable_to_non_nullable
              as MeasurementType,
      precision: freezed == precision
          ? _value.precision
          : precision // ignore: cast_nullable_to_non_nullable
              as Precision?,
      massMeasurementHistory: null == massMeasurementHistory
          ? _value.massMeasurementHistory
          : massMeasurementHistory // ignore: cast_nullable_to_non_nullable
              as List<MassMeasurementHistory>,
      lengthHeightMeasurementHistory: null == lengthHeightMeasurementHistory
          ? _value.lengthHeightMeasurementHistory
          : lengthHeightMeasurementHistory // ignore: cast_nullable_to_non_nullable
              as List<LengthMeasurementHistory>,
      headCircumferenceMeasurementHistory: freezed ==
              headCircumferenceMeasurementHistory
          ? _value.headCircumferenceMeasurementHistory
          : headCircumferenceMeasurementHistory // ignore: cast_nullable_to_non_nullable
              as List<LengthMeasurementHistory>?,
      subscapularSkinfoldMeasurementHistory: freezed ==
              subscapularSkinfoldMeasurementHistory
          ? _value.subscapularSkinfoldMeasurementHistory
          : subscapularSkinfoldMeasurementHistory // ignore: cast_nullable_to_non_nullable
              as List<LengthMeasurementHistory>?,
      tricepsSkinfoldMeasurementHistory: freezed ==
              tricepsSkinfoldMeasurementHistory
          ? _value.tricepsSkinfoldMeasurementHistory
          : tricepsSkinfoldMeasurementHistory // ignore: cast_nullable_to_non_nullable
              as List<LengthMeasurementHistory>?,
      armCircumferenceMeasurementHistory: freezed ==
              armCircumferenceMeasurementHistory
          ? _value.armCircumferenceMeasurementHistory
          : armCircumferenceMeasurementHistory // ignore: cast_nullable_to_non_nullable
              as List<LengthMeasurementHistory>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PersonCopyWith<$Res> get person {
    return $PersonCopyWith<$Res>(_value.person, (value) {
      return _then(_value.copyWith(person: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PersonSurveryImplCopyWith<$Res>
    implements $PersonSurveryCopyWith<$Res> {
  factory _$$PersonSurveryImplCopyWith(
          _$PersonSurveryImpl value, $Res Function(_$PersonSurveryImpl) then) =
      __$$PersonSurveryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Person person,
      MeasurementType measurementType,
      Precision? precision,
      @MassMeasurementHistoryConverter()
      List<MassMeasurementHistory> massMeasurementHistory,
      @LengthMeasurementHistoryConverter()
      List<LengthMeasurementHistory> lengthHeightMeasurementHistory,
      @LengthMeasurementHistoryConverter()
      List<LengthMeasurementHistory>? headCircumferenceMeasurementHistory,
      @LengthMeasurementHistoryConverter()
      List<LengthMeasurementHistory>? subscapularSkinfoldMeasurementHistory,
      @LengthMeasurementHistoryConverter()
      List<LengthMeasurementHistory>? tricepsSkinfoldMeasurementHistory,
      @LengthMeasurementHistoryConverter()
      List<LengthMeasurementHistory>? armCircumferenceMeasurementHistory});

  @override
  $PersonCopyWith<$Res> get person;
}

/// @nodoc
class __$$PersonSurveryImplCopyWithImpl<$Res>
    extends _$PersonSurveryCopyWithImpl<$Res, _$PersonSurveryImpl>
    implements _$$PersonSurveryImplCopyWith<$Res> {
  __$$PersonSurveryImplCopyWithImpl(
      _$PersonSurveryImpl _value, $Res Function(_$PersonSurveryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? person = null,
    Object? measurementType = null,
    Object? precision = freezed,
    Object? massMeasurementHistory = null,
    Object? lengthHeightMeasurementHistory = null,
    Object? headCircumferenceMeasurementHistory = freezed,
    Object? subscapularSkinfoldMeasurementHistory = freezed,
    Object? tricepsSkinfoldMeasurementHistory = freezed,
    Object? armCircumferenceMeasurementHistory = freezed,
  }) {
    return _then(_$PersonSurveryImpl(
      person: null == person
          ? _value.person
          : person // ignore: cast_nullable_to_non_nullable
              as Person,
      measurementType: null == measurementType
          ? _value.measurementType
          : measurementType // ignore: cast_nullable_to_non_nullable
              as MeasurementType,
      precision: freezed == precision
          ? _value.precision
          : precision // ignore: cast_nullable_to_non_nullable
              as Precision?,
      massMeasurementHistory: null == massMeasurementHistory
          ? _value._massMeasurementHistory
          : massMeasurementHistory // ignore: cast_nullable_to_non_nullable
              as List<MassMeasurementHistory>,
      lengthHeightMeasurementHistory: null == lengthHeightMeasurementHistory
          ? _value._lengthHeightMeasurementHistory
          : lengthHeightMeasurementHistory // ignore: cast_nullable_to_non_nullable
              as List<LengthMeasurementHistory>,
      headCircumferenceMeasurementHistory: freezed ==
              headCircumferenceMeasurementHistory
          ? _value._headCircumferenceMeasurementHistory
          : headCircumferenceMeasurementHistory // ignore: cast_nullable_to_non_nullable
              as List<LengthMeasurementHistory>?,
      subscapularSkinfoldMeasurementHistory: freezed ==
              subscapularSkinfoldMeasurementHistory
          ? _value._subscapularSkinfoldMeasurementHistory
          : subscapularSkinfoldMeasurementHistory // ignore: cast_nullable_to_non_nullable
              as List<LengthMeasurementHistory>?,
      tricepsSkinfoldMeasurementHistory: freezed ==
              tricepsSkinfoldMeasurementHistory
          ? _value._tricepsSkinfoldMeasurementHistory
          : tricepsSkinfoldMeasurementHistory // ignore: cast_nullable_to_non_nullable
              as List<LengthMeasurementHistory>?,
      armCircumferenceMeasurementHistory: freezed ==
              armCircumferenceMeasurementHistory
          ? _value._armCircumferenceMeasurementHistory
          : armCircumferenceMeasurementHistory // ignore: cast_nullable_to_non_nullable
              as List<LengthMeasurementHistory>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PersonSurveryImpl extends _PersonSurvery {
  _$PersonSurveryImpl(
      {required this.person,
      required this.measurementType,
      this.precision = Precision.two,
      @MassMeasurementHistoryConverter()
      required final List<MassMeasurementHistory> massMeasurementHistory,
      @LengthMeasurementHistoryConverter()
      required final List<LengthMeasurementHistory>
          lengthHeightMeasurementHistory,
      @LengthMeasurementHistoryConverter()
      final List<LengthMeasurementHistory>? headCircumferenceMeasurementHistory,
      @LengthMeasurementHistoryConverter()
      final List<LengthMeasurementHistory>?
          subscapularSkinfoldMeasurementHistory,
      @LengthMeasurementHistoryConverter()
      final List<LengthMeasurementHistory>? tricepsSkinfoldMeasurementHistory,
      @LengthMeasurementHistoryConverter()
      final List<LengthMeasurementHistory>? armCircumferenceMeasurementHistory})
      : _massMeasurementHistory = massMeasurementHistory,
        _lengthHeightMeasurementHistory = lengthHeightMeasurementHistory,
        _headCircumferenceMeasurementHistory =
            headCircumferenceMeasurementHistory,
        _subscapularSkinfoldMeasurementHistory =
            subscapularSkinfoldMeasurementHistory,
        _tricepsSkinfoldMeasurementHistory = tricepsSkinfoldMeasurementHistory,
        _armCircumferenceMeasurementHistory =
            armCircumferenceMeasurementHistory,
        super._();

  factory _$PersonSurveryImpl.fromJson(Map<String, dynamic> json) =>
      _$$PersonSurveryImplFromJson(json);

  @override
  final Person person;
  @override
  final MeasurementType measurementType;
  @override
  @JsonKey()
  final Precision? precision;
  final List<MassMeasurementHistory> _massMeasurementHistory;
  @override
  @MassMeasurementHistoryConverter()
  List<MassMeasurementHistory> get massMeasurementHistory {
    if (_massMeasurementHistory is EqualUnmodifiableListView)
      return _massMeasurementHistory;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_massMeasurementHistory);
  }

  final List<LengthMeasurementHistory> _lengthHeightMeasurementHistory;
  @override
  @LengthMeasurementHistoryConverter()
  List<LengthMeasurementHistory> get lengthHeightMeasurementHistory {
    if (_lengthHeightMeasurementHistory is EqualUnmodifiableListView)
      return _lengthHeightMeasurementHistory;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_lengthHeightMeasurementHistory);
  }

  final List<LengthMeasurementHistory>? _headCircumferenceMeasurementHistory;
  @override
  @LengthMeasurementHistoryConverter()
  List<LengthMeasurementHistory>? get headCircumferenceMeasurementHistory {
    final value = _headCircumferenceMeasurementHistory;
    if (value == null) return null;
    if (_headCircumferenceMeasurementHistory is EqualUnmodifiableListView)
      return _headCircumferenceMeasurementHistory;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<LengthMeasurementHistory>? _subscapularSkinfoldMeasurementHistory;
  @override
  @LengthMeasurementHistoryConverter()
  List<LengthMeasurementHistory>? get subscapularSkinfoldMeasurementHistory {
    final value = _subscapularSkinfoldMeasurementHistory;
    if (value == null) return null;
    if (_subscapularSkinfoldMeasurementHistory is EqualUnmodifiableListView)
      return _subscapularSkinfoldMeasurementHistory;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<LengthMeasurementHistory>? _tricepsSkinfoldMeasurementHistory;
  @override
  @LengthMeasurementHistoryConverter()
  List<LengthMeasurementHistory>? get tricepsSkinfoldMeasurementHistory {
    final value = _tricepsSkinfoldMeasurementHistory;
    if (value == null) return null;
    if (_tricepsSkinfoldMeasurementHistory is EqualUnmodifiableListView)
      return _tricepsSkinfoldMeasurementHistory;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<LengthMeasurementHistory>? _armCircumferenceMeasurementHistory;
  @override
  @LengthMeasurementHistoryConverter()
  List<LengthMeasurementHistory>? get armCircumferenceMeasurementHistory {
    final value = _armCircumferenceMeasurementHistory;
    if (value == null) return null;
    if (_armCircumferenceMeasurementHistory is EqualUnmodifiableListView)
      return _armCircumferenceMeasurementHistory;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'PersonSurvery(person: $person, measurementType: $measurementType, precision: $precision, massMeasurementHistory: $massMeasurementHistory, lengthHeightMeasurementHistory: $lengthHeightMeasurementHistory, headCircumferenceMeasurementHistory: $headCircumferenceMeasurementHistory, subscapularSkinfoldMeasurementHistory: $subscapularSkinfoldMeasurementHistory, tricepsSkinfoldMeasurementHistory: $tricepsSkinfoldMeasurementHistory, armCircumferenceMeasurementHistory: $armCircumferenceMeasurementHistory)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PersonSurveryImpl &&
            (identical(other.person, person) || other.person == person) &&
            (identical(other.measurementType, measurementType) ||
                other.measurementType == measurementType) &&
            (identical(other.precision, precision) ||
                other.precision == precision) &&
            const DeepCollectionEquality().equals(
                other._massMeasurementHistory, _massMeasurementHistory) &&
            const DeepCollectionEquality().equals(
                other._lengthHeightMeasurementHistory,
                _lengthHeightMeasurementHistory) &&
            const DeepCollectionEquality().equals(
                other._headCircumferenceMeasurementHistory,
                _headCircumferenceMeasurementHistory) &&
            const DeepCollectionEquality().equals(
                other._subscapularSkinfoldMeasurementHistory,
                _subscapularSkinfoldMeasurementHistory) &&
            const DeepCollectionEquality().equals(
                other._tricepsSkinfoldMeasurementHistory,
                _tricepsSkinfoldMeasurementHistory) &&
            const DeepCollectionEquality().equals(
                other._armCircumferenceMeasurementHistory,
                _armCircumferenceMeasurementHistory));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      person,
      measurementType,
      precision,
      const DeepCollectionEquality().hash(_massMeasurementHistory),
      const DeepCollectionEquality().hash(_lengthHeightMeasurementHistory),
      const DeepCollectionEquality().hash(_headCircumferenceMeasurementHistory),
      const DeepCollectionEquality()
          .hash(_subscapularSkinfoldMeasurementHistory),
      const DeepCollectionEquality().hash(_tricepsSkinfoldMeasurementHistory),
      const DeepCollectionEquality().hash(_armCircumferenceMeasurementHistory));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PersonSurveryImplCopyWith<_$PersonSurveryImpl> get copyWith =>
      __$$PersonSurveryImplCopyWithImpl<_$PersonSurveryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PersonSurveryImplToJson(
      this,
    );
  }
}

abstract class _PersonSurvery extends PersonSurvery {
  factory _PersonSurvery(
      {required final Person person,
      required final MeasurementType measurementType,
      final Precision? precision,
      @MassMeasurementHistoryConverter()
      required final List<MassMeasurementHistory> massMeasurementHistory,
      @LengthMeasurementHistoryConverter()
      required final List<LengthMeasurementHistory>
          lengthHeightMeasurementHistory,
      @LengthMeasurementHistoryConverter()
      final List<LengthMeasurementHistory>? headCircumferenceMeasurementHistory,
      @LengthMeasurementHistoryConverter()
      final List<LengthMeasurementHistory>?
          subscapularSkinfoldMeasurementHistory,
      @LengthMeasurementHistoryConverter()
      final List<LengthMeasurementHistory>? tricepsSkinfoldMeasurementHistory,
      @LengthMeasurementHistoryConverter()
      final List<LengthMeasurementHistory>?
          armCircumferenceMeasurementHistory}) = _$PersonSurveryImpl;
  _PersonSurvery._() : super._();

  factory _PersonSurvery.fromJson(Map<String, dynamic> json) =
      _$PersonSurveryImpl.fromJson;

  @override
  Person get person;
  @override
  MeasurementType get measurementType;
  @override
  Precision? get precision;
  @override
  @MassMeasurementHistoryConverter()
  List<MassMeasurementHistory> get massMeasurementHistory;
  @override
  @LengthMeasurementHistoryConverter()
  List<LengthMeasurementHistory> get lengthHeightMeasurementHistory;
  @override
  @LengthMeasurementHistoryConverter()
  List<LengthMeasurementHistory>? get headCircumferenceMeasurementHistory;
  @override
  @LengthMeasurementHistoryConverter()
  List<LengthMeasurementHistory>? get subscapularSkinfoldMeasurementHistory;
  @override
  @LengthMeasurementHistoryConverter()
  List<LengthMeasurementHistory>? get tricepsSkinfoldMeasurementHistory;
  @override
  @LengthMeasurementHistoryConverter()
  List<LengthMeasurementHistory>? get armCircumferenceMeasurementHistory;
  @override
  @JsonKey(ignore: true)
  _$$PersonSurveryImplCopyWith<_$PersonSurveryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SameDayMeasurement _$SameDayMeasurementFromJson(Map<String, dynamic> json) {
  return _SameDayMeasurement.fromJson(json);
}

/// @nodoc
mixin _$SameDayMeasurement {
  Date get date => throw _privateConstructorUsedError;
  @MassConverter()
  Mass get mass => throw _privateConstructorUsedError;
  Length get lengthHeight => throw _privateConstructorUsedError;
  bool? get isOedema => throw _privateConstructorUsedError;
  LengthHeigthMeasurementPosition? get measurementPosition =>
      throw _privateConstructorUsedError;
  @LengthConverter()
  Length? get headCircumferenceMeasurement =>
      throw _privateConstructorUsedError;
  @LengthConverter()
  Length? get subscapularSkinfoldMeasurement =>
      throw _privateConstructorUsedError;
  @LengthConverter()
  Length? get tricepsSkinfoldMeasurement => throw _privateConstructorUsedError;
  @LengthConverter()
  Length? get armCircumferenceMeasurement => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SameDayMeasurementCopyWith<SameDayMeasurement> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SameDayMeasurementCopyWith<$Res> {
  factory $SameDayMeasurementCopyWith(
          SameDayMeasurement value, $Res Function(SameDayMeasurement) then) =
      _$SameDayMeasurementCopyWithImpl<$Res, SameDayMeasurement>;
  @useResult
  $Res call(
      {Date date,
      @MassConverter() Mass mass,
      Length lengthHeight,
      bool? isOedema,
      LengthHeigthMeasurementPosition? measurementPosition,
      @LengthConverter() Length? headCircumferenceMeasurement,
      @LengthConverter() Length? subscapularSkinfoldMeasurement,
      @LengthConverter() Length? tricepsSkinfoldMeasurement,
      @LengthConverter() Length? armCircumferenceMeasurement});

  $DateCopyWith<$Res> get date;
}

/// @nodoc
class _$SameDayMeasurementCopyWithImpl<$Res, $Val extends SameDayMeasurement>
    implements $SameDayMeasurementCopyWith<$Res> {
  _$SameDayMeasurementCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? mass = null,
    Object? lengthHeight = null,
    Object? isOedema = freezed,
    Object? measurementPosition = freezed,
    Object? headCircumferenceMeasurement = freezed,
    Object? subscapularSkinfoldMeasurement = freezed,
    Object? tricepsSkinfoldMeasurement = freezed,
    Object? armCircumferenceMeasurement = freezed,
  }) {
    return _then(_value.copyWith(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as Date,
      mass: null == mass
          ? _value.mass
          : mass // ignore: cast_nullable_to_non_nullable
              as Mass,
      lengthHeight: null == lengthHeight
          ? _value.lengthHeight
          : lengthHeight // ignore: cast_nullable_to_non_nullable
              as Length,
      isOedema: freezed == isOedema
          ? _value.isOedema
          : isOedema // ignore: cast_nullable_to_non_nullable
              as bool?,
      measurementPosition: freezed == measurementPosition
          ? _value.measurementPosition
          : measurementPosition // ignore: cast_nullable_to_non_nullable
              as LengthHeigthMeasurementPosition?,
      headCircumferenceMeasurement: freezed == headCircumferenceMeasurement
          ? _value.headCircumferenceMeasurement
          : headCircumferenceMeasurement // ignore: cast_nullable_to_non_nullable
              as Length?,
      subscapularSkinfoldMeasurement: freezed == subscapularSkinfoldMeasurement
          ? _value.subscapularSkinfoldMeasurement
          : subscapularSkinfoldMeasurement // ignore: cast_nullable_to_non_nullable
              as Length?,
      tricepsSkinfoldMeasurement: freezed == tricepsSkinfoldMeasurement
          ? _value.tricepsSkinfoldMeasurement
          : tricepsSkinfoldMeasurement // ignore: cast_nullable_to_non_nullable
              as Length?,
      armCircumferenceMeasurement: freezed == armCircumferenceMeasurement
          ? _value.armCircumferenceMeasurement
          : armCircumferenceMeasurement // ignore: cast_nullable_to_non_nullable
              as Length?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DateCopyWith<$Res> get date {
    return $DateCopyWith<$Res>(_value.date, (value) {
      return _then(_value.copyWith(date: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SameDayMeasurementImplCopyWith<$Res>
    implements $SameDayMeasurementCopyWith<$Res> {
  factory _$$SameDayMeasurementImplCopyWith(_$SameDayMeasurementImpl value,
          $Res Function(_$SameDayMeasurementImpl) then) =
      __$$SameDayMeasurementImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Date date,
      @MassConverter() Mass mass,
      Length lengthHeight,
      bool? isOedema,
      LengthHeigthMeasurementPosition? measurementPosition,
      @LengthConverter() Length? headCircumferenceMeasurement,
      @LengthConverter() Length? subscapularSkinfoldMeasurement,
      @LengthConverter() Length? tricepsSkinfoldMeasurement,
      @LengthConverter() Length? armCircumferenceMeasurement});

  @override
  $DateCopyWith<$Res> get date;
}

/// @nodoc
class __$$SameDayMeasurementImplCopyWithImpl<$Res>
    extends _$SameDayMeasurementCopyWithImpl<$Res, _$SameDayMeasurementImpl>
    implements _$$SameDayMeasurementImplCopyWith<$Res> {
  __$$SameDayMeasurementImplCopyWithImpl(_$SameDayMeasurementImpl _value,
      $Res Function(_$SameDayMeasurementImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? mass = null,
    Object? lengthHeight = null,
    Object? isOedema = freezed,
    Object? measurementPosition = freezed,
    Object? headCircumferenceMeasurement = freezed,
    Object? subscapularSkinfoldMeasurement = freezed,
    Object? tricepsSkinfoldMeasurement = freezed,
    Object? armCircumferenceMeasurement = freezed,
  }) {
    return _then(_$SameDayMeasurementImpl(
      null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as Date,
      mass: null == mass
          ? _value.mass
          : mass // ignore: cast_nullable_to_non_nullable
              as Mass,
      lengthHeight: null == lengthHeight
          ? _value.lengthHeight
          : lengthHeight // ignore: cast_nullable_to_non_nullable
              as Length,
      isOedema: freezed == isOedema
          ? _value.isOedema
          : isOedema // ignore: cast_nullable_to_non_nullable
              as bool?,
      measurementPosition: freezed == measurementPosition
          ? _value.measurementPosition
          : measurementPosition // ignore: cast_nullable_to_non_nullable
              as LengthHeigthMeasurementPosition?,
      headCircumferenceMeasurement: freezed == headCircumferenceMeasurement
          ? _value.headCircumferenceMeasurement
          : headCircumferenceMeasurement // ignore: cast_nullable_to_non_nullable
              as Length?,
      subscapularSkinfoldMeasurement: freezed == subscapularSkinfoldMeasurement
          ? _value.subscapularSkinfoldMeasurement
          : subscapularSkinfoldMeasurement // ignore: cast_nullable_to_non_nullable
              as Length?,
      tricepsSkinfoldMeasurement: freezed == tricepsSkinfoldMeasurement
          ? _value.tricepsSkinfoldMeasurement
          : tricepsSkinfoldMeasurement // ignore: cast_nullable_to_non_nullable
              as Length?,
      armCircumferenceMeasurement: freezed == armCircumferenceMeasurement
          ? _value.armCircumferenceMeasurement
          : armCircumferenceMeasurement // ignore: cast_nullable_to_non_nullable
              as Length?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SameDayMeasurementImpl extends _SameDayMeasurement {
  _$SameDayMeasurementImpl(this.date,
      {@MassConverter() required this.mass,
      required this.lengthHeight,
      this.isOedema = false,
      this.measurementPosition = LengthHeigthMeasurementPosition.recumbent,
      @LengthConverter() this.headCircumferenceMeasurement,
      @LengthConverter() this.subscapularSkinfoldMeasurement,
      @LengthConverter() this.tricepsSkinfoldMeasurement,
      @LengthConverter() this.armCircumferenceMeasurement})
      : super._();

  factory _$SameDayMeasurementImpl.fromJson(Map<String, dynamic> json) =>
      _$$SameDayMeasurementImplFromJson(json);

  @override
  final Date date;
  @override
  @MassConverter()
  final Mass mass;
  @override
  final Length lengthHeight;
  @override
  @JsonKey()
  final bool? isOedema;
  @override
  @JsonKey()
  final LengthHeigthMeasurementPosition? measurementPosition;
  @override
  @LengthConverter()
  final Length? headCircumferenceMeasurement;
  @override
  @LengthConverter()
  final Length? subscapularSkinfoldMeasurement;
  @override
  @LengthConverter()
  final Length? tricepsSkinfoldMeasurement;
  @override
  @LengthConverter()
  final Length? armCircumferenceMeasurement;

  @override
  String toString() {
    return 'SameDayMeasurement(date: $date, mass: $mass, lengthHeight: $lengthHeight, isOedema: $isOedema, measurementPosition: $measurementPosition, headCircumferenceMeasurement: $headCircumferenceMeasurement, subscapularSkinfoldMeasurement: $subscapularSkinfoldMeasurement, tricepsSkinfoldMeasurement: $tricepsSkinfoldMeasurement, armCircumferenceMeasurement: $armCircumferenceMeasurement)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SameDayMeasurementImpl &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.mass, mass) || other.mass == mass) &&
            (identical(other.lengthHeight, lengthHeight) ||
                other.lengthHeight == lengthHeight) &&
            (identical(other.isOedema, isOedema) ||
                other.isOedema == isOedema) &&
            (identical(other.measurementPosition, measurementPosition) ||
                other.measurementPosition == measurementPosition) &&
            (identical(other.headCircumferenceMeasurement,
                    headCircumferenceMeasurement) ||
                other.headCircumferenceMeasurement ==
                    headCircumferenceMeasurement) &&
            (identical(other.subscapularSkinfoldMeasurement,
                    subscapularSkinfoldMeasurement) ||
                other.subscapularSkinfoldMeasurement ==
                    subscapularSkinfoldMeasurement) &&
            (identical(other.tricepsSkinfoldMeasurement,
                    tricepsSkinfoldMeasurement) ||
                other.tricepsSkinfoldMeasurement ==
                    tricepsSkinfoldMeasurement) &&
            (identical(other.armCircumferenceMeasurement,
                    armCircumferenceMeasurement) ||
                other.armCircumferenceMeasurement ==
                    armCircumferenceMeasurement));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      date,
      mass,
      lengthHeight,
      isOedema,
      measurementPosition,
      headCircumferenceMeasurement,
      subscapularSkinfoldMeasurement,
      tricepsSkinfoldMeasurement,
      armCircumferenceMeasurement);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SameDayMeasurementImplCopyWith<_$SameDayMeasurementImpl> get copyWith =>
      __$$SameDayMeasurementImplCopyWithImpl<_$SameDayMeasurementImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SameDayMeasurementImplToJson(
      this,
    );
  }
}

abstract class _SameDayMeasurement extends SameDayMeasurement {
  factory _SameDayMeasurement(final Date date,
          {@MassConverter() required final Mass mass,
          required final Length lengthHeight,
          final bool? isOedema,
          final LengthHeigthMeasurementPosition? measurementPosition,
          @LengthConverter() final Length? headCircumferenceMeasurement,
          @LengthConverter() final Length? subscapularSkinfoldMeasurement,
          @LengthConverter() final Length? tricepsSkinfoldMeasurement,
          @LengthConverter() final Length? armCircumferenceMeasurement}) =
      _$SameDayMeasurementImpl;
  _SameDayMeasurement._() : super._();

  factory _SameDayMeasurement.fromJson(Map<String, dynamic> json) =
      _$SameDayMeasurementImpl.fromJson;

  @override
  Date get date;
  @override
  @MassConverter()
  Mass get mass;
  @override
  Length get lengthHeight;
  @override
  bool? get isOedema;
  @override
  LengthHeigthMeasurementPosition? get measurementPosition;
  @override
  @LengthConverter()
  Length? get headCircumferenceMeasurement;
  @override
  @LengthConverter()
  Length? get subscapularSkinfoldMeasurement;
  @override
  @LengthConverter()
  Length? get tricepsSkinfoldMeasurement;
  @override
  @LengthConverter()
  Length? get armCircumferenceMeasurement;
  @override
  @JsonKey(ignore: true)
  _$$SameDayMeasurementImplCopyWith<_$SameDayMeasurementImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Person _$PersonFromJson(Map<String, dynamic> json) {
  return _Person.fromJson(json);
}

/// @nodoc
mixin _$Person {
  Sex get sex => throw _privateConstructorUsedError;
  @DateConverter()
  Date get dateOfBirth => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PersonCopyWith<Person> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PersonCopyWith<$Res> {
  factory $PersonCopyWith(Person value, $Res Function(Person) then) =
      _$PersonCopyWithImpl<$Res, Person>;
  @useResult
  $Res call(
      {Sex sex,
      @DateConverter() Date dateOfBirth,
      String? id,
      String? name,
      String? address});

  $DateCopyWith<$Res> get dateOfBirth;
}

/// @nodoc
class _$PersonCopyWithImpl<$Res, $Val extends Person>
    implements $PersonCopyWith<$Res> {
  _$PersonCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sex = null,
    Object? dateOfBirth = null,
    Object? id = freezed,
    Object? name = freezed,
    Object? address = freezed,
  }) {
    return _then(_value.copyWith(
      sex: null == sex
          ? _value.sex
          : sex // ignore: cast_nullable_to_non_nullable
              as Sex,
      dateOfBirth: null == dateOfBirth
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as Date,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
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
abstract class _$$PersonImplCopyWith<$Res> implements $PersonCopyWith<$Res> {
  factory _$$PersonImplCopyWith(
          _$PersonImpl value, $Res Function(_$PersonImpl) then) =
      __$$PersonImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Sex sex,
      @DateConverter() Date dateOfBirth,
      String? id,
      String? name,
      String? address});

  @override
  $DateCopyWith<$Res> get dateOfBirth;
}

/// @nodoc
class __$$PersonImplCopyWithImpl<$Res>
    extends _$PersonCopyWithImpl<$Res, _$PersonImpl>
    implements _$$PersonImplCopyWith<$Res> {
  __$$PersonImplCopyWithImpl(
      _$PersonImpl _value, $Res Function(_$PersonImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sex = null,
    Object? dateOfBirth = null,
    Object? id = freezed,
    Object? name = freezed,
    Object? address = freezed,
  }) {
    return _then(_$PersonImpl(
      sex: null == sex
          ? _value.sex
          : sex // ignore: cast_nullable_to_non_nullable
              as Sex,
      dateOfBirth: null == dateOfBirth
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as Date,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PersonImpl extends _Person {
  _$PersonImpl(
      {required this.sex,
      @DateConverter() required this.dateOfBirth,
      this.id,
      this.name,
      this.address})
      : super._();

  factory _$PersonImpl.fromJson(Map<String, dynamic> json) =>
      _$$PersonImplFromJson(json);

  @override
  final Sex sex;
  @override
  @DateConverter()
  final Date dateOfBirth;
  @override
  final String? id;
  @override
  final String? name;
  @override
  final String? address;

  @override
  String toString() {
    return 'Person(sex: $sex, dateOfBirth: $dateOfBirth, id: $id, name: $name, address: $address)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PersonImpl &&
            (identical(other.sex, sex) || other.sex == sex) &&
            (identical(other.dateOfBirth, dateOfBirth) ||
                other.dateOfBirth == dateOfBirth) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.address, address) || other.address == address));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, sex, dateOfBirth, id, name, address);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PersonImplCopyWith<_$PersonImpl> get copyWith =>
      __$$PersonImplCopyWithImpl<_$PersonImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PersonImplToJson(
      this,
    );
  }
}

abstract class _Person extends Person {
  factory _Person(
      {required final Sex sex,
      @DateConverter() required final Date dateOfBirth,
      final String? id,
      final String? name,
      final String? address}) = _$PersonImpl;
  _Person._() : super._();

  factory _Person.fromJson(Map<String, dynamic> json) = _$PersonImpl.fromJson;

  @override
  Sex get sex;
  @override
  @DateConverter()
  Date get dateOfBirth;
  @override
  String? get id;
  @override
  String? get name;
  @override
  String? get address;
  @override
  @JsonKey(ignore: true)
  _$$PersonImplCopyWith<_$PersonImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Survey {
  List<List<dynamic>> get surveyData => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SurveyCopyWith<Survey> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SurveyCopyWith<$Res> {
  factory $SurveyCopyWith(Survey value, $Res Function(Survey) then) =
      _$SurveyCopyWithImpl<$Res, Survey>;
  @useResult
  $Res call({List<List<dynamic>> surveyData});
}

/// @nodoc
class _$SurveyCopyWithImpl<$Res, $Val extends Survey>
    implements $SurveyCopyWith<$Res> {
  _$SurveyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? surveyData = null,
  }) {
    return _then(_value.copyWith(
      surveyData: null == surveyData
          ? _value.surveyData
          : surveyData // ignore: cast_nullable_to_non_nullable
              as List<List<dynamic>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SurveyImplCopyWith<$Res> implements $SurveyCopyWith<$Res> {
  factory _$$SurveyImplCopyWith(
          _$SurveyImpl value, $Res Function(_$SurveyImpl) then) =
      __$$SurveyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<List<dynamic>> surveyData});
}

/// @nodoc
class __$$SurveyImplCopyWithImpl<$Res>
    extends _$SurveyCopyWithImpl<$Res, _$SurveyImpl>
    implements _$$SurveyImplCopyWith<$Res> {
  __$$SurveyImplCopyWithImpl(
      _$SurveyImpl _value, $Res Function(_$SurveyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? surveyData = null,
  }) {
    return _then(_$SurveyImpl(
      null == surveyData
          ? _value._surveyData
          : surveyData // ignore: cast_nullable_to_non_nullable
              as List<List<dynamic>>,
    ));
  }
}

/// @nodoc

class _$SurveyImpl extends _Survey {
  _$SurveyImpl(final List<List<dynamic>> surveyData)
      : _surveyData = surveyData,
        super._();

  final List<List<dynamic>> _surveyData;
  @override
  List<List<dynamic>> get surveyData {
    if (_surveyData is EqualUnmodifiableListView) return _surveyData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_surveyData);
  }

  @override
  String toString() {
    return 'Survey(surveyData: $surveyData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SurveyImpl &&
            const DeepCollectionEquality()
                .equals(other._surveyData, _surveyData));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_surveyData));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SurveyImplCopyWith<_$SurveyImpl> get copyWith =>
      __$$SurveyImplCopyWithImpl<_$SurveyImpl>(this, _$identity);
}

abstract class _Survey extends Survey {
  factory _Survey(final List<List<dynamic>> surveyData) = _$SurveyImpl;
  _Survey._() : super._();

  @override
  List<List<dynamic>> get surveyData;
  @override
  @JsonKey(ignore: true)
  _$$SurveyImplCopyWith<_$SurveyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
