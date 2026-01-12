// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cdc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
CDCBodyMassIndexMeasurement _$CDCBodyMassIndexMeasurementFromJson(
  Map<String, dynamic> json
) {
    return _GrowthReferenceBodyMassIndexMeasurement.fromJson(
      json
    );
}

/// @nodoc
mixin _$CDCBodyMassIndexMeasurement {

 num get value;
/// Create a copy of CDCBodyMassIndexMeasurement
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CDCBodyMassIndexMeasurementCopyWith<CDCBodyMassIndexMeasurement> get copyWith => _$CDCBodyMassIndexMeasurementCopyWithImpl<CDCBodyMassIndexMeasurement>(this as CDCBodyMassIndexMeasurement, _$identity);

  /// Serializes this CDCBodyMassIndexMeasurement to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CDCBodyMassIndexMeasurement&&(identical(other.value, value) || other.value == value));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,value);

@override
String toString() {
  return 'CDCBodyMassIndexMeasurement(value: $value)';
}


}

/// @nodoc
abstract mixin class $CDCBodyMassIndexMeasurementCopyWith<$Res>  {
  factory $CDCBodyMassIndexMeasurementCopyWith(CDCBodyMassIndexMeasurement value, $Res Function(CDCBodyMassIndexMeasurement) _then) = _$CDCBodyMassIndexMeasurementCopyWithImpl;
@useResult
$Res call({
 num value
});




}
/// @nodoc
class _$CDCBodyMassIndexMeasurementCopyWithImpl<$Res>
    implements $CDCBodyMassIndexMeasurementCopyWith<$Res> {
  _$CDCBodyMassIndexMeasurementCopyWithImpl(this._self, this._then);

  final CDCBodyMassIndexMeasurement _self;
  final $Res Function(CDCBodyMassIndexMeasurement) _then;

/// Create a copy of CDCBodyMassIndexMeasurement
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? value = null,}) {
  return _then(_self.copyWith(
value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as num,
  ));
}

}


/// Adds pattern-matching-related methods to [CDCBodyMassIndexMeasurement].
extension CDCBodyMassIndexMeasurementPatterns on CDCBodyMassIndexMeasurement {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GrowthReferenceBodyMassIndexMeasurement value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GrowthReferenceBodyMassIndexMeasurement() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GrowthReferenceBodyMassIndexMeasurement value)  $default,){
final _that = this;
switch (_that) {
case _GrowthReferenceBodyMassIndexMeasurement():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GrowthReferenceBodyMassIndexMeasurement value)?  $default,){
final _that = this;
switch (_that) {
case _GrowthReferenceBodyMassIndexMeasurement() when $default != null:
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
case _GrowthReferenceBodyMassIndexMeasurement() when $default != null:
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
case _GrowthReferenceBodyMassIndexMeasurement():
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
case _GrowthReferenceBodyMassIndexMeasurement() when $default != null:
return $default(_that.value);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GrowthReferenceBodyMassIndexMeasurement extends CDCBodyMassIndexMeasurement {
   _GrowthReferenceBodyMassIndexMeasurement(this.value): super._();
  factory _GrowthReferenceBodyMassIndexMeasurement.fromJson(Map<String, dynamic> json) => _$GrowthReferenceBodyMassIndexMeasurementFromJson(json);

@override final  num value;

/// Create a copy of CDCBodyMassIndexMeasurement
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GrowthReferenceBodyMassIndexMeasurementCopyWith<_GrowthReferenceBodyMassIndexMeasurement> get copyWith => __$GrowthReferenceBodyMassIndexMeasurementCopyWithImpl<_GrowthReferenceBodyMassIndexMeasurement>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GrowthReferenceBodyMassIndexMeasurementToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GrowthReferenceBodyMassIndexMeasurement&&(identical(other.value, value) || other.value == value));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,value);

@override
String toString() {
  return 'CDCBodyMassIndexMeasurement(value: $value)';
}


}

/// @nodoc
abstract mixin class _$GrowthReferenceBodyMassIndexMeasurementCopyWith<$Res> implements $CDCBodyMassIndexMeasurementCopyWith<$Res> {
  factory _$GrowthReferenceBodyMassIndexMeasurementCopyWith(_GrowthReferenceBodyMassIndexMeasurement value, $Res Function(_GrowthReferenceBodyMassIndexMeasurement) _then) = __$GrowthReferenceBodyMassIndexMeasurementCopyWithImpl;
@override @useResult
$Res call({
 num value
});




}
/// @nodoc
class __$GrowthReferenceBodyMassIndexMeasurementCopyWithImpl<$Res>
    implements _$GrowthReferenceBodyMassIndexMeasurementCopyWith<$Res> {
  __$GrowthReferenceBodyMassIndexMeasurementCopyWithImpl(this._self, this._then);

  final _GrowthReferenceBodyMassIndexMeasurement _self;
  final $Res Function(_GrowthReferenceBodyMassIndexMeasurement) _then;

/// Create a copy of CDCBodyMassIndexMeasurement
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? value = null,}) {
  return _then(_GrowthReferenceBodyMassIndexMeasurement(
null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as num,
  ));
}


}

CDCBodyMassIndexForAge _$CDCBodyMassIndexForAgeFromJson(
  Map<String, dynamic> json
) {
    return _GrowthReferenceBodyMassIndexForAge.fromJson(
      json
    );
}

/// @nodoc
mixin _$CDCBodyMassIndexForAge {

 Sex get sex; Age get age; CDCBodyMassIndexMeasurement get bodyMassIndexMeasurement;
/// Create a copy of CDCBodyMassIndexForAge
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CDCBodyMassIndexForAgeCopyWith<CDCBodyMassIndexForAge> get copyWith => _$CDCBodyMassIndexForAgeCopyWithImpl<CDCBodyMassIndexForAge>(this as CDCBodyMassIndexForAge, _$identity);

  /// Serializes this CDCBodyMassIndexForAge to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CDCBodyMassIndexForAge&&(identical(other.sex, sex) || other.sex == sex)&&(identical(other.age, age) || other.age == age)&&(identical(other.bodyMassIndexMeasurement, bodyMassIndexMeasurement) || other.bodyMassIndexMeasurement == bodyMassIndexMeasurement));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,sex,age,bodyMassIndexMeasurement);

@override
String toString() {
  return 'CDCBodyMassIndexForAge(sex: $sex, age: $age, bodyMassIndexMeasurement: $bodyMassIndexMeasurement)';
}


}

