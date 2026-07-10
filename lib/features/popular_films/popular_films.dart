import 'package:flutter/material.dart';
import 'package:film_gallery/injection/injection.dart';

import 'package:film_gallery/shared/models/film_preview_data/film_preview_data.dart';
import 'package:film_gallery/shared/models/films_data/films_data.dart';
import 'package:film_gallery/uikit/film-card/film_card.dart';
import 'api/popular_films_api.dart';

class PopularFilmsScreen extends StatefulWidget {
  const PopularFilmsScreen({super.key});

  @override
  State<PopularFilmsScreen> createState() => _PopularFilmsScreenState();
}

class _PopularFilmsScreenState extends State<PopularFilmsScreen> {
  final PopularFilmsApiProvider popularFilmsApi = sl<PopularFilmsApiProvider>();

  bool _isLoading = true;
  String? _errorMessage;
  List<FilmPreviewData> _films = [];
  late FilmsData _data;

  Future<void> _loadPopularFilms() async {
    setState(() {
      _isLoading = true;
      _errorMessage = null;
    });

    try {
      _data = await popularFilmsApi.getPopularFilms(1);

      setState(() {
        _films = _data.items;
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

    _loadPopularFilms();
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
                _loadPopularFilms();
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
            FilmCard(film: film)
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Popular films'),
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
      ),
      body: RefreshIndicator(
        child: _buildBody(),
        onRefresh: () async {
          _loadPopularFilms();
        }
      ),
    );
  }
}