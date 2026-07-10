// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'film_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FilmDetails {

 int get kinopoiskId; String get nameRu; String get posterUrl; String? get slogan; String? get description; int get year; double get ratingKinopoisk; List<FilmCountry>? get countries; List<FilmGenre>? get genre;
/// Create a copy of FilmDetails
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FilmDetailsCopyWith<FilmDetails> get copyWith => _$FilmDetailsCopyWithImpl<FilmDetails>(this as FilmDetails, _$identity);

  /// Serializes this FilmDetails to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FilmDetails&&(identical(other.kinopoiskId, kinopoiskId) || other.kinopoiskId == kinopoiskId)&&(identical(other.nameRu, nameRu) || other.nameRu == nameRu)&&(identical(other.posterUrl, posterUrl) || other.posterUrl == posterUrl)&&(identical(other.slogan, slogan) || other.slogan == slogan)&&(identical(other.description, description) || other.description == description)&&(identical(other.year, year) || other.year == year)&&(identical(other.ratingKinopoisk, ratingKinopoisk) || other.ratingKinopoisk == ratingKinopoisk)&&const DeepCollectionEquality().equals(other.countries, countries)&&const DeepCollectionEquality().equals(other.genre, genre));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,kinopoiskId,nameRu,posterUrl,slogan,description,year,ratingKinopoisk,const DeepCollectionEquality().hash(countries),const DeepCollectionEquality().hash(genre));

@override
String toString() {
  return 'FilmDetails(kinopoiskId: $kinopoiskId, nameRu: $nameRu, posterUrl: $posterUrl, slogan: $slogan, description: $description, year: $year, ratingKinopoisk: $ratingKinopoisk, countries: $countries, genre: $genre)';
}


}

/// @nodoc
abstract mixin class $FilmDetailsCopyWith<$Res>  {
  factory $FilmDetailsCopyWith(FilmDetails value, $Res Function(FilmDetails) _then) = _$FilmDetailsCopyWithImpl;
@useResult
$Res call({
 int kinopoiskId, String nameRu, String posterUrl, String? slogan, String? description, int year, double ratingKinopoisk, List<FilmCountry>? countries, List<FilmGenre>? genre
});




}
/// @nodoc
class _$FilmDetailsCopyWithImpl<$Res>
    implements $FilmDetailsCopyWith<$Res> {
  _$FilmDetailsCopyWithImpl(this._self, this._then);

  final FilmDetails _self;
  final $Res Function(FilmDetails) _then;

/// Create a copy of FilmDetails
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? kinopoiskId = null,Object? nameRu = null,Object? posterUrl = null,Object? slogan = freezed,Object? description = freezed,Object? year = null,Object? ratingKinopoisk = null,Object? countries = freezed,Object? genre = freezed,}) {
  return _then(_self.copyWith(
kinopoiskId: null == kinopoiskId ? _self.kinopoiskId : kinopoiskId // ignore: cast_nullable_to_non_nullable
as int,nameRu: null == nameRu ? _self.nameRu : nameRu // ignore: cast_nullable_to_non_nullable
as String,posterUrl: null == posterUrl ? _self.posterUrl : posterUrl // ignore: cast_nullable_to_non_nullable
as String,slogan: freezed == slogan ? _self.slogan : slogan // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,year: null == year ? _self.year : year // ignore: cast_nullable_to_non_nullable
as int,ratingKinopoisk: null == ratingKinopoisk ? _self.ratingKinopoisk : ratingKinopoisk // ignore: cast_nullable_to_non_nullable
as double,countries: freezed == countries ? _self.countries : countries // ignore: cast_nullable_to_non_nullable
as List<FilmCountry>?,genre: freezed == genre ? _self.genre : genre // ignore: cast_nullable_to_non_nullable
as List<FilmGenre>?,
  ));
}

}


