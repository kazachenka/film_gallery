import 'dart:async';

import 'package:flutter/material.dart';

import 'package:film_gallery/injection/injection.dart';
import 'package:film_gallery/shared/models/film_preview_data/film_preview_data.dart';
import 'package:film_gallery/shared/models/films_data/films_data.dart';
import 'package:film_gallery/uikit/film-card/film_card.dart';
import 'package:film_gallery/uikit/film_list_shimmer/film_list_shimmer.dart';
import 'package:go_router/go_router.dart';
import 'api/search_films_api.dart';

class SearchFilmsScreen extends StatefulWidget {
  const SearchFilmsScreen({super.key});

  @override
  State<StatefulWidget> createState() => _SearchFilmsScreenState();
}

class _SearchFilmsScreenState extends State<SearchFilmsScreen> {
  final SearchFilmsApiProvider searchFilmsApi = sl<SearchFilmsApiProvider>();

  final TextEditingController _searchController = TextEditingController();
  final ScrollController _scrollController = ScrollController();

  int _page = 1;
  int _totalPages = 1;
  bool _isLoading = false;
  bool _isLoadingMore = false;
  String? _errorMessage;
  Timer? _debounce;

  List<FilmPreviewData> _films = [];
  late FilmsData _data;

  @override
  void initState() {
    super.initState();

    _searchController.addListener(_onSearch);
    _scrollController.addListener(_onScroll);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Find your film'),
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
      ),
      body: SafeArea(
        child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                child: Column(
                  children: [
                    TextField(
                      controller: _searchController,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        hintText: 'movie or series name',
                        prefixIcon: const Icon(Icons.search),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),
                          borderSide: const BorderSide(
                              color: Colors.blue, width: 2
                          ),
                        ),
                      ),
                    ),
                    Divider(),
                  ],
                ),
              ),
              Expanded(
                child: _buildBody(),
              ),
            ]
        )
      )
    );
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
              'Something went wrong',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      );
    }

    if (_films.isEmpty) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Empty list',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      );
    }


    return Container(
      padding: EdgeInsets.only(
        left: 10,
        right: 10
      ),
      child: Stack(
        children: [
          GridView.count(
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

          if (_isLoadingMore)
            Positioned(
              left: 0,
              right: 0,
              bottom: 16,
              child: Center(
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: CircularProgressIndicator(
                    backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
                    color: Colors.blueGrey,
                  ),
                ),
              ),
            )
        ],
      )
    );
  }

  _onSearch() {
    if (_debounce != null && _debounce!.isActive) _debounce!.cancel();

    _debounce = Timer(const Duration(milliseconds: 600), () {
      final search = _searchController.text;

      if (search.isNotEmpty) {
        _searchFilms(search);
      } else {
        setState(() {
          _films = [];
          _page = 1;
          _totalPages = 1;
          _isLoading = false;
          _errorMessage = null;
        });
      }
    });
  }

  _searchFilms(String search) async {
    setState(() {
      _isLoading = true;
      _errorMessage = null;
      _page = 1;
    });

    try {
      _data = await searchFilmsApi.getFilmsBySearch(search, _page);

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

  _loadMoreSearchedFilms() async {
    if (_page + 1 > _totalPages) {
      return;
    }

    setState(() {
      _errorMessage = null;
      _isLoadingMore = true;
      _page = _page + 1;
    });

    try {
      String search = _searchController.text;

      _data = await searchFilmsApi.getFilmsBySearch(search, _page);

      setState(() {
        _films = _films + _data.items;
        _errorMessage = null;
        _isLoadingMore = false;
      });
    } catch (e) {
      print('error: $e');

      setState(() {
        _isLoadingMore = false;
      });
    }
  }

  void openFilmDetails(int filmId) {
    context.push('search/${filmId}');
  }

  void _onScroll() {
    double maxScrollValue = _scrollController.position.maxScrollExtent;
    double currentScrollValue = _scrollController.position.pixels;

    if (maxScrollValue - currentScrollValue <= 200.0 && !_isLoadingMore) {
      _loadMoreSearchedFilms();
    }
  }

  @override
  void dispose() {
    _searchController.dispose();
    _scrollController.dispose();

    super.dispose();
  }
}