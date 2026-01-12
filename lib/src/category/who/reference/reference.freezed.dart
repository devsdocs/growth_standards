// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reference.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$WHOGrowthReferenceBodyMassIndexMeasurement {

 num get value;
/// Create a copy of WHOGrowthReferenceBodyMassIndexMeasurement
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WHOGrowthReferenceBodyMassIndexMeasurementCopyWith<WHOGrowthReferenceBodyMassIndexMeasurement> get copyWith => _$WHOGrowthReferenceBodyMassIndexMeasurementCopyWithImpl<WHOGrowthReferenceBodyMassIndexMeasurement>(this as WHOGrowthReferenceBodyMassIndexMeasurement, _$identity);

  /// Serializes this WHOGrowthReferenceBodyMassIndexMeasurement to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WHOGrowthReferenceBodyMassIndexMeasurement&&(identical(other.value, value) || other.value == value));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,value);

@override
String toString() {
  return 'WHOGrowthReferenceBodyMassIndexMeasurement(value: $value)';
}


}

/// @nodoc
abstract mixin class $WHOGrowthReferenceBodyMassIndexMeasurementCopyWith<$Res>  {
  factory $WHOGrowthReferenceBodyMassIndexMeasurementCopyWith(WHOGrowthReferenceBodyMassIndexMeasurement value, $Res Function(WHOGrowthReferenceBodyMassIndexMeasurement) _then) = _$WHOGrowthReferenceBodyMassIndexMeasurementCopyWithImpl;
@useResult
$Res call({
 num value
});




}
/// @nodoc
class _$WHOGrowthReferenceBodyMassIndexMeasurementCopyWithImpl<$Res>
    implements $WHOGrowthReferenceBodyMassIndexMeasurementCopyWith<$Res> {
  _$WHOGrowthReferenceBodyMassIndexMeasurementCopyWithImpl(this._self, this._then);

  final WHOGrowthReferenceBodyMassIndexMeasurement _self;
  final $Res Function(WHOGrowthReferenceBodyMassIndexMeasurement) _then;

/// Create a copy of WHOGrowthReferenceBodyMassIndexMeasurement
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? value = null,}) {
  return _then(_self.copyWith(
value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as num,
  ));
}

}


/// Adds pattern-matching-related methods to [WHOGrowthReferenceBodyMassIndexMeasurement].
extension WHOGrowthReferenceBodyMassIndexMeasurementPatterns on WHOGrowthReferenceBodyMassIndexMeasurement {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WHOGrowthReferenceBodyMassIndexMeasurement value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WHOGrowthReferenceBodyMassIndexMeasurement() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WHOGrowthReferenceBodyMassIndexMeasurement value)  $default,){
final _that = this;
switch (_that) {
case _WHOGrowthReferenceBodyMassIndexMeasurement():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WHOGrowthReferenceBodyMassIndexMeasurement value)?  $default,){
final _that = this;
switch (_that) {
case _WHOGrowthReferenceBodyMassIndexMeasurement() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( num value)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WHOGrowthReferenceBodyMassIndexMeasurement() when $default != null:
return $default(_that.value);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( num value)  $default,) {final _that = this;
switch (_that) {
case _WHOGrowthReferenceBodyMassIndexMeasurement():
return $default(_that.value);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( num value)?  $default,) {final _that = this;
switch (_that) {
case _WHOGrowthReferenceBodyMassIndexMeasurement() when $default != null:
return $default(_that.value);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WHOGrowthReferenceBodyMassIndexMeasurement extends WHOGrowthReferenceBodyMassIndexMeasurement {
   _WHOGrowthReferenceBodyMassIndexMeasurement(this.value): super._();
  factory _WHOGrowthReferenceBodyMassIndexMeasurement.fromJson(Map<String, dynamic> json) => _$WHOGrowthReferenceBodyMassIndexMeasurementFromJson(json);

@override final  num value;

/// Create a copy of WHOGrowthReferenceBodyMassIndexMeasurement
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WHOGrowthReferenceBodyMassIndexMeasurementCopyWith<_WHOGrowthReferenceBodyMassIndexMeasurement> get copyWith => __$WHOGrowthReferenceBodyMassIndexMeasurementCopyWithImpl<_WHOGrowthReferenceBodyMassIndexMeasurement>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WHOGrowthReferenceBodyMassIndexMeasurementToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WHOGrowthReferenceBodyMassIndexMeasurement&&(identical(other.value, value) || other.value == value));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,value);

@override
String toString() {
  return 'WHOGrowthReferenceBodyMassIndexMeasurement(value: $value)';
}


}

/// @nodoc
abstract mixin class _$WHOGrowthReferenceBodyMassIndexMeasurementCopyWith<$Res> implements $WHOGrowthReferenceBodyMassIndexMeasurementCopyWith<$Res> {
  factory _$WHOGrowthReferenceBodyMassIndexMeasurementCopyWith(_WHOGrowthReferenceBodyMassIndexMeasurement value, $Res Function(_WHOGrowthReferenceBodyMassIndexMeasurement) _then) = __$WHOGrowthReferenceBodyMassIndexMeasurementCopyWithImpl;
@override @useResult
$Res call({
 num value
});




}
/// @nodoc
class __$WHOGrowthReferenceBodyMassIndexMeasurementCopyWithImpl<$Res>
    implements _$WHOGrowthReferenceBodyMassIndexMeasurementCopyWith<$Res> {
  __$WHOGrowthReferenceBodyMassIndexMeasurementCopyWithImpl(this._self, this._then);

  final _WHOGrowthReferenceBodyMassIndexMeasurement _self;
  final $Res Function(_WHOGrowthReferenceBodyMassIndexMeasurement) _then;

/// Create a copy of WHOGrowthReferenceBodyMassIndexMeasurement
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? value = null,}) {
  return _then(_WHOGrowthReferenceBodyMassIndexMeasurement(
null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as num,
  ));
}


}