/// @nodoc
abstract mixin class $CDCBodyMassIndexForAgeCopyWith<$Res>  {
  factory $CDCBodyMassIndexForAgeCopyWith(CDCBodyMassIndexForAge value, $Res Function(CDCBodyMassIndexForAge) _then) = _$CDCBodyMassIndexForAgeCopyWithImpl;
@useResult
$Res call({
 Sex sex, Age age, CDCBodyMassIndexMeasurement bodyMassIndexMeasurement
});


$AgeCopyWith<$Res> get age;$CDCBodyMassIndexMeasurementCopyWith<$Res> get bodyMassIndexMeasurement;

}
/// @nodoc
class _$CDCBodyMassIndexForAgeCopyWithImpl<$Res>
    implements $CDCBodyMassIndexForAgeCopyWith<$Res> {
  _$CDCBodyMassIndexForAgeCopyWithImpl(this._self, this._then);

  final CDCBodyMassIndexForAge _self;
  final $Res Function(CDCBodyMassIndexForAge) _then;

/// Create a copy of CDCBodyMassIndexForAge
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? sex = null,Object? age = null,Object? bodyMassIndexMeasurement = null,}) {
  return _then(_self.copyWith(
sex: null == sex ? _self.sex : sex // ignore: cast_nullable_to_non_nullable
as Sex,age: null == age ? _self.age : age // ignore: cast_nullable_to_non_nullable
as Age,bodyMassIndexMeasurement: null == bodyMassIndexMeasurement ? _self.bodyMassIndexMeasurement : bodyMassIndexMeasurement // ignore: cast_nullable_to_non_nullable
as CDCBodyMassIndexMeasurement,
  ));
}
/// Create a copy of CDCBodyMassIndexForAge
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AgeCopyWith<$Res> get age {
  
  return $AgeCopyWith<$Res>(_self.age, (value) {
    return _then(_self.copyWith(age: value));
  });
}/// Create a copy of CDCBodyMassIndexForAge
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CDCBodyMassIndexMeasurementCopyWith<$Res> get bodyMassIndexMeasurement {
  
  return $CDCBodyMassIndexMeasurementCopyWith<$Res>(_self.bodyMassIndexMeasurement, (value) {
    return _then(_self.copyWith(bodyMassIndexMeasurement: value));
  });
}
}


/// Adds pattern-matching-related methods to [CDCBodyMassIndexForAge].
extension CDCBodyMassIndexForAgePatterns on CDCBodyMassIndexForAge {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GrowthReferenceBodyMassIndexForAge value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GrowthReferenceBodyMassIndexForAge() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GrowthReferenceBodyMassIndexForAge value)  $default,){
final _that = this;
switch (_that) {
case _GrowthReferenceBodyMassIndexForAge():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GrowthReferenceBodyMassIndexForAge value)?  $default,){
final _that = this;
switch (_that) {
case _GrowthReferenceBodyMassIndexForAge() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Sex sex,  Age age,  CDCBodyMassIndexMeasurement bodyMassIndexMeasurement)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GrowthReferenceBodyMassIndexForAge() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Sex sex,  Age age,  CDCBodyMassIndexMeasurement bodyMassIndexMeasurement)  $default,) {final _that = this;
switch (_that) {
case _GrowthReferenceBodyMassIndexForAge():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Sex sex,  Age age,  CDCBodyMassIndexMeasurement bodyMassIndexMeasurement)?  $default,) {final _that = this;
switch (_that) {
case _GrowthReferenceBodyMassIndexForAge() when $default != null:
return $default(_that.sex,_that.age,_that.bodyMassIndexMeasurement);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GrowthReferenceBodyMassIndexForAge extends CDCBodyMassIndexForAge {
   _GrowthReferenceBodyMassIndexForAge({required this.sex, required this.age, required this.bodyMassIndexMeasurement}): super._();
  factory _GrowthReferenceBodyMassIndexForAge.fromJson(Map<String, dynamic> json) => _$GrowthReferenceBodyMassIndexForAgeFromJson(json);

@override final  Sex sex;
@override final  Age age;
@override final  CDCBodyMassIndexMeasurement bodyMassIndexMeasurement;

/// Create a copy of CDCBodyMassIndexForAge
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GrowthReferenceBodyMassIndexForAgeCopyWith<_GrowthReferenceBodyMassIndexForAge> get copyWith => __$GrowthReferenceBodyMassIndexForAgeCopyWithImpl<_GrowthReferenceBodyMassIndexForAge>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GrowthReferenceBodyMassIndexForAgeToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GrowthReferenceBodyMassIndexForAge&&(identical(other.sex, sex) || other.sex == sex)&&(identical(other.age, age) || other.age == age)&&(identical(other.bodyMassIndexMeasurement, bodyMassIndexMeasurement) || other.bodyMassIndexMeasurement == bodyMassIndexMeasurement));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,sex,age,bodyMassIndexMeasurement);

@override
String toString() {
  return 'CDCBodyMassIndexForAge(sex: $sex, age: $age, bodyMassIndexMeasurement: $bodyMassIndexMeasurement)';
}


}

/// @nodoc
abstract mixin class _$GrowthReferenceBodyMassIndexForAgeCopyWith<$Res> implements $CDCBodyMassIndexForAgeCopyWith<$Res> {
  factory _$GrowthReferenceBodyMassIndexForAgeCopyWith(_GrowthReferenceBodyMassIndexForAge value, $Res Function(_GrowthReferenceBodyMassIndexForAge) _then) = __$GrowthReferenceBodyMassIndexForAgeCopyWithImpl;
@override @useResult
$Res call({
 Sex sex, Age age, CDCBodyMassIndexMeasurement bodyMassIndexMeasurement
});


@override $AgeCopyWith<$Res> get age;@override $CDCBodyMassIndexMeasurementCopyWith<$Res> get bodyMassIndexMeasurement;

}
/// @nodoc
class __$GrowthReferenceBodyMassIndexForAgeCopyWithImpl<$Res>
    implements _$GrowthReferenceBodyMassIndexForAgeCopyWith<$Res> {
  __$GrowthReferenceBodyMassIndexForAgeCopyWithImpl(this._self, this._then);

  final _GrowthReferenceBodyMassIndexForAge _self;
  final $Res Function(_GrowthReferenceBodyMassIndexForAge) _then;

/// Create a copy of CDCBodyMassIndexForAge
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? sex = null,Object? age = null,Object? bodyMassIndexMeasurement = null,}) {
  return _then(_GrowthReferenceBodyMassIndexForAge(
sex: null == sex ? _self.sex : sex // ignore: cast_nullable_to_non_nullable
as Sex,age: null == age ? _self.age : age // ignore: cast_nullable_to_non_nullable
as Age,bodyMassIndexMeasurement: null == bodyMassIndexMeasurement ? _self.bodyMassIndexMeasurement : bodyMassIndexMeasurement // ignore: cast_nullable_to_non_nullable
as CDCBodyMassIndexMeasurement,
  ));
}

/// Create a copy of CDCBodyMassIndexForAge
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AgeCopyWith<$Res> get age {
  
  return $AgeCopyWith<$Res>(_self.age, (value) {
    return _then(_self.copyWith(age: value));
  });
}/// Create a copy of CDCBodyMassIndexForAge
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CDCBodyMassIndexMeasurementCopyWith<$Res> get bodyMassIndexMeasurement {
  
  return $CDCBodyMassIndexMeasurementCopyWith<$Res>(_self.bodyMassIndexMeasurement, (value) {
    return _then(_self.copyWith(bodyMassIndexMeasurement: value));
  });
}
}

CDCInfantHeadCircumferenceForAge _$CDCInfantHeadCircumferenceForAgeFromJson(
  Map<String, dynamic> json
) {
    return _HeadCircumferenceForAge.fromJson(
      json
    );
}

/// @nodoc
mixin _$CDCInfantHeadCircumferenceForAge {

 Sex get sex; Age get age; Length get measurementResult;
/// Create a copy of CDCInfantHeadCircumferenceForAge
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CDCInfantHeadCircumferenceForAgeCopyWith<CDCInfantHeadCircumferenceForAge> get copyWith => _$CDCInfantHeadCircumferenceForAgeCopyWithImpl<CDCInfantHeadCircumferenceForAge>(this as CDCInfantHeadCircumferenceForAge, _$identity);

  /// Serializes this CDCInfantHeadCircumferenceForAge to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CDCInfantHeadCircumferenceForAge&&(identical(other.sex, sex) || other.sex == sex)&&(identical(other.age, age) || other.age == age)&&(identical(other.measurementResult, measurementResult) || other.measurementResult == measurementResult));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,sex,age,measurementResult);

@override
String toString() {
  return 'CDCInfantHeadCircumferenceForAge(sex: $sex, age: $age, measurementResult: $measurementResult)';
}


}

