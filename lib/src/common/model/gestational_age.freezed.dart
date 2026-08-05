// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'gestational_age.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GestationalAge {

 int get weeks; int get days;
/// Create a copy of GestationalAge
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GestationalAgeCopyWith<GestationalAge> get copyWith => _$GestationalAgeCopyWithImpl<GestationalAge>(this as GestationalAge, _$identity);

  /// Serializes this GestationalAge to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GestationalAge&&(identical(other.weeks, weeks) || other.weeks == weeks)&&(identical(other.days, days) || other.days == days));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,weeks,days);



}

/// @nodoc
abstract mixin class $GestationalAgeCopyWith<$Res>  {
  factory $GestationalAgeCopyWith(GestationalAge value, $Res Function(GestationalAge) _then) = _$GestationalAgeCopyWithImpl;
@useResult
$Res call({
 int weeks, int days
});




}
/// @nodoc
class _$GestationalAgeCopyWithImpl<$Res>
    implements $GestationalAgeCopyWith<$Res> {
  _$GestationalAgeCopyWithImpl(this._self, this._then);

  final GestationalAge _self;
  final $Res Function(GestationalAge) _then;

/// Create a copy of GestationalAge
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? weeks = null,Object? days = null,}) {
  return _then(_self.copyWith(
weeks: null == weeks ? _self.weeks : weeks // ignore: cast_nullable_to_non_nullable
as int,days: null == days ? _self.days : days // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [GestationalAge].
extension GestationalAgePatterns on GestationalAge {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GestationalAge value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GestationalAge() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GestationalAge value)  $default,){
final _that = this;
switch (_that) {
case _GestationalAge():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GestationalAge value)?  $default,){
final _that = this;
switch (_that) {
case _GestationalAge() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int weeks,  int days)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GestationalAge() when $default != null:
return $default(_that.weeks,_that.days);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int weeks,  int days)  $default,) {final _that = this;
switch (_that) {
case _GestationalAge():
return $default(_that.weeks,_that.days);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int weeks,  int days)?  $default,) {final _that = this;
switch (_that) {
case _GestationalAge() when $default != null:
return $default(_that.weeks,_that.days);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GestationalAge extends GestationalAge {
  const _GestationalAge({required this.weeks, this.days = 0}): assert(weeks >= 0, 'Gestational weeks must be ≥ 0'),assert(days >= 0 && days <= 6, 'Gestational days must be in 0..6'),super._();
  factory _GestationalAge.fromJson(Map<String, dynamic> json) => _$GestationalAgeFromJson(json);

@override final  int weeks;
@override@JsonKey() final  int days;

/// Create a copy of GestationalAge
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GestationalAgeCopyWith<_GestationalAge> get copyWith => __$GestationalAgeCopyWithImpl<_GestationalAge>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GestationalAgeToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GestationalAge&&(identical(other.weeks, weeks) || other.weeks == weeks)&&(identical(other.days, days) || other.days == days));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,weeks,days);



}

/// @nodoc
abstract mixin class _$GestationalAgeCopyWith<$Res> implements $GestationalAgeCopyWith<$Res> {
  factory _$GestationalAgeCopyWith(_GestationalAge value, $Res Function(_GestationalAge) _then) = __$GestationalAgeCopyWithImpl;
@override @useResult
$Res call({
 int weeks, int days
});




}
/// @nodoc
class __$GestationalAgeCopyWithImpl<$Res>
    implements _$GestationalAgeCopyWith<$Res> {
  __$GestationalAgeCopyWithImpl(this._self, this._then);

  final _GestationalAge _self;
  final $Res Function(_GestationalAge) _then;

/// Create a copy of GestationalAge
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? weeks = null,Object? days = null,}) {
  return _then(_GestationalAge(
weeks: null == weeks ? _self.weeks : weeks // ignore: cast_nullable_to_non_nullable
as int,days: null == days ? _self.days : days // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$PostmenstrualAge {

 int get weeks; int get days;
/// Create a copy of PostmenstrualAge
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PostmenstrualAgeCopyWith<PostmenstrualAge> get copyWith => _$PostmenstrualAgeCopyWithImpl<PostmenstrualAge>(this as PostmenstrualAge, _$identity);

  /// Serializes this PostmenstrualAge to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PostmenstrualAge&&(identical(other.weeks, weeks) || other.weeks == weeks)&&(identical(other.days, days) || other.days == days));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,weeks,days);



}

/// @nodoc
abstract mixin class $PostmenstrualAgeCopyWith<$Res>  {
  factory $PostmenstrualAgeCopyWith(PostmenstrualAge value, $Res Function(PostmenstrualAge) _then) = _$PostmenstrualAgeCopyWithImpl;
@useResult
$Res call({
 int weeks, int days
});




}
/// @nodoc
class _$PostmenstrualAgeCopyWithImpl<$Res>
    implements $PostmenstrualAgeCopyWith<$Res> {
  _$PostmenstrualAgeCopyWithImpl(this._self, this._then);

  final PostmenstrualAge _self;
  final $Res Function(PostmenstrualAge) _then;

/// Create a copy of PostmenstrualAge
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? weeks = null,Object? days = null,}) {
  return _then(_self.copyWith(
weeks: null == weeks ? _self.weeks : weeks // ignore: cast_nullable_to_non_nullable
as int,days: null == days ? _self.days : days // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [PostmenstrualAge].
extension PostmenstrualAgePatterns on PostmenstrualAge {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PostmenstrualAge value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PostmenstrualAge() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PostmenstrualAge value)  $default,){
final _that = this;
switch (_that) {
case _PostmenstrualAge():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PostmenstrualAge value)?  $default,){
final _that = this;
switch (_that) {
case _PostmenstrualAge() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int weeks,  int days)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PostmenstrualAge() when $default != null:
return $default(_that.weeks,_that.days);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int weeks,  int days)  $default,) {final _that = this;
switch (_that) {
case _PostmenstrualAge():
return $default(_that.weeks,_that.days);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int weeks,  int days)?  $default,) {final _that = this;
switch (_that) {
case _PostmenstrualAge() when $default != null:
return $default(_that.weeks,_that.days);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PostmenstrualAge extends PostmenstrualAge {
  const _PostmenstrualAge({required this.weeks, this.days = 0}): assert(weeks >= 0, 'Postmenstrual weeks must be ≥ 0'),assert(days >= 0 && days <= 6, 'Postmenstrual days must be in 0..6'),super._();
  factory _PostmenstrualAge.fromJson(Map<String, dynamic> json) => _$PostmenstrualAgeFromJson(json);

@override final  int weeks;
@override@JsonKey() final  int days;

/// Create a copy of PostmenstrualAge
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PostmenstrualAgeCopyWith<_PostmenstrualAge> get copyWith => __$PostmenstrualAgeCopyWithImpl<_PostmenstrualAge>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PostmenstrualAgeToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PostmenstrualAge&&(identical(other.weeks, weeks) || other.weeks == weeks)&&(identical(other.days, days) || other.days == days));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,weeks,days);



}

/// @nodoc
abstract mixin class _$PostmenstrualAgeCopyWith<$Res> implements $PostmenstrualAgeCopyWith<$Res> {
  factory _$PostmenstrualAgeCopyWith(_PostmenstrualAge value, $Res Function(_PostmenstrualAge) _then) = __$PostmenstrualAgeCopyWithImpl;
@override @useResult
$Res call({
 int weeks, int days
});




}
/// @nodoc
class __$PostmenstrualAgeCopyWithImpl<$Res>
    implements _$PostmenstrualAgeCopyWith<$Res> {
  __$PostmenstrualAgeCopyWithImpl(this._self, this._then);

  final _PostmenstrualAge _self;
  final $Res Function(_PostmenstrualAge) _then;

/// Create a copy of PostmenstrualAge
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? weeks = null,Object? days = null,}) {
  return _then(_PostmenstrualAge(
weeks: null == weeks ? _self.weeks : weeks // ignore: cast_nullable_to_non_nullable
as int,days: null == days ? _self.days : days // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
