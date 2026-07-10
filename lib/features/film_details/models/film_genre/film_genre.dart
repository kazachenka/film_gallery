import 'package:freezed_annotation/freezed_annotation.dart';

part 'film_genre.freezed.dart';
part 'film_genre.g.dart';

@freezed
abstract class FilmGenre with _$FilmGenre {
  const factory FilmGenre({
    required String genre,
  }) = _FilmGenre;

  factory FilmGenre.fromJson(Map<String, dynamic> json) =>
      _$FilmGenreFromJson(json);
}