/// @nodoc
mixin _$WHOGrowthReferenceBodyMassIndexForAge {

 Sex get sex; Age get age; WHOGrowthReferenceBodyMassIndexMeasurement get bodyMassIndexMeasurement;
/// Create a copy of WHOGrowthReferenceBodyMassIndexForAge
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WHOGrowthReferenceBodyMassIndexForAgeCopyWith<WHOGrowthReferenceBodyMassIndexForAge> get copyWith => _$WHOGrowthReferenceBodyMassIndexForAgeCopyWithImpl<WHOGrowthReferenceBodyMassIndexForAge>(this as WHOGrowthReferenceBodyMassIndexForAge, _$identity);

  /// Serializes this WHOGrowthReferenceBodyMassIndexForAge to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WHOGrowthReferenceBodyMassIndexForAge&&(identical(other.sex, sex) || other.sex == sex)&&(identical(other.age, age) || other.age == age)&&(identical(other.bodyMassIndexMeasurement, bodyMassIndexMeasurement) || other.bodyMassIndexMeasurement == bodyMassIndexMeasurement));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,sex,age,bodyMassIndexMeasurement);

@override
String toString() {
  return 'WHOGrowthReferenceBodyMassIndexForAge(sex: $sex, age: $age, bodyMassIndexMeasurement: $bodyMassIndexMeasurement)';
}


}

