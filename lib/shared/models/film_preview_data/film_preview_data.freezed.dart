// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'film_preview_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FilmPreviewData {

 int get kinopoiskId; String? get nameRu; String get posterUrl; double get ratingKinopoisk;
/// Create a copy of FilmPreviewData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FilmPreviewDataCopyWith<FilmPreviewData> get copyWith => _$FilmPreviewDataCopyWithImpl<FilmPreviewData>(this as FilmPreviewData, _$identity);

  /// Serializes this FilmPreviewData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FilmPreviewData&&(identical(other.kinopoiskId, kinopoiskId) || other.kinopoiskId == kinopoiskId)&&(identical(other.nameRu, nameRu) || other.nameRu == nameRu)&&(identical(other.posterUrl, posterUrl) || other.posterUrl == posterUrl)&&(identical(other.ratingKinopoisk, ratingKinopoisk) || other.ratingKinopoisk == ratingKinopoisk));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,kinopoiskId,nameRu,posterUrl,ratingKinopoisk);

@override
String toString() {
  return 'FilmPreviewData(kinopoiskId: $kinopoiskId, nameRu: $nameRu, posterUrl: $posterUrl, ratingKinopoisk: $ratingKinopoisk)';
}


}

/// @nodoc
abstract mixin class $FilmPreviewDataCopyWith<$Res>  {
  factory $FilmPreviewDataCopyWith(FilmPreviewData value, $Res Function(FilmPreviewData) _then) = _$FilmPreviewDataCopyWithImpl;
@useResult
$Res call({
 int kinopoiskId, String? nameRu, String posterUrl, double ratingKinopoisk
});




}
/// @nodoc
class _$FilmPreviewDataCopyWithImpl<$Res>
    implements $FilmPreviewDataCopyWith<$Res> {
  _$FilmPreviewDataCopyWithImpl(this._self, this._then);

  final FilmPreviewData _self;
  final $Res Function(FilmPreviewData) _then;

/// Create a copy of FilmPreviewData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? kinopoiskId = null,Object? nameRu = freezed,Object? posterUrl = null,Object? ratingKinopoisk = null,}) {
  return _then(_self.copyWith(
kinopoiskId: null == kinopoiskId ? _self.kinopoiskId : kinopoiskId // ignore: cast_nullable_to_non_nullable
as int,nameRu: freezed == nameRu ? _self.nameRu : nameRu // ignore: cast_nullable_to_non_nullable
as String?,posterUrl: null == posterUrl ? _self.posterUrl : posterUrl // ignore: cast_nullable_to_non_nullable
as String,ratingKinopoisk: null == ratingKinopoisk ? _self.ratingKinopoisk : ratingKinopoisk // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [FilmPreviewData].
extension FilmPreviewDataPatterns on FilmPreviewData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FilmPreviewData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FilmPreviewData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FilmPreviewData value)  $default,){
final _that = this;
switch (_that) {
case _FilmPreviewData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FilmPreviewData value)?  $default,){
final _that = this;
switch (_that) {
case _FilmPreviewData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int kinopoiskId,  String? nameRu,  String posterUrl,  double ratingKinopoisk)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FilmPreviewData() when $default != null:
return $default(_that.kinopoiskId,_that.nameRu,_that.posterUrl,_that.ratingKinopoisk);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int kinopoiskId,  String? nameRu,  String posterUrl,  double ratingKinopoisk)  $default,) {final _that = this;
switch (_that) {
case _FilmPreviewData():
return $default(_that.kinopoiskId,_that.nameRu,_that.posterUrl,_that.ratingKinopoisk);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int kinopoiskId,  String? nameRu,  String posterUrl,  double ratingKinopoisk)?  $default,) {final _that = this;
switch (_that) {
case _FilmPreviewData() when $default != null:
return $default(_that.kinopoiskId,_that.nameRu,_that.posterUrl,_that.ratingKinopoisk);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FilmPreviewData implements FilmPreviewData {
  const _FilmPreviewData({required this.kinopoiskId, required this.nameRu, required this.posterUrl, required this.ratingKinopoisk});
  factory _FilmPreviewData.fromJson(Map<String, dynamic> json) => _$FilmPreviewDataFromJson(json);

@override final  int kinopoiskId;
@override final  String? nameRu;
@override final  String posterUrl;
@override final  double ratingKinopoisk;

/// Create a copy of FilmPreviewData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FilmPreviewDataCopyWith<_FilmPreviewData> get copyWith => __$FilmPreviewDataCopyWithImpl<_FilmPreviewData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FilmPreviewDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FilmPreviewData&&(identical(other.kinopoiskId, kinopoiskId) || other.kinopoiskId == kinopoiskId)&&(identical(other.nameRu, nameRu) || other.nameRu == nameRu)&&(identical(other.posterUrl, posterUrl) || other.posterUrl == posterUrl)&&(identical(other.ratingKinopoisk, ratingKinopoisk) || other.ratingKinopoisk == ratingKinopoisk));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,kinopoiskId,nameRu,posterUrl,ratingKinopoisk);

@override
String toString() {
  return 'FilmPreviewData(kinopoiskId: $kinopoiskId, nameRu: $nameRu, posterUrl: $posterUrl, ratingKinopoisk: $ratingKinopoisk)';
}


}

/// @nodoc
abstract mixin class _$FilmPreviewDataCopyWith<$Res> implements $FilmPreviewDataCopyWith<$Res> {
  factory _$FilmPreviewDataCopyWith(_FilmPreviewData value, $Res Function(_FilmPreviewData) _then) = __$FilmPreviewDataCopyWithImpl;
@override @useResult
$Res call({
 int kinopoiskId, String? nameRu, String posterUrl, double ratingKinopoisk
});




}
/// @nodoc
class __$FilmPreviewDataCopyWithImpl<$Res>
    implements _$FilmPreviewDataCopyWith<$Res> {
  __$FilmPreviewDataCopyWithImpl(this._self, this._then);

  final _FilmPreviewData _self;
  final $Res Function(_FilmPreviewData) _then;

/// Create a copy of FilmPreviewData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? kinopoiskId = null,Object? nameRu = freezed,Object? posterUrl = null,Object? ratingKinopoisk = null,}) {
  return _then(_FilmPreviewData(
kinopoiskId: null == kinopoiskId ? _self.kinopoiskId : kinopoiskId // ignore: cast_nullable_to_non_nullable
as int,nameRu: freezed == nameRu ? _self.nameRu : nameRu // ignore: cast_nullable_to_non_nullable
as String?,posterUrl: null == posterUrl ? _self.posterUrl : posterUrl // ignore: cast_nullable_to_non_nullable
as String,ratingKinopoisk: null == ratingKinopoisk ? _self.ratingKinopoisk : ratingKinopoisk // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