/// @nodoc
abstract mixin class $CDCInfantHeadCircumferenceForAgeCopyWith<$Res>  {
  factory $CDCInfantHeadCircumferenceForAgeCopyWith(CDCInfantHeadCircumferenceForAge value, $Res Function(CDCInfantHeadCircumferenceForAge) _then) = _$CDCInfantHeadCircumferenceForAgeCopyWithImpl;
@useResult
$Res call({
 Sex sex, Age age, Length measurementResult
});


$AgeCopyWith<$Res> get age;

}
/// @nodoc
class _$CDCInfantHeadCircumferenceForAgeCopyWithImpl<$Res>
    implements $CDCInfantHeadCircumferenceForAgeCopyWith<$Res> {
  _$CDCInfantHeadCircumferenceForAgeCopyWithImpl(this._self, this._then);

  final CDCInfantHeadCircumferenceForAge _self;
  final $Res Function(CDCInfantHeadCircumferenceForAge) _then;

/// Create a copy of CDCInfantHeadCircumferenceForAge
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? sex = null,Object? age = null,Object? measurementResult = null,}) {
  return _then(_self.copyWith(
sex: null == sex ? _self.sex : sex // ignore: cast_nullable_to_non_nullable
as Sex,age: null == age ? _self.age : age // ignore: cast_nullable_to_non_nullable
as Age,measurementResult: null == measurementResult ? _self.measurementResult : measurementResult // ignore: cast_nullable_to_non_nullable
as Length,
  ));
}
/// Create a copy of CDCInfantHeadCircumferenceForAge
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AgeCopyWith<$Res> get age {
  
  return $AgeCopyWith<$Res>(_self.age, (value) {
    return _then(_self.copyWith(age: value));
  });
}
}


/// Adds pattern-matching-related methods to [CDCInfantHeadCircumferenceForAge].
extension CDCInfantHeadCircumferenceForAgePatterns on CDCInfantHeadCircumferenceForAge {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HeadCircumferenceForAge value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HeadCircumferenceForAge() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HeadCircumferenceForAge value)  $default,){
final _that = this;
switch (_that) {
case _HeadCircumferenceForAge():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HeadCircumferenceForAge value)?  $default,){
final _that = this;
switch (_that) {
case _HeadCircumferenceForAge() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Sex sex,  Age age,  Length measurementResult)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HeadCircumferenceForAge() when $default != null:
return $default(_that.sex,_that.age,_that.measurementResult);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Sex sex,  Age age,  Length measurementResult)  $default,) {final _that = this;
switch (_that) {
case _HeadCircumferenceForAge():
return $default(_that.sex,_that.age,_that.measurementResult);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Sex sex,  Age age,  Length measurementResult)?  $default,) {final _that = this;
switch (_that) {
case _HeadCircumferenceForAge() when $default != null:
return $default(_that.sex,_that.age,_that.measurementResult);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _HeadCircumferenceForAge extends CDCInfantHeadCircumferenceForAge {
   _HeadCircumferenceForAge({required this.sex, required this.age, required this.measurementResult}): super._();
  factory _HeadCircumferenceForAge.fromJson(Map<String, dynamic> json) => _$HeadCircumferenceForAgeFromJson(json);

@override final  Sex sex;
@override final  Age age;
@override final  Length measurementResult;

/// Create a copy of CDCInfantHeadCircumferenceForAge
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HeadCircumferenceForAgeCopyWith<_HeadCircumferenceForAge> get copyWith => __$HeadCircumferenceForAgeCopyWithImpl<_HeadCircumferenceForAge>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$HeadCircumferenceForAgeToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HeadCircumferenceForAge&&(identical(other.sex, sex) || other.sex == sex)&&(identical(other.age, age) || other.age == age)&&(identical(other.measurementResult, measurementResult) || other.measurementResult == measurementResult));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,sex,age,measurementResult);

@override
String toString() {
  return 'CDCInfantHeadCircumferenceForAge(sex: $sex, age: $age, measurementResult: $measurementResult)';
}


}

/// @nodoc
abstract mixin class _$HeadCircumferenceForAgeCopyWith<$Res> implements $CDCInfantHeadCircumferenceForAgeCopyWith<$Res> {
  factory _$HeadCircumferenceForAgeCopyWith(_HeadCircumferenceForAge value, $Res Function(_HeadCircumferenceForAge) _then) = __$HeadCircumferenceForAgeCopyWithImpl;
@override @useResult
$Res call({
 Sex sex, Age age, Length measurementResult
});


@override $AgeCopyWith<$Res> get age;

}
/// @nodoc
class __$HeadCircumferenceForAgeCopyWithImpl<$Res>
    implements _$HeadCircumferenceForAgeCopyWith<$Res> {
  __$HeadCircumferenceForAgeCopyWithImpl(this._self, this._then);

  final _HeadCircumferenceForAge _self;
  final $Res Function(_HeadCircumferenceForAge) _then;

/// Create a copy of CDCInfantHeadCircumferenceForAge
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? sex = null,Object? age = null,Object? measurementResult = null,}) {
  return _then(_HeadCircumferenceForAge(
sex: null == sex ? _self.sex : sex // ignore: cast_nullable_to_non_nullable
as Sex,age: null == age ? _self.age : age // ignore: cast_nullable_to_non_nullable
as Age,measurementResult: null == measurementResult ? _self.measurementResult : measurementResult // ignore: cast_nullable_to_non_nullable
as Length,
  ));
}

/// Create a copy of CDCInfantHeadCircumferenceForAge
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AgeCopyWith<$Res> get age {
  
  return $AgeCopyWith<$Res>(_self.age, (value) {
    return _then(_self.copyWith(age: value));
  });
}
}

CDCInfantLengthForAge _$CDCInfantLengthForAgeFromJson(
  Map<String, dynamic> json
) {
    return _LengthForAge.fromJson(
      json
    );
}

/// @nodoc
mixin _$CDCInfantLengthForAge {

 Sex get sex; Age get age; Length get lengthHeight; LengthHeightMeasurementPosition get measure;
/// Create a copy of CDCInfantLengthForAge
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CDCInfantLengthForAgeCopyWith<CDCInfantLengthForAge> get copyWith => _$CDCInfantLengthForAgeCopyWithImpl<CDCInfantLengthForAge>(this as CDCInfantLengthForAge, _$identity);

  /// Serializes this CDCInfantLengthForAge to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CDCInfantLengthForAge&&(identical(other.sex, sex) || other.sex == sex)&&(identical(other.age, age) || other.age == age)&&(identical(other.lengthHeight, lengthHeight) || other.lengthHeight == lengthHeight)&&(identical(other.measure, measure) || other.measure == measure));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,sex,age,lengthHeight,measure);

@override
String toString() {
  return 'CDCInfantLengthForAge(sex: $sex, age: $age, lengthHeight: $lengthHeight, measure: $measure)';
}


}

