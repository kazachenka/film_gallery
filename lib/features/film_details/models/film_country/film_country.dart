import 'package:freezed_annotation/freezed_annotation.dart';

part 'film_country.freezed.dart';
part 'film_country.g.dart';

@freezed
abstract class FilmCountry with _$FilmCountry {
  const factory FilmCountry({
    required String country,
  }) = _FilmCountry;

  factory FilmCountry.fromJson(Map<String, dynamic> json) =>
      _$FilmCountryFromJson(json);
}