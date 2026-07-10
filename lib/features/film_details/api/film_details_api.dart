import 'package:dio/dio.dart';

import 'package:film_gallery/features/film_details/models/film_details/film_details.dart';

class FilmDetailsApiProvider {
  final Dio _dio;

  FilmDetailsApiProvider(this._dio);

  Future<FilmDetails> getFilmDetails(int filmId) async {
    final response = await _dio.get('/v2.2/films/$filmId');

    return FilmDetails.fromJson(response.data!);
  }
}