/// @nodoc
abstract mixin class $CDCInfantLengthForAgeCopyWith<$Res>  {
  factory $CDCInfantLengthForAgeCopyWith(CDCInfantLengthForAge value, $Res Function(CDCInfantLengthForAge) _then) = _$CDCInfantLengthForAgeCopyWithImpl;
@useResult
$Res call({
 Sex sex, Age age, Length lengthHeight, LengthHeightMeasurementPosition measure
});


$AgeCopyWith<$Res> get age;

}
/// @nodoc
class _$CDCInfantLengthForAgeCopyWithImpl<$Res>
    implements $CDCInfantLengthForAgeCopyWith<$Res> {
  _$CDCInfantLengthForAgeCopyWithImpl(this._self, this._then);

  final CDCInfantLengthForAge _self;
  final $Res Function(CDCInfantLengthForAge) _then;

/// Create a copy of CDCInfantLengthForAge
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? sex = null,Object? age = null,Object? lengthHeight = null,Object? measure = null,}) {
  return _then(_self.copyWith(
sex: null == sex ? _self.sex : sex // ignore: cast_nullable_to_non_nullable
as Sex,age: null == age ? _self.age : age // ignore: cast_nullable_to_non_nullable
as Age,lengthHeight: null == lengthHeight ? _self.lengthHeight : lengthHeight // ignore: cast_nullable_to_non_nullable
as Length,measure: null == measure ? _self.measure : measure // ignore: cast_nullable_to_non_nullable
as LengthHeightMeasurementPosition,
  ));
}
/// Create a copy of CDCInfantLengthForAge
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AgeCopyWith<$Res> get age {
  
  return $AgeCopyWith<$Res>(_self.age, (value) {
    return _then(_self.copyWith(age: value));
  });
}
}


/// Adds pattern-matching-related methods to [CDCInfantLengthForAge].
extension CDCInfantLengthForAgePatterns on CDCInfantLengthForAge {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LengthForAge value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LengthForAge() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LengthForAge value)  $default,){
final _that = this;
switch (_that) {
case _LengthForAge():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LengthForAge value)?  $default,){
final _that = this;
switch (_that) {
case _LengthForAge() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Sex sex,  Age age,  Length lengthHeight,  LengthHeightMeasurementPosition measure)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LengthForAge() when $default != null:
return $default(_that.sex,_that.age,_that.lengthHeight,_that.measure);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Sex sex,  Age age,  Length lengthHeight,  LengthHeightMeasurementPosition measure)  $default,) {final _that = this;
switch (_that) {
case _LengthForAge():
return $default(_that.sex,_that.age,_that.lengthHeight,_that.measure);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Sex sex,  Age age,  Length lengthHeight,  LengthHeightMeasurementPosition measure)?  $default,) {final _that = this;
switch (_that) {
case _LengthForAge() when $default != null:
return $default(_that.sex,_that.age,_that.lengthHeight,_that.measure);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LengthForAge extends CDCInfantLengthForAge {
   _LengthForAge({required this.sex, required this.age, required this.lengthHeight, required this.measure}): super._();
  factory _LengthForAge.fromJson(Map<String, dynamic> json) => _$LengthForAgeFromJson(json);

@override final  Sex sex;
@override final  Age age;
@override final  Length lengthHeight;
@override final  LengthHeightMeasurementPosition measure;

/// Create a copy of CDCInfantLengthForAge
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LengthForAgeCopyWith<_LengthForAge> get copyWith => __$LengthForAgeCopyWithImpl<_LengthForAge>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LengthForAgeToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LengthForAge&&(identical(other.sex, sex) || other.sex == sex)&&(identical(other.age, age) || other.age == age)&&(identical(other.lengthHeight, lengthHeight) || other.lengthHeight == lengthHeight)&&(identical(other.measure, measure) || other.measure == measure));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,sex,age,lengthHeight,measure);

@override
String toString() {
  return 'CDCInfantLengthForAge(sex: $sex, age: $age, lengthHeight: $lengthHeight, measure: $measure)';
}


}

/// @nodoc
abstract mixin class _$LengthForAgeCopyWith<$Res> implements $CDCInfantLengthForAgeCopyWith<$Res> {
  factory _$LengthForAgeCopyWith(_LengthForAge value, $Res Function(_LengthForAge) _then) = __$LengthForAgeCopyWithImpl;
@override @useResult
$Res call({
 Sex sex, Age age, Length lengthHeight, LengthHeightMeasurementPosition measure
});


@override $AgeCopyWith<$Res> get age;

}
/// @nodoc
class __$LengthForAgeCopyWithImpl<$Res>
    implements _$LengthForAgeCopyWith<$Res> {
  __$LengthForAgeCopyWithImpl(this._self, this._then);

  final _LengthForAge _self;
  final $Res Function(_LengthForAge) _then;

/// Create a copy of CDCInfantLengthForAge
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? sex = null,Object? age = null,Object? lengthHeight = null,Object? measure = null,}) {
  return _then(_LengthForAge(
sex: null == sex ? _self.sex : sex // ignore: cast_nullable_to_non_nullable
as Sex,age: null == age ? _self.age : age // ignore: cast_nullable_to_non_nullable
as Age,lengthHeight: null == lengthHeight ? _self.lengthHeight : lengthHeight // ignore: cast_nullable_to_non_nullable
as Length,measure: null == measure ? _self.measure : measure // ignore: cast_nullable_to_non_nullable
as LengthHeightMeasurementPosition,
  ));
}

/// Create a copy of CDCInfantLengthForAge
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AgeCopyWith<$Res> get age {
  
  return $AgeCopyWith<$Res>(_self.age, (value) {
    return _then(_self.copyWith(age: value));
  });
}
}

CDCStatureForAge _$CDCStatureForAgeFromJson(
  Map<String, dynamic> json
) {
    return _GrowthReferenceHeightForAge.fromJson(
      json
    );
}

/// @nodoc
mixin _$CDCStatureForAge {

 Sex get sex; Age get age; Length get lengthHeight; LengthHeightMeasurementPosition get measure;
/// Create a copy of CDCStatureForAge
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CDCStatureForAgeCopyWith<CDCStatureForAge> get copyWith => _$CDCStatureForAgeCopyWithImpl<CDCStatureForAge>(this as CDCStatureForAge, _$identity);

  /// Serializes this CDCStatureForAge to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CDCStatureForAge&&(identical(other.sex, sex) || other.sex == sex)&&(identical(other.age, age) || other.age == age)&&(identical(other.lengthHeight, lengthHeight) || other.lengthHeight == lengthHeight)&&(identical(other.measure, measure) || other.measure == measure));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,sex,age,lengthHeight,measure);

@override
String toString() {
  return 'CDCStatureForAge(sex: $sex, age: $age, lengthHeight: $lengthHeight, measure: $measure)';
}


}

