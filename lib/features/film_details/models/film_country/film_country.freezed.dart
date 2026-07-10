// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'film_country.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FilmCountry {

 String get country;
/// Create a copy of FilmCountry
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FilmCountryCopyWith<FilmCountry> get copyWith => _$FilmCountryCopyWithImpl<FilmCountry>(this as FilmCountry, _$identity);

  /// Serializes this FilmCountry to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FilmCountry&&(identical(other.country, country) || other.country == country));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,country);

@override
String toString() {
  return 'FilmCountry(country: $country)';
}


}

/// @nodoc
abstract mixin class $FilmCountryCopyWith<$Res>  {
  factory $FilmCountryCopyWith(FilmCountry value, $Res Function(FilmCountry) _then) = _$FilmCountryCopyWithImpl;
@useResult
$Res call({
 String country
});




}
/// @nodoc
class _$FilmCountryCopyWithImpl<$Res>
    implements $FilmCountryCopyWith<$Res> {
  _$FilmCountryCopyWithImpl(this._self, this._then);

  final FilmCountry _self;
  final $Res Function(FilmCountry) _then;

/// Create a copy of FilmCountry
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? country = null,}) {
  return _then(_self.copyWith(
country: null == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [FilmCountry].
extension FilmCountryPatterns on FilmCountry {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FilmCountry value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FilmCountry() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FilmCountry value)  $default,){
final _that = this;
switch (_that) {
case _FilmCountry():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FilmCountry value)?  $default,){
final _that = this;
switch (_that) {
case _FilmCountry() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String country)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FilmCountry() when $default != null:
return $default(_that.country);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String country)  $default,) {final _that = this;
switch (_that) {
case _FilmCountry():
return $default(_that.country);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String country)?  $default,) {final _that = this;
switch (_that) {
case _FilmCountry() when $default != null:
return $default(_that.country);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FilmCountry implements FilmCountry {
  const _FilmCountry({required this.country});
  factory _FilmCountry.fromJson(Map<String, dynamic> json) => _$FilmCountryFromJson(json);

@override final  String country;

/// Create a copy of FilmCountry
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FilmCountryCopyWith<_FilmCountry> get copyWith => __$FilmCountryCopyWithImpl<_FilmCountry>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FilmCountryToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FilmCountry&&(identical(other.country, country) || other.country == country));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,country);

@override
String toString() {
  return 'FilmCountry(country: $country)';
}


}

/// @nodoc
abstract mixin class _$FilmCountryCopyWith<$Res> implements $FilmCountryCopyWith<$Res> {
  factory _$FilmCountryCopyWith(_FilmCountry value, $Res Function(_FilmCountry) _then) = __$FilmCountryCopyWithImpl;
@override @useResult
$Res call({
 String country
});




}
/// @nodoc
class __$FilmCountryCopyWithImpl<$Res>
    implements _$FilmCountryCopyWith<$Res> {
  __$FilmCountryCopyWithImpl(this._self, this._then);

  final _FilmCountry _self;
  final $Res Function(_FilmCountry) _then;

/// Create a copy of FilmCountry
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? country = null,}) {
  return _then(_FilmCountry(
country: null == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