/// @nodoc
abstract mixin class $WHOGrowthReferenceBodyMassIndexForAgeCopyWith<$Res>  {
  factory $WHOGrowthReferenceBodyMassIndexForAgeCopyWith(WHOGrowthReferenceBodyMassIndexForAge value, $Res Function(WHOGrowthReferenceBodyMassIndexForAge) _then) = _$WHOGrowthReferenceBodyMassIndexForAgeCopyWithImpl;
@useResult
$Res call({
 Sex sex, Age age, WHOGrowthReferenceBodyMassIndexMeasurement bodyMassIndexMeasurement
});


$AgeCopyWith<$Res> get age;$WHOGrowthReferenceBodyMassIndexMeasurementCopyWith<$Res> get bodyMassIndexMeasurement;

}
/// @nodoc
class _$WHOGrowthReferenceBodyMassIndexForAgeCopyWithImpl<$Res>
    implements $WHOGrowthReferenceBodyMassIndexForAgeCopyWith<$Res> {
  _$WHOGrowthReferenceBodyMassIndexForAgeCopyWithImpl(this._self, this._then);

  final WHOGrowthReferenceBodyMassIndexForAge _self;
  final $Res Function(WHOGrowthReferenceBodyMassIndexForAge) _then;

/// Create a copy of WHOGrowthReferenceBodyMassIndexForAge
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? sex = null,Object? age = null,Object? bodyMassIndexMeasurement = null,}) {
  return _then(_self.copyWith(
sex: null == sex ? _self.sex : sex // ignore: cast_nullable_to_non_nullable
as Sex,age: null == age ? _self.age : age // ignore: cast_nullable_to_non_nullable
as Age,bodyMassIndexMeasurement: null == bodyMassIndexMeasurement ? _self.bodyMassIndexMeasurement : bodyMassIndexMeasurement // ignore: cast_nullable_to_non_nullable
as WHOGrowthReferenceBodyMassIndexMeasurement,
  ));
}
/// Create a copy of WHOGrowthReferenceBodyMassIndexForAge
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AgeCopyWith<$Res> get age {
  
  return $AgeCopyWith<$Res>(_self.age, (value) {
    return _then(_self.copyWith(age: value));
  });
}/// Create a copy of WHOGrowthReferenceBodyMassIndexForAge
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WHOGrowthReferenceBodyMassIndexMeasurementCopyWith<$Res> get bodyMassIndexMeasurement {
  
  return $WHOGrowthReferenceBodyMassIndexMeasurementCopyWith<$Res>(_self.bodyMassIndexMeasurement, (value) {
    return _then(_self.copyWith(bodyMassIndexMeasurement: value));
  });
}
}


/// Adds pattern-matching-related methods to [WHOGrowthReferenceBodyMassIndexForAge].
extension WHOGrowthReferenceBodyMassIndexForAgePatterns on WHOGrowthReferenceBodyMassIndexForAge {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WHOGrowthReferenceBodyMassIndexForAge value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WHOGrowthReferenceBodyMassIndexForAge() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WHOGrowthReferenceBodyMassIndexForAge value)  $default,){
final _that = this;
switch (_that) {
case _WHOGrowthReferenceBodyMassIndexForAge():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WHOGrowthReferenceBodyMassIndexForAge value)?  $default,){
final _that = this;
switch (_that) {
case _WHOGrowthReferenceBodyMassIndexForAge() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Sex sex,  Age age,  WHOGrowthReferenceBodyMassIndexMeasurement bodyMassIndexMeasurement)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WHOGrowthReferenceBodyMassIndexForAge() when $default != null:
return $default(_that.sex,_that.age,_that.bodyMassIndexMeasurement);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Sex sex,  Age age,  WHOGrowthReferenceBodyMassIndexMeasurement bodyMassIndexMeasurement)  $default,) {final _that = this;
switch (_that) {
case _WHOGrowthReferenceBodyMassIndexForAge():
return $default(_that.sex,_that.age,_that.bodyMassIndexMeasurement);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Sex sex,  Age age,  WHOGrowthReferenceBodyMassIndexMeasurement bodyMassIndexMeasurement)?  $default,) {final _that = this;
switch (_that) {
case _WHOGrowthReferenceBodyMassIndexForAge() when $default != null:
return $default(_that.sex,_that.age,_that.bodyMassIndexMeasurement);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WHOGrowthReferenceBodyMassIndexForAge extends WHOGrowthReferenceBodyMassIndexForAge {
   _WHOGrowthReferenceBodyMassIndexForAge({required this.sex, required this.age, required this.bodyMassIndexMeasurement}): super._();
  factory _WHOGrowthReferenceBodyMassIndexForAge.fromJson(Map<String, dynamic> json) => _$WHOGrowthReferenceBodyMassIndexForAgeFromJson(json);

@override final  Sex sex;
@override final  Age age;
@override final  WHOGrowthReferenceBodyMassIndexMeasurement bodyMassIndexMeasurement;

/// Create a copy of WHOGrowthReferenceBodyMassIndexForAge
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WHOGrowthReferenceBodyMassIndexForAgeCopyWith<_WHOGrowthReferenceBodyMassIndexForAge> get copyWith => __$WHOGrowthReferenceBodyMassIndexForAgeCopyWithImpl<_WHOGrowthReferenceBodyMassIndexForAge>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WHOGrowthReferenceBodyMassIndexForAgeToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WHOGrowthReferenceBodyMassIndexForAge&&(identical(other.sex, sex) || other.sex == sex)&&(identical(other.age, age) || other.age == age)&&(identical(other.bodyMassIndexMeasurement, bodyMassIndexMeasurement) || other.bodyMassIndexMeasurement == bodyMassIndexMeasurement));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,sex,age,bodyMassIndexMeasurement);

@override
String toString() {
  return 'WHOGrowthReferenceBodyMassIndexForAge(sex: $sex, age: $age, bodyMassIndexMeasurement: $bodyMassIndexMeasurement)';
}


}