/// @nodoc
abstract mixin class $CDCStatureForAgeCopyWith<$Res>  {
  factory $CDCStatureForAgeCopyWith(CDCStatureForAge value, $Res Function(CDCStatureForAge) _then) = _$CDCStatureForAgeCopyWithImpl;
@useResult
$Res call({
 Sex sex, Age age, Length lengthHeight, LengthHeightMeasurementPosition measure
});


$AgeCopyWith<$Res> get age;

}
/// @nodoc
class _$CDCStatureForAgeCopyWithImpl<$Res>
    implements $CDCStatureForAgeCopyWith<$Res> {
  _$CDCStatureForAgeCopyWithImpl(this._self, this._then);

  final CDCStatureForAge _self;
  final $Res Function(CDCStatureForAge) _then;

/// Create a copy of CDCStatureForAge
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? sex = null,Object? age = null,Object? lengthHeight = null,Object? measure = null,}) {
  return _then(_self.copyWith(
sex: null == sex ? _self.sex : sex // ignore: cast_nullable_to_non_nullable
as Sex,age: null == age ? _self.age : age // ignore: cast_nullable_to_non_nullable
as Age,lengthHeight: null == lengthHeight ? _self.lengthHeight : lengthHeight // ignore: cast_nullable_to_non_nullable
as Length,measure: null == measure ? _self.measure : measure // ignore: cast_nullable_to_non_nullable
as LengthHeightMeasurementPosition,
  ));
}
/// Create a copy of CDCStatureForAge
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AgeCopyWith<$Res> get age {
  
  return $AgeCopyWith<$Res>(_self.age, (value) {
    return _then(_self.copyWith(age: value));
  });
}
}


/// Adds pattern-matching-related methods to [CDCStatureForAge].
extension CDCStatureForAgePatterns on CDCStatureForAge {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GrowthReferenceHeightForAge value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GrowthReferenceHeightForAge() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GrowthReferenceHeightForAge value)  $default,){
final _that = this;
switch (_that) {
case _GrowthReferenceHeightForAge():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GrowthReferenceHeightForAge value)?  $default,){
final _that = this;
switch (_that) {
case _GrowthReferenceHeightForAge() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Sex sex,  Age age,  Length lengthHeight,  LengthHeightMeasurementPosition measure)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GrowthReferenceHeightForAge() when $default != null:
return $default(_that.sex,_that.age,_that.lengthHeight,_that.measure);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Sex sex,  Age age,  Length lengthHeight,  LengthHeightMeasurementPosition measure)  $default,) {final _that = this;
switch (_that) {
case _GrowthReferenceHeightForAge():
return $default(_that.sex,_that.age,_that.lengthHeight,_that.measure);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Sex sex,  Age age,  Length lengthHeight,  LengthHeightMeasurementPosition measure)?  $default,) {final _that = this;
switch (_that) {
case _GrowthReferenceHeightForAge() when $default != null:
return $default(_that.sex,_that.age,_that.lengthHeight,_that.measure);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GrowthReferenceHeightForAge extends CDCStatureForAge {
   _GrowthReferenceHeightForAge({required this.sex, required this.age, required this.lengthHeight, required this.measure}): super._();
  factory _GrowthReferenceHeightForAge.fromJson(Map<String, dynamic> json) => _$GrowthReferenceHeightForAgeFromJson(json);

@override final  Sex sex;
@override final  Age age;
@override final  Length lengthHeight;
@override final  LengthHeightMeasurementPosition measure;

/// Create a copy of CDCStatureForAge
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GrowthReferenceHeightForAgeCopyWith<_GrowthReferenceHeightForAge> get copyWith => __$GrowthReferenceHeightForAgeCopyWithImpl<_GrowthReferenceHeightForAge>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GrowthReferenceHeightForAgeToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GrowthReferenceHeightForAge&&(identical(other.sex, sex) || other.sex == sex)&&(identical(other.age, age) || other.age == age)&&(identical(other.lengthHeight, lengthHeight) || other.lengthHeight == lengthHeight)&&(identical(other.measure, measure) || other.measure == measure));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,sex,age,lengthHeight,measure);

@override
String toString() {
  return 'CDCStatureForAge(sex: $sex, age: $age, lengthHeight: $lengthHeight, measure: $measure)';
}


}

/// @nodoc
abstract mixin class _$GrowthReferenceHeightForAgeCopyWith<$Res> implements $CDCStatureForAgeCopyWith<$Res> {
  factory _$GrowthReferenceHeightForAgeCopyWith(_GrowthReferenceHeightForAge value, $Res Function(_GrowthReferenceHeightForAge) _then) = __$GrowthReferenceHeightForAgeCopyWithImpl;
@override @useResult
$Res call({
 Sex sex, Age age, Length lengthHeight, LengthHeightMeasurementPosition measure
});


@override $AgeCopyWith<$Res> get age;

}
/// @nodoc
class __$GrowthReferenceHeightForAgeCopyWithImpl<$Res>
    implements _$GrowthReferenceHeightForAgeCopyWith<$Res> {
  __$GrowthReferenceHeightForAgeCopyWithImpl(this._self, this._then);

  final _GrowthReferenceHeightForAge _self;
  final $Res Function(_GrowthReferenceHeightForAge) _then;

/// Create a copy of CDCStatureForAge
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? sex = null,Object? age = null,Object? lengthHeight = null,Object? measure = null,}) {
  return _then(_GrowthReferenceHeightForAge(
sex: null == sex ? _self.sex : sex // ignore: cast_nullable_to_non_nullable
as Sex,age: null == age ? _self.age : age // ignore: cast_nullable_to_non_nullable
as Age,lengthHeight: null == lengthHeight ? _self.lengthHeight : lengthHeight // ignore: cast_nullable_to_non_nullable
as Length,measure: null == measure ? _self.measure : measure // ignore: cast_nullable_to_non_nullable
as LengthHeightMeasurementPosition,
  ));
}

/// Create a copy of CDCStatureForAge
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
mixin _$CDCWeightForAge {

 Sex get sex; Age get age; Mass get weight;
/// Create a copy of CDCWeightForAge
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CDCWeightForAgeCopyWith<CDCWeightForAge> get copyWith => _$CDCWeightForAgeCopyWithImpl<CDCWeightForAge>(this as CDCWeightForAge, _$identity);

  /// Serializes this CDCWeightForAge to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CDCWeightForAge&&(identical(other.sex, sex) || other.sex == sex)&&(identical(other.age, age) || other.age == age)&&(identical(other.weight, weight) || other.weight == weight));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,sex,age,weight);

@override
String toString() {
  return 'CDCWeightForAge(sex: $sex, age: $age, weight: $weight)';
}


}

/// @nodoc
abstract mixin class $CDCWeightForAgeCopyWith<$Res>  {
  factory $CDCWeightForAgeCopyWith(CDCWeightForAge value, $Res Function(CDCWeightForAge) _then) = _$CDCWeightForAgeCopyWithImpl;
@useResult
$Res call({
 Sex sex, Age age, Mass weight
});


$AgeCopyWith<$Res> get age;

}
/// @nodoc
class _$CDCWeightForAgeCopyWithImpl<$Res>
    implements $CDCWeightForAgeCopyWith<$Res> {
  _$CDCWeightForAgeCopyWithImpl(this._self, this._then);

  final CDCWeightForAge _self;
  final $Res Function(CDCWeightForAge) _then;

/// Create a copy of CDCWeightForAge
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? sex = null,Object? age = null,Object? weight = null,}) {
  return _then(_self.copyWith(
sex: null == sex ? _self.sex : sex // ignore: cast_nullable_to_non_nullable
as Sex,age: null == age ? _self.age : age // ignore: cast_nullable_to_non_nullable
as Age,weight: null == weight ? _self.weight : weight // ignore: cast_nullable_to_non_nullable
as Mass,
  ));
}
/// Create a copy of CDCWeightForAge
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AgeCopyWith<$Res> get age {
  
  return $AgeCopyWith<$Res>(_self.age, (value) {
    return _then(_self.copyWith(age: value));
  });
}
}


