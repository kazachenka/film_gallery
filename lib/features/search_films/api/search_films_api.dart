import 'package:dio/dio.dart';

import 'package:film_gallery/shared/models/films_data/films_data.dart';

class SearchFilmsApiProvider {
  final Dio _dio;

  SearchFilmsApiProvider(this._dio);

  Future<FilmsData> getFilmsBySearch(String keyword, int page) async {
    final response = await _dio.get(
      '/v2.2/films',
      queryParameters: {
        'keyword': keyword,
        'page': page,
      },
    );

    return FilmsData.fromJson(response.data!);
  }
}