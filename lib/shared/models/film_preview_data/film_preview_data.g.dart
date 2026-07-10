// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'film_preview_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FilmPreviewData _$FilmPreviewDataFromJson(Map<String, dynamic> json) =>
    _FilmPreviewData(
      kinopoiskId: (json['kinopoiskId'] as num).toInt(),
      nameRu: json['nameRu'] as String?,
      posterUrl: json['posterUrl'] as String,
      ratingKinopoisk: (json['ratingKinopoisk'] as num).toDouble(),
    );

Map<String, dynamic> _$FilmPreviewDataToJson(_FilmPreviewData instance) =>
    <String, dynamic>{
      'kinopoiskId': instance.kinopoiskId,
      'nameRu': instance.nameRu,
      'posterUrl': instance.posterUrl,
      'ratingKinopoisk': instance.ratingKinopoisk,
    };
