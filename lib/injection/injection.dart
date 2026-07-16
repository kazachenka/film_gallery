import 'package:get_it/get_it.dart';
import 'package:film_gallery/features/popular_films/api/popular_films_api.dart';
import 'package:film_gallery/features/film_details/api/film_details_api.dart';
import 'package:film_gallery/features/search_films/api/search_films_api.dart';
import 'package:film_gallery/api/kinopoisk_api_client.dart';
import 'package:film_gallery/services/favorite_films_service.dart';

final sl = GetIt.instance;

Future<void> initDependencies() async {
  sl.registerLazySingleton<KinopoiskApiClient>(() => KinopoiskApiClient());

  sl.registerLazySingleton<PopularFilmsApiProvider>(
    () => PopularFilmsApiProvider(sl<KinopoiskApiClient>().dio),
  );

  sl.registerLazySingleton<FilmDetailsApiProvider>(
    () => FilmDetailsApiProvider(sl<KinopoiskApiClient>().dio),
  );

  sl.registerLazySingleton<SearchFilmsApiProvider>(
    () => SearchFilmsApiProvider(sl<KinopoiskApiClient>().dio),
  );

  sl.registerLazySingleton<FavoriteFilmsService>(() => FavoriteFilmsService());
}