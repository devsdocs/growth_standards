// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bmi.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BodyMassIndex _$BodyMassIndexFromJson(Map<String, dynamic> json) {
  return _BodyMassIndex.fromJson(json);
}

/// @nodoc
mixin _$BodyMassIndex {
  Length get lengthHeight => throw _privateConstructorUsedError;
  Mass get weight => throw _privateConstructorUsedError;

  /// Serializes this BodyMassIndex to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BodyMassIndex
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BodyMassIndexCopyWith<BodyMassIndex> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BodyMassIndexCopyWith<$Res> {
  factory $BodyMassIndexCopyWith(
          BodyMassIndex value, $Res Function(BodyMassIndex) then) =
      _$BodyMassIndexCopyWithImpl<$Res, BodyMassIndex>;
  @useResult
  $Res call({Length lengthHeight, Mass weight});
}

/// @nodoc
class _$BodyMassIndexCopyWithImpl<$Res, $Val extends BodyMassIndex>
    implements $BodyMassIndexCopyWith<$Res> {
  _$BodyMassIndexCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BodyMassIndex
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lengthHeight = null,
    Object? weight = null,
  }) {
    return _then(_value.copyWith(
      lengthHeight: null == lengthHeight
          ? _value.lengthHeight
          : lengthHeight // ignore: cast_nullable_to_non_nullable
              as Length,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as Mass,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BodyMassIndexImplCopyWith<$Res>
    implements $BodyMassIndexCopyWith<$Res> {
  factory _$$BodyMassIndexImplCopyWith(
          _$BodyMassIndexImpl value, $Res Function(_$BodyMassIndexImpl) then) =
      __$$BodyMassIndexImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Length lengthHeight, Mass weight});
}

/// @nodoc
class __$$BodyMassIndexImplCopyWithImpl<$Res>
    extends _$BodyMassIndexCopyWithImpl<$Res, _$BodyMassIndexImpl>
    implements _$$BodyMassIndexImplCopyWith<$Res> {
  __$$BodyMassIndexImplCopyWithImpl(
      _$BodyMassIndexImpl _value, $Res Function(_$BodyMassIndexImpl) _then)
      : super(_value, _then);

  /// Create a copy of BodyMassIndex
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lengthHeight = null,
    Object? weight = null,
  }) {
    return _then(_$BodyMassIndexImpl(
      lengthHeight: null == lengthHeight
          ? _value.lengthHeight
          : lengthHeight // ignore: cast_nullable_to_non_nullable
              as Length,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as Mass,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BodyMassIndexImpl extends _BodyMassIndex {
  _$BodyMassIndexImpl({required this.lengthHeight, required this.weight})
      : super._();

  factory _$BodyMassIndexImpl.fromJson(Map<String, dynamic> json) =>
      _$$BodyMassIndexImplFromJson(json);

  @override
  final Length lengthHeight;
  @override
  final Mass weight;

  @override
  String toString() {
    return 'BodyMassIndex(lengthHeight: $lengthHeight, weight: $weight)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BodyMassIndexImpl &&
            (identical(other.lengthHeight, lengthHeight) ||
                other.lengthHeight == lengthHeight) &&
            (identical(other.weight, weight) || other.weight == weight));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, lengthHeight, weight);

  /// Create a copy of BodyMassIndex
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BodyMassIndexImplCopyWith<_$BodyMassIndexImpl> get copyWith =>
      __$$BodyMassIndexImplCopyWithImpl<_$BodyMassIndexImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BodyMassIndexImplToJson(
      this,
    );
  }
}

abstract class _BodyMassIndex extends BodyMassIndex {
  factory _BodyMassIndex(
      {required final Length lengthHeight,
      required final Mass weight}) = _$BodyMassIndexImpl;
  _BodyMassIndex._() : super._();

  factory _BodyMassIndex.fromJson(Map<String, dynamic> json) =
      _$BodyMassIndexImpl.fromJson;

  @override
  Length get lengthHeight;
  @override
  Mass get weight;

  /// Create a copy of BodyMassIndex
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BodyMassIndexImplCopyWith<_$BodyMassIndexImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