/// Adds pattern-matching-related methods to [CDCWeightForAge].
extension CDCWeightForAgePatterns on CDCWeightForAge {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CDCWeightForAge value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CDCWeightForAge() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CDCWeightForAge value)  $default,){
final _that = this;
switch (_that) {
case _CDCWeightForAge():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CDCWeightForAge value)?  $default,){
final _that = this;
switch (_that) {
case _CDCWeightForAge() when $default != null:
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
case _CDCWeightForAge() when $default != null:
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
case _CDCWeightForAge():
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
case _CDCWeightForAge() when $default != null:
return $default(_that.sex,_that.age,_that.weight);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CDCWeightForAge extends CDCWeightForAge {
   _CDCWeightForAge({required this.sex, required this.age, required this.weight}): super._();
  factory _CDCWeightForAge.fromJson(Map<String, dynamic> json) => _$CDCWeightForAgeFromJson(json);

@override final  Sex sex;
@override final  Age age;
@override final  Mass weight;

/// Create a copy of CDCWeightForAge
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CDCWeightForAgeCopyWith<_CDCWeightForAge> get copyWith => __$CDCWeightForAgeCopyWithImpl<_CDCWeightForAge>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CDCWeightForAgeToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CDCWeightForAge&&(identical(other.sex, sex) || other.sex == sex)&&(identical(other.age, age) || other.age == age)&&(identical(other.weight, weight) || other.weight == weight));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,sex,age,weight);

@override
String toString() {
  return 'CDCWeightForAge(sex: $sex, age: $age, weight: $weight)';
}


}

/// @nodoc
abstract mixin class _$CDCWeightForAgeCopyWith<$Res> implements $CDCWeightForAgeCopyWith<$Res> {
  factory _$CDCWeightForAgeCopyWith(_CDCWeightForAge value, $Res Function(_CDCWeightForAge) _then) = __$CDCWeightForAgeCopyWithImpl;
@override @useResult
$Res call({
 Sex sex, Age age, Mass weight
});


@override $AgeCopyWith<$Res> get age;

}
/// @nodoc
class __$CDCWeightForAgeCopyWithImpl<$Res>
    implements _$CDCWeightForAgeCopyWith<$Res> {
  __$CDCWeightForAgeCopyWithImpl(this._self, this._then);

  final _CDCWeightForAge _self;
  final $Res Function(_CDCWeightForAge) _then;

/// Create a copy of CDCWeightForAge
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? sex = null,Object? age = null,Object? weight = null,}) {
  return _then(_CDCWeightForAge(
sex: null == sex ? _self.sex : sex // ignore: cast_nullable_to_non_nullable
as Sex,age: null == age ? _self.age : age // ignore: cast_nullable_to_non_nullable
as Age,weight: null == weight ? _self.weight : weight // ignore: cast_nullable_to_non_nullable
as Mass,
  ));
}

/// Create a copy of CDCWeightForAge
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
mixin _$CDCInfantWeightForAge {

 Sex get sex; Age get age; Mass get weight;
/// Create a copy of CDCInfantWeightForAge
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CDCInfantWeightForAgeCopyWith<CDCInfantWeightForAge> get copyWith => _$CDCInfantWeightForAgeCopyWithImpl<CDCInfantWeightForAge>(this as CDCInfantWeightForAge, _$identity);

  /// Serializes this CDCInfantWeightForAge to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CDCInfantWeightForAge&&(identical(other.sex, sex) || other.sex == sex)&&(identical(other.age, age) || other.age == age)&&(identical(other.weight, weight) || other.weight == weight));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,sex,age,weight);

@override
String toString() {
  return 'CDCInfantWeightForAge(sex: $sex, age: $age, weight: $weight)';
}


}

/// @nodoc
abstract mixin class $CDCInfantWeightForAgeCopyWith<$Res>  {
  factory $CDCInfantWeightForAgeCopyWith(CDCInfantWeightForAge value, $Res Function(CDCInfantWeightForAge) _then) = _$CDCInfantWeightForAgeCopyWithImpl;
@useResult
$Res call({
 Sex sex, Age age, Mass weight
});


$AgeCopyWith<$Res> get age;

}
/// @nodoc
class _$CDCInfantWeightForAgeCopyWithImpl<$Res>
    implements $CDCInfantWeightForAgeCopyWith<$Res> {
  _$CDCInfantWeightForAgeCopyWithImpl(this._self, this._then);

  final CDCInfantWeightForAge _self;
  final $Res Function(CDCInfantWeightForAge) _then;

/// Create a copy of CDCInfantWeightForAge
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? sex = null,Object? age = null,Object? weight = null,}) {
  return _then(_self.copyWith(
sex: null == sex ? _self.sex : sex // ignore: cast_nullable_to_non_nullable
as Sex,age: null == age ? _self.age : age // ignore: cast_nullable_to_non_nullable
as Age,weight: null == weight ? _self.weight : weight // ignore: cast_nullable_to_non_nullable
as Mass,
  ));
}
/// Create a copy of CDCInfantWeightForAge
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AgeCopyWith<$Res> get age {
  
  return $AgeCopyWith<$Res>(_self.age, (value) {
    return _then(_self.copyWith(age: value));
  });
}
}


/// Adds pattern-matching-related methods to [CDCInfantWeightForAge].
extension CDCInfantWeightForAgePatterns on CDCInfantWeightForAge {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CDCInfantWeightForAge value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CDCInfantWeightForAge() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CDCInfantWeightForAge value)  $default,){
final _that = this;
switch (_that) {
case _CDCInfantWeightForAge():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CDCInfantWeightForAge value)?  $default,){
final _that = this;
switch (_that) {
case _CDCInfantWeightForAge() when $default != null:
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
case _CDCInfantWeightForAge() when $default != null:
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
case _CDCInfantWeightForAge():
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
case _CDCInfantWeightForAge() when $default != null:
return $default(_that.sex,_that.age,_that.weight);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CDCInfantWeightForAge extends CDCInfantWeightForAge {
   _CDCInfantWeightForAge({required this.sex, required this.age, required this.weight}): super._();
  factory _CDCInfantWeightForAge.fromJson(Map<String, dynamic> json) => _$CDCInfantWeightForAgeFromJson(json);

@override final  Sex sex;
@override final  Age age;
@override final  Mass weight;

/// Create a copy of CDCInfantWeightForAge
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CDCInfantWeightForAgeCopyWith<_CDCInfantWeightForAge> get copyWith => __$CDCInfantWeightForAgeCopyWithImpl<_CDCInfantWeightForAge>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CDCInfantWeightForAgeToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CDCInfantWeightForAge&&(identical(other.sex, sex) || other.sex == sex)&&(identical(other.age, age) || other.age == age)&&(identical(other.weight, weight) || other.weight == weight));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,sex,age,weight);

@override
String toString() {
  return 'CDCInfantWeightForAge(sex: $sex, age: $age, weight: $weight)';
}


}