/// Adds pattern-matching-related methods to [FilmDetails].
extension FilmDetailsPatterns on FilmDetails {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FilmDetails value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FilmDetails() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FilmDetails value)  $default,){
final _that = this;
switch (_that) {
case _FilmDetails():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FilmDetails value)?  $default,){
final _that = this;
switch (_that) {
case _FilmDetails() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int kinopoiskId,  String nameRu,  String posterUrl,  String? slogan,  String? description,  int year,  double ratingKinopoisk,  List<FilmCountry>? countries,  List<FilmGenre>? genre)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FilmDetails() when $default != null:
return $default(_that.kinopoiskId,_that.nameRu,_that.posterUrl,_that.slogan,_that.description,_that.year,_that.ratingKinopoisk,_that.countries,_that.genre);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int kinopoiskId,  String nameRu,  String posterUrl,  String? slogan,  String? description,  int year,  double ratingKinopoisk,  List<FilmCountry>? countries,  List<FilmGenre>? genre)  $default,) {final _that = this;
switch (_that) {
case _FilmDetails():
return $default(_that.kinopoiskId,_that.nameRu,_that.posterUrl,_that.slogan,_that.description,_that.year,_that.ratingKinopoisk,_that.countries,_that.genre);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int kinopoiskId,  String nameRu,  String posterUrl,  String? slogan,  String? description,  int year,  double ratingKinopoisk,  List<FilmCountry>? countries,  List<FilmGenre>? genre)?  $default,) {final _that = this;
switch (_that) {
case _FilmDetails() when $default != null:
return $default(_that.kinopoiskId,_that.nameRu,_that.posterUrl,_that.slogan,_that.description,_that.year,_that.ratingKinopoisk,_that.countries,_that.genre);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FilmDetails implements FilmDetails {
  const _FilmDetails({required this.kinopoiskId, required this.nameRu, required this.posterUrl, required this.slogan, required this.description, required this.year, required this.ratingKinopoisk, required final  List<FilmCountry>? countries, required final  List<FilmGenre>? genre}): _countries = countries,_genre = genre;
  factory _FilmDetails.fromJson(Map<String, dynamic> json) => _$FilmDetailsFromJson(json);

@override final  int kinopoiskId;
@override final  String nameRu;
@override final  String posterUrl;
@override final  String? slogan;
@override final  String? description;
@override final  int year;
@override final  double ratingKinopoisk;
 final  List<FilmCountry>? _countries;
@override List<FilmCountry>? get countries {
  final value = _countries;
  if (value == null) return null;
  if (_countries is EqualUnmodifiableListView) return _countries;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<FilmGenre>? _genre;
@override List<FilmGenre>? get genre {
  final value = _genre;
  if (value == null) return null;
  if (_genre is EqualUnmodifiableListView) return _genre;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of FilmDetails
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FilmDetailsCopyWith<_FilmDetails> get copyWith => __$FilmDetailsCopyWithImpl<_FilmDetails>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FilmDetailsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FilmDetails&&(identical(other.kinopoiskId, kinopoiskId) || other.kinopoiskId == kinopoiskId)&&(identical(other.nameRu, nameRu) || other.nameRu == nameRu)&&(identical(other.posterUrl, posterUrl) || other.posterUrl == posterUrl)&&(identical(other.slogan, slogan) || other.slogan == slogan)&&(identical(other.description, description) || other.description == description)&&(identical(other.year, year) || other.year == year)&&(identical(other.ratingKinopoisk, ratingKinopoisk) || other.ratingKinopoisk == ratingKinopoisk)&&const DeepCollectionEquality().equals(other._countries, _countries)&&const DeepCollectionEquality().equals(other._genre, _genre));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,kinopoiskId,nameRu,posterUrl,slogan,description,year,ratingKinopoisk,const DeepCollectionEquality().hash(_countries),const DeepCollectionEquality().hash(_genre));

@override
String toString() {
  return 'FilmDetails(kinopoiskId: $kinopoiskId, nameRu: $nameRu, posterUrl: $posterUrl, slogan: $slogan, description: $description, year: $year, ratingKinopoisk: $ratingKinopoisk, countries: $countries, genre: $genre)';
}


}

/// @nodoc
abstract mixin class _$FilmDetailsCopyWith<$Res> implements $FilmDetailsCopyWith<$Res> {
  factory _$FilmDetailsCopyWith(_FilmDetails value, $Res Function(_FilmDetails) _then) = __$FilmDetailsCopyWithImpl;
@override @useResult
$Res call({
 int kinopoiskId, String nameRu, String posterUrl, String? slogan, String? description, int year, double ratingKinopoisk, List<FilmCountry>? countries, List<FilmGenre>? genre
});




}
/// @nodoc
class __$FilmDetailsCopyWithImpl<$Res>
    implements _$FilmDetailsCopyWith<$Res> {
  __$FilmDetailsCopyWithImpl(this._self, this._then);

  final _FilmDetails _self;
  final $Res Function(_FilmDetails) _then;

/// Create a copy of FilmDetails
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? kinopoiskId = null,Object? nameRu = null,Object? posterUrl = null,Object? slogan = freezed,Object? description = freezed,Object? year = null,Object? ratingKinopoisk = null,Object? countries = freezed,Object? genre = freezed,}) {
  return _then(_FilmDetails(
kinopoiskId: null == kinopoiskId ? _self.kinopoiskId : kinopoiskId // ignore: cast_nullable_to_non_nullable
as int,nameRu: null == nameRu ? _self.nameRu : nameRu // ignore: cast_nullable_to_non_nullable
as String,posterUrl: null == posterUrl ? _self.posterUrl : posterUrl // ignore: cast_nullable_to_non_nullable
as String,slogan: freezed == slogan ? _self.slogan : slogan // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,year: null == year ? _self.year : year // ignore: cast_nullable_to_non_nullable
as int,ratingKinopoisk: null == ratingKinopoisk ? _self.ratingKinopoisk : ratingKinopoisk // ignore: cast_nullable_to_non_nullable
as double,countries: freezed == countries ? _self._countries : countries // ignore: cast_nullable_to_non_nullable
as List<FilmCountry>?,genre: freezed == genre ? _self._genre : genre // ignore: cast_nullable_to_non_nullable
as List<FilmGenre>?,
  ));
}


}

// dart format on
