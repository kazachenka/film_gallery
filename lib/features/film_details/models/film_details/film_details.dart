import 'package:freezed_annotation/freezed_annotation.dart';

import '../film_country/film_country.dart';
import '../film_genre/film_genre.dart';

part 'film_details.freezed.dart';
part 'film_details.g.dart';

@freezed
abstract class FilmDetails with _$FilmDetails {
  const factory FilmDetails({
    required int kinopoiskId,
    required String nameRu,
    required String posterUrl,
    required String? slogan,
    required String? description,
    required int year,
    required double ratingKinopoisk,
    required List<FilmCountry>? countries,
    required List<FilmGenre>? genre,
  }) = _FilmDetails;

  factory FilmDetails.fromJson(Map<String, dynamic> json) =>
      _$FilmDetailsFromJson(json);
}