/// @nodoc
abstract mixin class _$CDCInfantWeightForAgeCopyWith<$Res> implements $CDCInfantWeightForAgeCopyWith<$Res> {
  factory _$CDCInfantWeightForAgeCopyWith(_CDCInfantWeightForAge value, $Res Function(_CDCInfantWeightForAge) _then) = __$CDCInfantWeightForAgeCopyWithImpl;
@override @useResult
$Res call({
 Sex sex, Age age, Mass weight
});


@override $AgeCopyWith<$Res> get age;

}
/// @nodoc
class __$CDCInfantWeightForAgeCopyWithImpl<$Res>
    implements _$CDCInfantWeightForAgeCopyWith<$Res> {
  __$CDCInfantWeightForAgeCopyWithImpl(this._self, this._then);

  final _CDCInfantWeightForAge _self;
  final $Res Function(_CDCInfantWeightForAge) _then;

/// Create a copy of CDCInfantWeightForAge
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? sex = null,Object? age = null,Object? weight = null,}) {
  return _then(_CDCInfantWeightForAge(
sex: null == sex ? _self.sex : sex // ignore: cast_nullable_to_non_nullable
as Sex,age: null == age ? _self.age : age // ignore: cast_nullable_to_non_nullable
as Age,weight: null == weight ? _self.weight : weight // ignore: cast_nullable_to_non_nullable
as Mass,
  ));
}

/// Create a copy of CDCInfantWeightForAge
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
mixin _$CDCInfantWeightForLength {

 Sex get sex; Age get age; Length get length; Mass get weight; LengthHeightMeasurementPosition get measure;
/// Create a copy of CDCInfantWeightForLength
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CDCInfantWeightForLengthCopyWith<CDCInfantWeightForLength> get copyWith => _$CDCInfantWeightForLengthCopyWithImpl<CDCInfantWeightForLength>(this as CDCInfantWeightForLength, _$identity);

  /// Serializes this CDCInfantWeightForLength to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CDCInfantWeightForLength&&(identical(other.sex, sex) || other.sex == sex)&&(identical(other.age, age) || other.age == age)&&(identical(other.length, length) || other.length == length)&&(identical(other.weight, weight) || other.weight == weight)&&(identical(other.measure, measure) || other.measure == measure));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,sex,age,length,weight,measure);

@override
String toString() {
  return 'CDCInfantWeightForLength(sex: $sex, age: $age, length: $length, weight: $weight, measure: $measure)';
}


}

/// @nodoc
abstract mixin class $CDCInfantWeightForLengthCopyWith<$Res>  {
  factory $CDCInfantWeightForLengthCopyWith(CDCInfantWeightForLength value, $Res Function(CDCInfantWeightForLength) _then) = _$CDCInfantWeightForLengthCopyWithImpl;
@useResult
$Res call({
 Sex sex, Age age, Length length, Mass weight, LengthHeightMeasurementPosition measure
});


$AgeCopyWith<$Res> get age;

}
/// @nodoc
class _$CDCInfantWeightForLengthCopyWithImpl<$Res>
    implements $CDCInfantWeightForLengthCopyWith<$Res> {
  _$CDCInfantWeightForLengthCopyWithImpl(this._self, this._then);

  final CDCInfantWeightForLength _self;
  final $Res Function(CDCInfantWeightForLength) _then;

/// Create a copy of CDCInfantWeightForLength
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? sex = null,Object? age = null,Object? length = null,Object? weight = null,Object? measure = null,}) {
  return _then(_self.copyWith(
sex: null == sex ? _self.sex : sex // ignore: cast_nullable_to_non_nullable
as Sex,age: null == age ? _self.age : age // ignore: cast_nullable_to_non_nullable
as Age,length: null == length ? _self.length : length // ignore: cast_nullable_to_non_nullable
as Length,weight: null == weight ? _self.weight : weight // ignore: cast_nullable_to_non_nullable
as Mass,measure: null == measure ? _self.measure : measure // ignore: cast_nullable_to_non_nullable
as LengthHeightMeasurementPosition,
  ));
}
/// Create a copy of CDCInfantWeightForLength
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AgeCopyWith<$Res> get age {
  
  return $AgeCopyWith<$Res>(_self.age, (value) {
    return _then(_self.copyWith(age: value));
  });
}
}


/// Adds pattern-matching-related methods to [CDCInfantWeightForLength].
extension CDCInfantWeightForLengthPatterns on CDCInfantWeightForLength {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CDCInfantWeightForLength value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CDCInfantWeightForLength() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CDCInfantWeightForLength value)  $default,){
final _that = this;
switch (_that) {
case _CDCInfantWeightForLength():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CDCInfantWeightForLength value)?  $default,){
final _that = this;
switch (_that) {
case _CDCInfantWeightForLength() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Sex sex,  Age age,  Length length,  Mass weight,  LengthHeightMeasurementPosition measure)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CDCInfantWeightForLength() when $default != null:
return $default(_that.sex,_that.age,_that.length,_that.weight,_that.measure);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Sex sex,  Age age,  Length length,  Mass weight,  LengthHeightMeasurementPosition measure)  $default,) {final _that = this;
switch (_that) {
case _CDCInfantWeightForLength():
return $default(_that.sex,_that.age,_that.length,_that.weight,_that.measure);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Sex sex,  Age age,  Length length,  Mass weight,  LengthHeightMeasurementPosition measure)?  $default,) {final _that = this;
switch (_that) {
case _CDCInfantWeightForLength() when $default != null:
return $default(_that.sex,_that.age,_that.length,_that.weight,_that.measure);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CDCInfantWeightForLength extends CDCInfantWeightForLength {
   _CDCInfantWeightForLength({required this.sex, required this.age, required this.length, required this.weight, required this.measure}): super._();
  factory _CDCInfantWeightForLength.fromJson(Map<String, dynamic> json) => _$CDCInfantWeightForLengthFromJson(json);

@override final  Sex sex;
@override final  Age age;
@override final  Length length;
@override final  Mass weight;
@override final  LengthHeightMeasurementPosition measure;

/// Create a copy of CDCInfantWeightForLength
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CDCInfantWeightForLengthCopyWith<_CDCInfantWeightForLength> get copyWith => __$CDCInfantWeightForLengthCopyWithImpl<_CDCInfantWeightForLength>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CDCInfantWeightForLengthToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CDCInfantWeightForLength&&(identical(other.sex, sex) || other.sex == sex)&&(identical(other.age, age) || other.age == age)&&(identical(other.length, length) || other.length == length)&&(identical(other.weight, weight) || other.weight == weight)&&(identical(other.measure, measure) || other.measure == measure));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,sex,age,length,weight,measure);

@override
String toString() {
  return 'CDCInfantWeightForLength(sex: $sex, age: $age, length: $length, weight: $weight, measure: $measure)';
}


}

/// @nodoc
abstract mixin class _$CDCInfantWeightForLengthCopyWith<$Res> implements $CDCInfantWeightForLengthCopyWith<$Res> {
  factory _$CDCInfantWeightForLengthCopyWith(_CDCInfantWeightForLength value, $Res Function(_CDCInfantWeightForLength) _then) = __$CDCInfantWeightForLengthCopyWithImpl;
@override @useResult
$Res call({
 Sex sex, Age age, Length length, Mass weight, LengthHeightMeasurementPosition measure
});


@override $AgeCopyWith<$Res> get age;

}
/// @nodoc
class __$CDCInfantWeightForLengthCopyWithImpl<$Res>
    implements _$CDCInfantWeightForLengthCopyWith<$Res> {
  __$CDCInfantWeightForLengthCopyWithImpl(this._self, this._then);

  final _CDCInfantWeightForLength _self;
  final $Res Function(_CDCInfantWeightForLength) _then;

/// Create a copy of CDCInfantWeightForLength
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? sex = null,Object? age = null,Object? length = null,Object? weight = null,Object? measure = null,}) {
  return _then(_CDCInfantWeightForLength(
sex: null == sex ? _self.sex : sex // ignore: cast_nullable_to_non_nullable
as Sex,age: null == age ? _self.age : age // ignore: cast_nullable_to_non_nullable
as Age,length: null == length ? _self.length : length // ignore: cast_nullable_to_non_nullable
as Length,weight: null == weight ? _self.weight : weight // ignore: cast_nullable_to_non_nullable
as Mass,measure: null == measure ? _self.measure : measure // ignore: cast_nullable_to_non_nullable
as LengthHeightMeasurementPosition,
  ));
}

