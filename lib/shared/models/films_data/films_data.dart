import 'package:freezed_annotation/freezed_annotation.dart';

import '../film_preview_data/film_preview_data.dart';

part 'films_data.freezed.dart';
part 'films_data.g.dart';

@freezed
abstract class FilmsData with _$FilmsData {
  const factory FilmsData({
    required int total,
    required int totalPages,
    required List<FilmPreviewData> items
  }) = _FilmsData;

  factory FilmsData.fromJson(Map<String, dynamic> json) =>
      _$FilmsDataFromJson(json);
}