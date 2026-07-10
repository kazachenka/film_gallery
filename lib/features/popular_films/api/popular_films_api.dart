import 'package:dio/dio.dart';

import 'package:film_gallery/shared/models/films_data/films_data.dart';

class PopularFilmsApiProvider {
  final Dio _dio;

  PopularFilmsApiProvider(this._dio);

  Future<FilmsData> getPopularFilms(int page) async {
    final response = await _dio.get(
      '/v2.2/films',
      queryParameters: {
        'page': page,
      },
    );

    return FilmsData.fromJson(response.data!);
  }
}