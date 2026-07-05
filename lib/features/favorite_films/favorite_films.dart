import 'package:flutter/material.dart';

import '../../uikit/film-card/film_card.dart';

class FavoriteFilmsScreen extends StatefulWidget {
  const FavoriteFilmsScreen({super.key});

  @override
  State<FavoriteFilmsScreen> createState() => _FavoriteFilmsScreenState();
}

class _FavoriteFilmsScreenState extends State<FavoriteFilmsScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Favorite films'),
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
      ),
      body: RefreshIndicator(
          child: Container(
            padding: EdgeInsets.only(
                left: 10,
                right: 10
            ),
            child: GridView.count(
              crossAxisCount: 2,
              crossAxisSpacing: 8.0,
              mainAxisSpacing: 8.0,
              childAspectRatio: 0.87,
              children: [
                for (int i = 0; i < 10; i++)
                  FilmCard()
              ],
            ),
          ),
          onRefresh: () async {}
      ),
    );
  }
}