/// @nodoc
abstract mixin class _$WHOGrowthReferenceBodyMassIndexForAgeCopyWith<$Res> implements $WHOGrowthReferenceBodyMassIndexForAgeCopyWith<$Res> {
  factory _$WHOGrowthReferenceBodyMassIndexForAgeCopyWith(_WHOGrowthReferenceBodyMassIndexForAge value, $Res Function(_WHOGrowthReferenceBodyMassIndexForAge) _then) = __$WHOGrowthReferenceBodyMassIndexForAgeCopyWithImpl;
@override @useResult
$Res call({
 Sex sex, Age age, WHOGrowthReferenceBodyMassIndexMeasurement bodyMassIndexMeasurement
});


@override $AgeCopyWith<$Res> get age;@override $WHOGrowthReferenceBodyMassIndexMeasurementCopyWith<$Res> get bodyMassIndexMeasurement;

}
/// @nodoc
class __$WHOGrowthReferenceBodyMassIndexForAgeCopyWithImpl<$Res>
    implements _$WHOGrowthReferenceBodyMassIndexForAgeCopyWith<$Res> {
  __$WHOGrowthReferenceBodyMassIndexForAgeCopyWithImpl(this._self, this._then);

  final _WHOGrowthReferenceBodyMassIndexForAge _self;
  final $Res Function(_WHOGrowthReferenceBodyMassIndexForAge) _then;

/// Create a copy of WHOGrowthReferenceBodyMassIndexForAge
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? sex = null,Object? age = null,Object? bodyMassIndexMeasurement = null,}) {
  return _then(_WHOGrowthReferenceBodyMassIndexForAge(
sex: null == sex ? _self.sex : sex // ignore: cast_nullable_to_non_nullable
as Sex,age: null == age ? _self.age : age // ignore: cast_nullable_to_non_nullable
as Age,bodyMassIndexMeasurement: null == bodyMassIndexMeasurement ? _self.bodyMassIndexMeasurement : bodyMassIndexMeasurement // ignore: cast_nullable_to_non_nullable
as WHOGrowthReferenceBodyMassIndexMeasurement,
  ));
}

/// Create a copy of WHOGrowthReferenceBodyMassIndexForAge
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AgeCopyWith<$Res> get age {
  
  return $AgeCopyWith<$Res>(_self.age, (value) {
    return _then(_self.copyWith(age: value));
  });
}/// Create a copy of WHOGrowthReferenceBodyMassIndexForAge
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WHOGrowthReferenceBodyMassIndexMeasurementCopyWith<$Res> get bodyMassIndexMeasurement {
  
  return $WHOGrowthReferenceBodyMassIndexMeasurementCopyWith<$Res>(_self.bodyMassIndexMeasurement, (value) {
    return _then(_self.copyWith(bodyMassIndexMeasurement: value));
  });
}
}


/// @nodoc
mixin _$WHOGrowthReferenceHeightForAge {

 Sex get sex; Age get age; Length get lengthHeight;
/// Create a copy of WHOGrowthReferenceHeightForAge
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WHOGrowthReferenceHeightForAgeCopyWith<WHOGrowthReferenceHeightForAge> get copyWith => _$WHOGrowthReferenceHeightForAgeCopyWithImpl<WHOGrowthReferenceHeightForAge>(this as WHOGrowthReferenceHeightForAge, _$identity);

  /// Serializes this WHOGrowthReferenceHeightForAge to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WHOGrowthReferenceHeightForAge&&(identical(other.sex, sex) || other.sex == sex)&&(identical(other.age, age) || other.age == age)&&(identical(other.lengthHeight, lengthHeight) || other.lengthHeight == lengthHeight));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,sex,age,lengthHeight);

@override
String toString() {
  return 'WHOGrowthReferenceHeightForAge(sex: $sex, age: $age, lengthHeight: $lengthHeight)';
}


}

