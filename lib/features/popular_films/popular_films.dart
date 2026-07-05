import 'package:flutter/material.dart';

import '../../uikit/film-card/film_card.dart';

class PopularFilmsScreen extends StatefulWidget {
  const PopularFilmsScreen({super.key});

  @override
  State<PopularFilmsScreen> createState() => _PopularFilmsScreenState();
}

class _PopularFilmsScreenState extends State<PopularFilmsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Popular films'),
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