/// Create a copy of CDCInfantWeightForLength
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
mixin _$CDCWeightForStature {

 Sex get sex; Age get age; Length get height; Mass get weight; LengthHeightMeasurementPosition get measure;
/// Create a copy of CDCWeightForStature
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CDCWeightForStatureCopyWith<CDCWeightForStature> get copyWith => _$CDCWeightForStatureCopyWithImpl<CDCWeightForStature>(this as CDCWeightForStature, _$identity);

  /// Serializes this CDCWeightForStature to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CDCWeightForStature&&(identical(other.sex, sex) || other.sex == sex)&&(identical(other.age, age) || other.age == age)&&(identical(other.height, height) || other.height == height)&&(identical(other.weight, weight) || other.weight == weight)&&(identical(other.measure, measure) || other.measure == measure));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,sex,age,height,weight,measure);

@override
String toString() {
  return 'CDCWeightForStature(sex: $sex, age: $age, height: $height, weight: $weight, measure: $measure)';
}


}

/// @nodoc
abstract mixin class $CDCWeightForStatureCopyWith<$Res>  {
  factory $CDCWeightForStatureCopyWith(CDCWeightForStature value, $Res Function(CDCWeightForStature) _then) = _$CDCWeightForStatureCopyWithImpl;
@useResult
$Res call({
 Sex sex, Age age, Length height, Mass weight, LengthHeightMeasurementPosition measure
});


$AgeCopyWith<$Res> get age;

}
/// @nodoc
class _$CDCWeightForStatureCopyWithImpl<$Res>
    implements $CDCWeightForStatureCopyWith<$Res> {
  _$CDCWeightForStatureCopyWithImpl(this._self, this._then);

  final CDCWeightForStature _self;
  final $Res Function(CDCWeightForStature) _then;

/// Create a copy of CDCWeightForStature
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? sex = null,Object? age = null,Object? height = null,Object? weight = null,Object? measure = null,}) {
  return _then(_self.copyWith(
sex: null == sex ? _self.sex : sex // ignore: cast_nullable_to_non_nullable
as Sex,age: null == age ? _self.age : age // ignore: cast_nullable_to_non_nullable
as Age,height: null == height ? _self.height : height // ignore: cast_nullable_to_non_nullable
as Length,weight: null == weight ? _self.weight : weight // ignore: cast_nullable_to_non_nullable
as Mass,measure: null == measure ? _self.measure : measure // ignore: cast_nullable_to_non_nullable
as LengthHeightMeasurementPosition,
  ));
}
/// Create a copy of CDCWeightForStature
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AgeCopyWith<$Res> get age {
  
  return $AgeCopyWith<$Res>(_self.age, (value) {
    return _then(_self.copyWith(age: value));
  });
}
}


/// Adds pattern-matching-related methods to [CDCWeightForStature].
extension CDCWeightForStaturePatterns on CDCWeightForStature {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CDCWeightForStature value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CDCWeightForStature() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CDCWeightForStature value)  $default,){
final _that = this;
switch (_that) {
case _CDCWeightForStature():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CDCWeightForStature value)?  $default,){
final _that = this;
switch (_that) {
case _CDCWeightForStature() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Sex sex,  Age age,  Length height,  Mass weight,  LengthHeightMeasurementPosition measure)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CDCWeightForStature() when $default != null:
return $default(_that.sex,_that.age,_that.height,_that.weight,_that.measure);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Sex sex,  Age age,  Length height,  Mass weight,  LengthHeightMeasurementPosition measure)  $default,) {final _that = this;
switch (_that) {
case _CDCWeightForStature():
return $default(_that.sex,_that.age,_that.height,_that.weight,_that.measure);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Sex sex,  Age age,  Length height,  Mass weight,  LengthHeightMeasurementPosition measure)?  $default,) {final _that = this;
switch (_that) {
case _CDCWeightForStature() when $default != null:
return $default(_that.sex,_that.age,_that.height,_that.weight,_that.measure);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CDCWeightForStature extends CDCWeightForStature {
   _CDCWeightForStature({required this.sex, required this.age, required this.height, required this.weight, required this.measure}): super._();
  factory _CDCWeightForStature.fromJson(Map<String, dynamic> json) => _$CDCWeightForStatureFromJson(json);

@override final  Sex sex;
@override final  Age age;
@override final  Length height;
@override final  Mass weight;
@override final  LengthHeightMeasurementPosition measure;

/// Create a copy of CDCWeightForStature
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CDCWeightForStatureCopyWith<_CDCWeightForStature> get copyWith => __$CDCWeightForStatureCopyWithImpl<_CDCWeightForStature>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CDCWeightForStatureToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CDCWeightForStature&&(identical(other.sex, sex) || other.sex == sex)&&(identical(other.age, age) || other.age == age)&&(identical(other.height, height) || other.height == height)&&(identical(other.weight, weight) || other.weight == weight)&&(identical(other.measure, measure) || other.measure == measure));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,sex,age,height,weight,measure);

@override
String toString() {
  return 'CDCWeightForStature(sex: $sex, age: $age, height: $height, weight: $weight, measure: $measure)';
}


}

/// @nodoc
abstract mixin class _$CDCWeightForStatureCopyWith<$Res> implements $CDCWeightForStatureCopyWith<$Res> {
  factory _$CDCWeightForStatureCopyWith(_CDCWeightForStature value, $Res Function(_CDCWeightForStature) _then) = __$CDCWeightForStatureCopyWithImpl;
@override @useResult
$Res call({
 Sex sex, Age age, Length height, Mass weight, LengthHeightMeasurementPosition measure
});


@override $AgeCopyWith<$Res> get age;

}
/// @nodoc
class __$CDCWeightForStatureCopyWithImpl<$Res>
    implements _$CDCWeightForStatureCopyWith<$Res> {
  __$CDCWeightForStatureCopyWithImpl(this._self, this._then);

  final _CDCWeightForStature _self;
  final $Res Function(_CDCWeightForStature) _then;

/// Create a copy of CDCWeightForStature
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? sex = null,Object? age = null,Object? height = null,Object? weight = null,Object? measure = null,}) {
  return _then(_CDCWeightForStature(
sex: null == sex ? _self.sex : sex // ignore: cast_nullable_to_non_nullable
as Sex,age: null == age ? _self.age : age // ignore: cast_nullable_to_non_nullable
as Age,height: null == height ? _self.height : height // ignore: cast_nullable_to_non_nullable
as Length,weight: null == weight ? _self.weight : weight // ignore: cast_nullable_to_non_nullable
as Mass,measure: null == measure ? _self.measure : measure // ignore: cast_nullable_to_non_nullable
as LengthHeightMeasurementPosition,
  ));
}

/// Create a copy of CDCWeightForStature
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
