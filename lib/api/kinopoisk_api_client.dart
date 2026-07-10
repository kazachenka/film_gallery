import 'package:dio/dio.dart';

class KinopoiskApiClient {
  late final Dio _dio;

  KinopoiskApiClient() {
    _dio = Dio(BaseOptions(
      baseUrl: 'https://kinopoiskapiunofficial.tech/api',
      receiveTimeout: const Duration(seconds: 10),
      headers: {
        'X-API-KEY': 'aad12654-f9ea-4b3e-ad64-54cbad2451b6',
        'Content-Type': 'application/json',
      },
    ));
  }

  Dio get dio => _dio;
}