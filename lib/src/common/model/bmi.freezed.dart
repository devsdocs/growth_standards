// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bmi.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BodyMassIndex {

 Length get lengthHeight; Mass get weight;
/// Create a copy of BodyMassIndex
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BodyMassIndexCopyWith<BodyMassIndex> get copyWith => _$BodyMassIndexCopyWithImpl<BodyMassIndex>(this as BodyMassIndex, _$identity);

  /// Serializes this BodyMassIndex to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BodyMassIndex&&(identical(other.lengthHeight, lengthHeight) || other.lengthHeight == lengthHeight)&&(identical(other.weight, weight) || other.weight == weight));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,lengthHeight,weight);

@override
String toString() {
  return 'BodyMassIndex(lengthHeight: $lengthHeight, weight: $weight)';
}


}

/// @nodoc
abstract mixin class $BodyMassIndexCopyWith<$Res>  {
  factory $BodyMassIndexCopyWith(BodyMassIndex value, $Res Function(BodyMassIndex) _then) = _$BodyMassIndexCopyWithImpl;
@useResult
$Res call({
 Length lengthHeight, Mass weight
});




}
/// @nodoc
class _$BodyMassIndexCopyWithImpl<$Res>
    implements $BodyMassIndexCopyWith<$Res> {
  _$BodyMassIndexCopyWithImpl(this._self, this._then);

  final BodyMassIndex _self;
  final $Res Function(BodyMassIndex) _then;

/// Create a copy of BodyMassIndex
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? lengthHeight = null,Object? weight = null,}) {
  return _then(_self.copyWith(
lengthHeight: null == lengthHeight ? _self.lengthHeight : lengthHeight // ignore: cast_nullable_to_non_nullable
as Length,weight: null == weight ? _self.weight : weight // ignore: cast_nullable_to_non_nullable
as Mass,
  ));
}

}


/// Adds pattern-matching-related methods to [BodyMassIndex].
extension BodyMassIndexPatterns on BodyMassIndex {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BodyMassIndex value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BodyMassIndex() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BodyMassIndex value)  $default,){
final _that = this;
switch (_that) {
case _BodyMassIndex():
return $default(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BodyMassIndex value)?  $default,){
final _that = this;
switch (_that) {
case _BodyMassIndex() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Length lengthHeight,  Mass weight)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BodyMassIndex() when $default != null:
return $default(_that.lengthHeight,_that.weight);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Length lengthHeight,  Mass weight)  $default,) {final _that = this;
switch (_that) {
case _BodyMassIndex():
return $default(_that.lengthHeight,_that.weight);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Length lengthHeight,  Mass weight)?  $default,) {final _that = this;
switch (_that) {
case _BodyMassIndex() when $default != null:
return $default(_that.lengthHeight,_that.weight);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BodyMassIndex extends BodyMassIndex {
   _BodyMassIndex({required this.lengthHeight, required this.weight}): super._();
  factory _BodyMassIndex.fromJson(Map<String, dynamic> json) => _$BodyMassIndexFromJson(json);

@override final  Length lengthHeight;
@override final  Mass weight;

/// Create a copy of BodyMassIndex
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BodyMassIndexCopyWith<_BodyMassIndex> get copyWith => __$BodyMassIndexCopyWithImpl<_BodyMassIndex>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BodyMassIndexToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BodyMassIndex&&(identical(other.lengthHeight, lengthHeight) || other.lengthHeight == lengthHeight)&&(identical(other.weight, weight) || other.weight == weight));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,lengthHeight,weight);

@override
String toString() {
  return 'BodyMassIndex(lengthHeight: $lengthHeight, weight: $weight)';
}


}

/// @nodoc
abstract mixin class _$BodyMassIndexCopyWith<$Res> implements $BodyMassIndexCopyWith<$Res> {
  factory _$BodyMassIndexCopyWith(_BodyMassIndex value, $Res Function(_BodyMassIndex) _then) = __$BodyMassIndexCopyWithImpl;
@override @useResult
$Res call({
 Length lengthHeight, Mass weight
});




}
/// @nodoc
class __$BodyMassIndexCopyWithImpl<$Res>
    implements _$BodyMassIndexCopyWith<$Res> {
  __$BodyMassIndexCopyWithImpl(this._self, this._then);

  final _BodyMassIndex _self;
  final $Res Function(_BodyMassIndex) _then;

/// Create a copy of BodyMassIndex
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? lengthHeight = null,Object? weight = null,}) {
  return _then(_BodyMassIndex(
lengthHeight: null == lengthHeight ? _self.lengthHeight : lengthHeight // ignore: cast_nullable_to_non_nullable
as Length,weight: null == weight ? _self.weight : weight // ignore: cast_nullable_to_non_nullable
as Mass,
  ));
}


}

// dart format on
