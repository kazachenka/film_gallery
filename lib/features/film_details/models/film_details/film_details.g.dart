// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'film_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FilmDetails _$FilmDetailsFromJson(Map<String, dynamic> json) => _FilmDetails(
  kinopoiskId: (json['kinopoiskId'] as num).toInt(),
  nameRu: json['nameRu'] as String,
  posterUrl: json['posterUrl'] as String,
  slogan: json['slogan'] as String?,
  description: json['description'] as String?,
  year: (json['year'] as num).toInt(),
  ratingKinopoisk: (json['ratingKinopoisk'] as num).toDouble(),
  countries: (json['countries'] as List<dynamic>?)
      ?.map((e) => FilmCountry.fromJson(e as Map<String, dynamic>))
      .toList(),
  genre: (json['genre'] as List<dynamic>?)
      ?.map((e) => FilmGenre.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$FilmDetailsToJson(_FilmDetails instance) =>
    <String, dynamic>{
      'kinopoiskId': instance.kinopoiskId,
      'nameRu': instance.nameRu,
      'posterUrl': instance.posterUrl,
      'slogan': instance.slogan,
      'description': instance.description,
      'year': instance.year,
      'ratingKinopoisk': instance.ratingKinopoisk,
      'countries': instance.countries,
      'genre': instance.genre,
    };