/// @nodoc
abstract mixin class $WHOGrowthReferenceHeightForAgeCopyWith<$Res>  {
  factory $WHOGrowthReferenceHeightForAgeCopyWith(WHOGrowthReferenceHeightForAge value, $Res Function(WHOGrowthReferenceHeightForAge) _then) = _$WHOGrowthReferenceHeightForAgeCopyWithImpl;
@useResult
$Res call({
 Sex sex, Age age, Length lengthHeight
});


$AgeCopyWith<$Res> get age;

}
/// @nodoc
class _$WHOGrowthReferenceHeightForAgeCopyWithImpl<$Res>
    implements $WHOGrowthReferenceHeightForAgeCopyWith<$Res> {
  _$WHOGrowthReferenceHeightForAgeCopyWithImpl(this._self, this._then);

  final WHOGrowthReferenceHeightForAge _self;
  final $Res Function(WHOGrowthReferenceHeightForAge) _then;

/// Create a copy of WHOGrowthReferenceHeightForAge
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? sex = null,Object? age = null,Object? lengthHeight = null,}) {
  return _then(_self.copyWith(
sex: null == sex ? _self.sex : sex // ignore: cast_nullable_to_non_nullable
as Sex,age: null == age ? _self.age : age // ignore: cast_nullable_to_non_nullable
as Age,lengthHeight: null == lengthHeight ? _self.lengthHeight : lengthHeight // ignore: cast_nullable_to_non_nullable
as Length,
  ));
}
/// Create a copy of WHOGrowthReferenceHeightForAge
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AgeCopyWith<$Res> get age {
  
  return $AgeCopyWith<$Res>(_self.age, (value) {
    return _then(_self.copyWith(age: value));
  });
}
}


/// Adds pattern-matching-related methods to [WHOGrowthReferenceHeightForAge].
extension WHOGrowthReferenceHeightForAgePatterns on WHOGrowthReferenceHeightForAge {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WHOGrowthReferenceHeightForAge value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WHOGrowthReferenceHeightForAge() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WHOGrowthReferenceHeightForAge value)  $default,){
final _that = this;
switch (_that) {
case _WHOGrowthReferenceHeightForAge():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WHOGrowthReferenceHeightForAge value)?  $default,){
final _that = this;
switch (_that) {
case _WHOGrowthReferenceHeightForAge() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Sex sex,  Age age,  Length lengthHeight)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WHOGrowthReferenceHeightForAge() when $default != null:
return $default(_that.sex,_that.age,_that.lengthHeight);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Sex sex,  Age age,  Length lengthHeight)  $default,) {final _that = this;
switch (_that) {
case _WHOGrowthReferenceHeightForAge():
return $default(_that.sex,_that.age,_that.lengthHeight);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Sex sex,  Age age,  Length lengthHeight)?  $default,) {final _that = this;
switch (_that) {
case _WHOGrowthReferenceHeightForAge() when $default != null:
return $default(_that.sex,_that.age,_that.lengthHeight);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WHOGrowthReferenceHeightForAge extends WHOGrowthReferenceHeightForAge {
   _WHOGrowthReferenceHeightForAge({required this.sex, required this.age, required this.lengthHeight}): super._();
  factory _WHOGrowthReferenceHeightForAge.fromJson(Map<String, dynamic> json) => _$WHOGrowthReferenceHeightForAgeFromJson(json);

@override final  Sex sex;
@override final  Age age;
@override final  Length lengthHeight;

/// Create a copy of WHOGrowthReferenceHeightForAge
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WHOGrowthReferenceHeightForAgeCopyWith<_WHOGrowthReferenceHeightForAge> get copyWith => __$WHOGrowthReferenceHeightForAgeCopyWithImpl<_WHOGrowthReferenceHeightForAge>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WHOGrowthReferenceHeightForAgeToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WHOGrowthReferenceHeightForAge&&(identical(other.sex, sex) || other.sex == sex)&&(identical(other.age, age) || other.age == age)&&(identical(other.lengthHeight, lengthHeight) || other.lengthHeight == lengthHeight));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,sex,age,lengthHeight);

@override
String toString() {
  return 'WHOGrowthReferenceHeightForAge(sex: $sex, age: $age, lengthHeight: $lengthHeight)';
}


}

