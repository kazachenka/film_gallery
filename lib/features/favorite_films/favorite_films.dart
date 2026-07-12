import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:film_gallery/injection/injection.dart';
import 'package:film_gallery/services/favorite_films_service.dart';
import 'package:film_gallery/shared/models/film_preview_data/film_preview_data.dart';
import 'package:film_gallery/uikit/film-card/film_card.dart';
import 'package:film_gallery/uikit/film_list_shimmer/film_list_shimmer.dart';

class FavoriteFilmsScreen extends StatefulWidget {
  const FavoriteFilmsScreen({super.key});

  @override
  State<FavoriteFilmsScreen> createState() => _FavoriteFilmsScreenState();
}

class _FavoriteFilmsScreenState extends State<FavoriteFilmsScreen> {
  final FavoriteFilmsService favoriteFilmsApi = sl<FavoriteFilmsService>();

  bool _isLoading = true;
  String? _errorMessage;
  List<FilmPreviewData> _films = [];
  late List<FilmPreviewData> films;

  Future<void> _loadFavoriteFilms() async {
    setState(() {
      _isLoading = true;
      _errorMessage = null;
    });

    try {
      films = await favoriteFilmsApi.getFavorites();

      setState(() {
        _films = films;
        _isLoading = false;
        _errorMessage = null;
      });
    } catch (e) {
      print('error: $e');
      setState(() {
        _errorMessage = e.toString();
        _isLoading = false;
      });
    }
  }

  void openFilmDetails(int filmId) {
    context.push('favorite/${filmId}');
  }

  @override
  void initState() {
    super.initState();

    _loadFavoriteFilms();
  }

  Widget _buildBody() {
    if (_isLoading) {
      return FilmGridSkeleton();
    }

    if (_errorMessage != null) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Something went wrong...',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Text(
              'Please try again',
              style: Theme.of(context).textTheme.labelSmall?.copyWith(fontSize: 16),
            ),
            TextButton(
              onPressed: () {
                _loadFavoriteFilms();
              },
              child: const Text('try again'),
            )
          ],
        ),
      );
    }

    if (_films.isEmpty) {
      return const Center(
        child: Text('No films found'),
      );
    }

    return Container(
      padding: EdgeInsets.only(
          left: 10,
          right: 10
      ),
      child: GridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 8.0,
        mainAxisSpacing: 8.0,
        childAspectRatio: 0.78,
        children: [
          for (var film in _films)
            FilmCard(film: film, onTap: openFilmDetails)
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Favorite films'),
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
      ),
      body: StreamBuilder<void>(
        stream: favoriteFilmsApi.onFavoritesChanged$,
        builder: (context, snapshot) {
          WidgetsBinding.instance.addPostFrameCallback((_) {
            if (!_isLoading) {
              _loadFavoriteFilms();
            }
          });

          return RefreshIndicator(
            child: _buildBody(),
            onRefresh: () async {
              _loadFavoriteFilms();
            },
          );
        },
      ),
    );
  }
}