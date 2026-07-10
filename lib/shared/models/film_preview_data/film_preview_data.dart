import 'package:freezed_annotation/freezed_annotation.dart';

part 'film_preview_data.freezed.dart';
part 'film_preview_data.g.dart';

@freezed
abstract class FilmPreviewData with _$FilmPreviewData {
  const factory FilmPreviewData({
    required int kinopoiskId,
    required String? nameRu,
    required String posterUrl,
    required double ratingKinopoisk,
  }) = _FilmPreviewData;

  factory FilmPreviewData.fromJson(Map<String, dynamic> json) =>
      _$FilmPreviewDataFromJson(json);
}