/// @nodoc
abstract mixin class _$WHOGrowthReferenceHeightForAgeCopyWith<$Res> implements $WHOGrowthReferenceHeightForAgeCopyWith<$Res> {
  factory _$WHOGrowthReferenceHeightForAgeCopyWith(_WHOGrowthReferenceHeightForAge value, $Res Function(_WHOGrowthReferenceHeightForAge) _then) = __$WHOGrowthReferenceHeightForAgeCopyWithImpl;
@override @useResult
$Res call({
 Sex sex, Age age, Length lengthHeight
});


@override $AgeCopyWith<$Res> get age;

}
/// @nodoc
class __$WHOGrowthReferenceHeightForAgeCopyWithImpl<$Res>
    implements _$WHOGrowthReferenceHeightForAgeCopyWith<$Res> {
  __$WHOGrowthReferenceHeightForAgeCopyWithImpl(this._self, this._then);

  final _WHOGrowthReferenceHeightForAge _self;
  final $Res Function(_WHOGrowthReferenceHeightForAge) _then;

/// Create a copy of WHOGrowthReferenceHeightForAge
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? sex = null,Object? age = null,Object? lengthHeight = null,}) {
  return _then(_WHOGrowthReferenceHeightForAge(
sex: null == sex ? _self.sex : sex // ignore: cast_nullable_to_non_nullable
as Sex,age: null == age ? _self.age : age // ignore: cast_nullable_to_non_nullable
as Age,lengthHeight: null == lengthHeight ? _self.lengthHeight : lengthHeight // ignore: cast_nullable_to_non_nullable
as Length,
  ));
}

/// Create a copy of WHOGrowthReferenceHeightForAge
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
mixin _$WHOGrowthReferenceWeightForAge {

 Sex get sex; Age get age; Mass get weight;
/// Create a copy of WHOGrowthReferenceWeightForAge
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WHOGrowthReferenceWeightForAgeCopyWith<WHOGrowthReferenceWeightForAge> get copyWith => _$WHOGrowthReferenceWeightForAgeCopyWithImpl<WHOGrowthReferenceWeightForAge>(this as WHOGrowthReferenceWeightForAge, _$identity);

  /// Serializes this WHOGrowthReferenceWeightForAge to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WHOGrowthReferenceWeightForAge&&(identical(other.sex, sex) || other.sex == sex)&&(identical(other.age, age) || other.age == age)&&(identical(other.weight, weight) || other.weight == weight));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,sex,age,weight);

@override
String toString() {
  return 'WHOGrowthReferenceWeightForAge(sex: $sex, age: $age, weight: $weight)';
}


}

/// @nodoc
abstract mixin class $WHOGrowthReferenceWeightForAgeCopyWith<$Res>  {
  factory $WHOGrowthReferenceWeightForAgeCopyWith(WHOGrowthReferenceWeightForAge value, $Res Function(WHOGrowthReferenceWeightForAge) _then) = _$WHOGrowthReferenceWeightForAgeCopyWithImpl;
@useResult
$Res call({
 Sex sex, Age age, Mass weight
});


$AgeCopyWith<$Res> get age;

}
/// @nodoc
class _$WHOGrowthReferenceWeightForAgeCopyWithImpl<$Res>
    implements $WHOGrowthReferenceWeightForAgeCopyWith<$Res> {
  _$WHOGrowthReferenceWeightForAgeCopyWithImpl(this._self, this._then);

  final WHOGrowthReferenceWeightForAge _self;
  final $Res Function(WHOGrowthReferenceWeightForAge) _then;

/// Create a copy of WHOGrowthReferenceWeightForAge
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? sex = null,Object? age = null,Object? weight = null,}) {
  return _then(_self.copyWith(
sex: null == sex ? _self.sex : sex // ignore: cast_nullable_to_non_nullable
as Sex,age: null == age ? _self.age : age // ignore: cast_nullable_to_non_nullable
as Age,weight: null == weight ? _self.weight : weight // ignore: cast_nullable_to_non_nullable
as Mass,
  ));
}
/// Create a copy of WHOGrowthReferenceWeightForAge
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AgeCopyWith<$Res> get age {
  
  return $AgeCopyWith<$Res>(_self.age, (value) {
    return _then(_self.copyWith(age: value));
  });
}
}


