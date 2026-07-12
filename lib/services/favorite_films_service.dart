import 'dart:async';
import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:film_gallery/shared/models/film_preview_data/film_preview_data.dart';

class FavoriteFilmsService {
  static const String _storageKey = 'favorite_films_list';

  final StreamController<void> _updateController = StreamController<void>.broadcast();

  Stream<void> get onFavoritesChanged$ => _updateController.stream;

  Future<List<FilmPreviewData>> getFavorites() async {
    final prefs = await SharedPreferences.getInstance();
    final List<String>? filmsJsonList = prefs.getStringList(_storageKey);

    if (filmsJsonList == null) {
      return [];
    }

    return filmsJsonList.map((filmStr) {
      final Map<String, dynamic> jsonMap = jsonDecode(filmStr);

      return FilmPreviewData.fromJson(jsonMap);
    }).toList();
  }


  Future<void> addToFavorites(FilmPreviewData film) async {
    final prefs = await SharedPreferences.getInstance();
    final List<FilmPreviewData> currentFavorites = await getFavorites();

    currentFavorites.add(film);

    await _saveList(prefs, currentFavorites);

    _updateController.add(null);
  }

  Future<void> removeFromFavorites(int kinopoiskId) async {
    final prefs = await SharedPreferences.getInstance();
    final List<FilmPreviewData> currentFavorites = await getFavorites();

    currentFavorites.removeWhere((f) => f.kinopoiskId == kinopoiskId);

    await _saveList(prefs, currentFavorites);

    _updateController.add(null);
  }

  Future<bool> isInFavorites(int kinopoiskId) async {
    final List<FilmPreviewData> currentFavorites = await getFavorites();

    return currentFavorites.any((f) => f.kinopoiskId == kinopoiskId);
  }

  Future<void> _saveList(SharedPreferences prefs, List<FilmPreviewData> list) async {
    final List<String> stringList = list.map((film) {
      return jsonEncode(film.toJson());
    }).toList();

    await prefs.setStringList(_storageKey, stringList);
  }

  void dispose() {
    _updateController.close();
  }
}