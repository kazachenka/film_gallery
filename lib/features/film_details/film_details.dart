import 'package:flutter/material.dart';

import 'package:film_gallery/injection/injection.dart';
import 'package:film_gallery/services/favorite_films_service.dart';
import 'package:film_gallery/shared/models/film_preview_data/film_preview_data.dart';
import 'api/film_details_api.dart';
import 'models/film_details/film_details.dart';

class FilmDetailsScreen extends StatefulWidget {
  const FilmDetailsScreen({super.key, required this.filmId});

  final int filmId;

  @override
  State<StatefulWidget> createState() => _FilmDetailsScreenState();
}

class _FilmDetailsScreenState extends State<FilmDetailsScreen> {
  final FilmDetailsApiProvider popularFilmsApi = sl<FilmDetailsApiProvider>();
  final FavoriteFilmsService favoriteFilmsApi = sl<FavoriteFilmsService>();

  late FilmDetails _filmData;
  bool _isLoading = true;
  bool _isFavorite = false;
  String? _errorMessage;

  Future<void> _loadFilmDetails() async {
    setState(() {
      _isLoading = true;
      _errorMessage = null;
    });

    try {
      final data = await popularFilmsApi.getFilmDetails(widget.filmId);
      final isFavorite = await favoriteFilmsApi.isInFavorites(widget.filmId);

      setState(() {
        _isFavorite = isFavorite;
        _filmData = data;
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

  @override
  void initState() {
    super.initState();

    _loadFilmDetails();
  }

  Future<void> _toggleFavorite() async {
    try {
      if (_isFavorite) {
        await favoriteFilmsApi.removeFromFavorites(widget.filmId);
      } else {
        final filmData = FilmPreviewData(
          kinopoiskId: widget.filmId,
          nameRu: _filmData.nameRu,
          posterUrl: _filmData.posterUrl,
          ratingKinopoisk: _filmData.ratingKinopoisk,
        );

        await favoriteFilmsApi.addToFavorites(filmData);
      }

      setState(() {
        _isFavorite = !_isFavorite;
      });
    } catch (e) {
      print('error: $e');
    }
  }

  Widget _buildBody() {
    if (_isLoading) {
      return const Center(
        child: CircularProgressIndicator(),
      );
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
                _loadFilmDetails();
              },
              child: const Text('try again'),
            )
          ],
        ),
      );
    }

    return SingleChildScrollView(
      padding: EdgeInsets.only(
        left: 10,
        right: 10
      ),
      child: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          Image.network(
            _filmData.posterUrl,
            width: double.infinity,
            height: 300,
            fit: BoxFit.fill,
            errorBuilder: (context, error, stackTrace) {
              return Image.asset(
                'assets/images/film.jpg',
                width: double.infinity,
                height: 400,
                fit: BoxFit.fill,
              );
            },
          ),
          const SizedBox(
            height: 15,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Text(
              _filmData.nameRu,
              style: Theme.of(context).textTheme.headlineMedium,
              maxLines: 1,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          if (_filmData.slogan != null)
            Text(
              '\"${_filmData.slogan!}\"',
              style: Theme.of(context).textTheme.bodySmall,
            ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  color: Theme.of(context).appBarTheme.backgroundColor,
                  shape: BoxShape.circle,
                ),
                child: Center(
                  child: Text(
                    '${_filmData.ratingKinopoisk}',
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(color: Colors.white),
                  ),
                ),
              ),
              SizedBox(width: 10),
              Text(
                _filmData.year.toString(),
              ),
              SizedBox(width: 10),
              for (var countryData in _filmData.countries ?? [])
                Text(
                  '${countryData.country} ',
                ),


              for (var genreData in _filmData.genre ?? [])
                Text(
                  '${genreData.genre} ',
                ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          if (_filmData.description != null)
            Text(
              _filmData.description!,
            ),

          const SizedBox(
            height: 15,
          ),

          FilledButton.icon(
            onPressed: _toggleFavorite,
            icon: Icon(_isFavorite ? Icons.favorite : Icons.favorite_border),
            label: Text(_isFavorite ? 'Remove from favorites' : 'Add to favorite'),
          ),

          const SizedBox(
            height: 15,
          ),
        ],
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Film name'),
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
      ),
      body: _buildBody(),
    );
  }
}