/// Adds pattern-matching-related methods to [WHOGrowthReferenceWeightForAge].
extension WHOGrowthReferenceWeightForAgePatterns on WHOGrowthReferenceWeightForAge {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WHOGrowthReferenceWeightForAge value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WHOGrowthReferenceWeightForAge() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WHOGrowthReferenceWeightForAge value)  $default,){
final _that = this;
switch (_that) {
case _WHOGrowthReferenceWeightForAge():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WHOGrowthReferenceWeightForAge value)?  $default,){
final _that = this;
switch (_that) {
case _WHOGrowthReferenceWeightForAge() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Sex sex,  Age age,  Mass weight)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WHOGrowthReferenceWeightForAge() when $default != null:
return $default(_that.sex,_that.age,_that.weight);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Sex sex,  Age age,  Mass weight)  $default,) {final _that = this;
switch (_that) {
case _WHOGrowthReferenceWeightForAge():
return $default(_that.sex,_that.age,_that.weight);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Sex sex,  Age age,  Mass weight)?  $default,) {final _that = this;
switch (_that) {
case _WHOGrowthReferenceWeightForAge() when $default != null:
return $default(_that.sex,_that.age,_that.weight);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WHOGrowthReferenceWeightForAge extends WHOGrowthReferenceWeightForAge {
   _WHOGrowthReferenceWeightForAge({required this.sex, required this.age, required this.weight}): super._();
  factory _WHOGrowthReferenceWeightForAge.fromJson(Map<String, dynamic> json) => _$WHOGrowthReferenceWeightForAgeFromJson(json);

@override final  Sex sex;
@override final  Age age;
@override final  Mass weight;

/// Create a copy of WHOGrowthReferenceWeightForAge
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WHOGrowthReferenceWeightForAgeCopyWith<_WHOGrowthReferenceWeightForAge> get copyWith => __$WHOGrowthReferenceWeightForAgeCopyWithImpl<_WHOGrowthReferenceWeightForAge>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WHOGrowthReferenceWeightForAgeToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WHOGrowthReferenceWeightForAge&&(identical(other.sex, sex) || other.sex == sex)&&(identical(other.age, age) || other.age == age)&&(identical(other.weight, weight) || other.weight == weight));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,sex,age,weight);

@override
String toString() {
  return 'WHOGrowthReferenceWeightForAge(sex: $sex, age: $age, weight: $weight)';
}


}

/// @nodoc
abstract mixin class _$WHOGrowthReferenceWeightForAgeCopyWith<$Res> implements $WHOGrowthReferenceWeightForAgeCopyWith<$Res> {
  factory _$WHOGrowthReferenceWeightForAgeCopyWith(_WHOGrowthReferenceWeightForAge value, $Res Function(_WHOGrowthReferenceWeightForAge) _then) = __$WHOGrowthReferenceWeightForAgeCopyWithImpl;
@override @useResult
$Res call({
 Sex sex, Age age, Mass weight
});


@override $AgeCopyWith<$Res> get age;

}
/// @nodoc
class __$WHOGrowthReferenceWeightForAgeCopyWithImpl<$Res>
    implements _$WHOGrowthReferenceWeightForAgeCopyWith<$Res> {
  __$WHOGrowthReferenceWeightForAgeCopyWithImpl(this._self, this._then);

  final _WHOGrowthReferenceWeightForAge _self;
  final $Res Function(_WHOGrowthReferenceWeightForAge) _then;

/// Create a copy of WHOGrowthReferenceWeightForAge
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? sex = null,Object? age = null,Object? weight = null,}) {
  return _then(_WHOGrowthReferenceWeightForAge(
sex: null == sex ? _self.sex : sex // ignore: cast_nullable_to_non_nullable
as Sex,age: null == age ? _self.age : age // ignore: cast_nullable_to_non_nullable
as Age,weight: null == weight ? _self.weight : weight // ignore: cast_nullable_to_non_nullable
as Mass,
  ));
}

/// Create a copy of WHOGrowthReferenceWeightForAge
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
