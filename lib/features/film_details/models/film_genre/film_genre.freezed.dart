// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'film_genre.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FilmGenre {

 String get genre;
/// Create a copy of FilmGenre
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FilmGenreCopyWith<FilmGenre> get copyWith => _$FilmGenreCopyWithImpl<FilmGenre>(this as FilmGenre, _$identity);

  /// Serializes this FilmGenre to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FilmGenre&&(identical(other.genre, genre) || other.genre == genre));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,genre);

@override
String toString() {
  return 'FilmGenre(genre: $genre)';
}


}

/// @nodoc
abstract mixin class $FilmGenreCopyWith<$Res>  {
  factory $FilmGenreCopyWith(FilmGenre value, $Res Function(FilmGenre) _then) = _$FilmGenreCopyWithImpl;
@useResult
$Res call({
 String genre
});




}
/// @nodoc
class _$FilmGenreCopyWithImpl<$Res>
    implements $FilmGenreCopyWith<$Res> {
  _$FilmGenreCopyWithImpl(this._self, this._then);

  final FilmGenre _self;
  final $Res Function(FilmGenre) _then;

/// Create a copy of FilmGenre
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? genre = null,}) {
  return _then(_self.copyWith(
genre: null == genre ? _self.genre : genre // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [FilmGenre].
extension FilmGenrePatterns on FilmGenre {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FilmGenre value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FilmGenre() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FilmGenre value)  $default,){
final _that = this;
switch (_that) {
case _FilmGenre():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FilmGenre value)?  $default,){
final _that = this;
switch (_that) {
case _FilmGenre() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String genre)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FilmGenre() when $default != null:
return $default(_that.genre);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String genre)  $default,) {final _that = this;
switch (_that) {
case _FilmGenre():
return $default(_that.genre);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String genre)?  $default,) {final _that = this;
switch (_that) {
case _FilmGenre() when $default != null:
return $default(_that.genre);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FilmGenre implements FilmGenre {
  const _FilmGenre({required this.genre});
  factory _FilmGenre.fromJson(Map<String, dynamic> json) => _$FilmGenreFromJson(json);

@override final  String genre;

/// Create a copy of FilmGenre
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FilmGenreCopyWith<_FilmGenre> get copyWith => __$FilmGenreCopyWithImpl<_FilmGenre>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FilmGenreToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FilmGenre&&(identical(other.genre, genre) || other.genre == genre));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,genre);

@override
String toString() {
  return 'FilmGenre(genre: $genre)';
}


}

/// @nodoc
abstract mixin class _$FilmGenreCopyWith<$Res> implements $FilmGenreCopyWith<$Res> {
  factory _$FilmGenreCopyWith(_FilmGenre value, $Res Function(_FilmGenre) _then) = __$FilmGenreCopyWithImpl;
@override @useResult
$Res call({
 String genre
});




}
/// @nodoc
class __$FilmGenreCopyWithImpl<$Res>
    implements _$FilmGenreCopyWith<$Res> {
  __$FilmGenreCopyWithImpl(this._self, this._then);

  final _FilmGenre _self;
  final $Res Function(_FilmGenre) _then;

/// Create a copy of FilmGenre
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? genre = null,}) {
  return _then(_FilmGenre(
genre: null == genre ? _self.genre : genre // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
