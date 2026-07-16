import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:film_gallery/injection/injection.dart';
import 'package:film_gallery/shared/models/film_preview_data/film_preview_data.dart';
import 'package:film_gallery/shared/models/films_data/films_data.dart';
import 'package:film_gallery/uikit/film-card/film_card.dart';
import 'package:film_gallery/uikit/film_list_shimmer/film_list_shimmer.dart';
import 'api/popular_films_api.dart';

class PopularFilmsScreen extends StatefulWidget {
  const PopularFilmsScreen({super.key});

  @override
  State<PopularFilmsScreen> createState() => _PopularFilmsScreenState();
}

class _PopularFilmsScreenState extends State<PopularFilmsScreen> {
  final PopularFilmsApiProvider popularFilmsApi = sl<PopularFilmsApiProvider>();
  final ScrollController _scrollController = ScrollController();

  int _page = 1;
  int _totalPages = 1;
  bool _isLoading = true;
  bool _isLoadingMore = false;
  String? _errorMessage;
  List<FilmPreviewData> _films = [];
  late FilmsData _data;

  @override
  void initState() {
    super.initState();

    _scrollController.addListener(_onScroll);
    _loadPopularFilms();
  }

  Future<void> _loadPopularFilms() async {
    setState(() {
      _isLoading = true;
      _errorMessage = null;
      _page = 1;
    });

    try {
      _data = await popularFilmsApi.getPopularFilms(_page);

      setState(() {
        _films = _data.items;
        _totalPages = _data.totalPages;
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

  void _loadMorePopularFilms() async {
    if (_page + 1 > _totalPages) {
      return;
    }

    setState(() {
      _errorMessage = null;
      _isLoadingMore = true;
      _page = _page + 1;
    });

    try {
      _data = await popularFilmsApi.getPopularFilms(_page);

      setState(() {
        _films = _films + _data.items;
        _errorMessage = null;
        _isLoadingMore = false;
      });
    } catch (e) {
      print('error: $e');

      _isLoadingMore = false;
    }
  }

  void openFilmDetails(int filmId) {
    context.push('popular/${filmId}');
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
        controller: _scrollController,
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

  void _onScroll() {
    double maxScrollValue = _scrollController.position.maxScrollExtent;
    double currentScrollValue = _scrollController.position.pixels;

    if (maxScrollValue - currentScrollValue <= 200.0 && !_isLoadingMore) {
      _loadMorePopularFilms();
    }
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

  @override
  void dispose() {
    _scrollController.dispose();

    super.dispose();
  }
}