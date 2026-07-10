// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'films_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FilmsData _$FilmsDataFromJson(Map<String, dynamic> json) => _FilmsData(
  total: (json['total'] as num).toInt(),
  totalPages: (json['totalPages'] as num).toInt(),
  items: (json['items'] as List<dynamic>)
      .map((e) => FilmPreviewData.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$FilmsDataToJson(_FilmsData instance) =>
    <String, dynamic>{
      'total': instance.total,
      'totalPages': instance.totalPages,
      'items': instance.items,
    };
