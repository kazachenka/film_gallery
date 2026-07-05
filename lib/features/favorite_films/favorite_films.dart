import 'package:flutter/material.dart';

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
                  Card(
                    elevation: 4,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          children: [
                            Stack(
                              children: [
                                Image.asset(
                                  'assets/images/film.jpg',
                                  width: 150,
                                  height: 150,
                                  fit: BoxFit.cover,
                                ),
                                Positioned(
                                  top: 8,
                                  left: 8,
                                  child: Container(
                                    width: 40,
                                    height: 40,
                                    decoration: BoxDecoration(
                                      color: Theme.of(context).appBarTheme.backgroundColor,
                                      shape: BoxShape.circle,
                                    ),
                                    child: Center(
                                      child: Text(
                                        '8.7',
                                        style: Theme.of(context).textTheme.bodySmall?.copyWith(color: Colors.white),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Film name',
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: Theme.of(context).textTheme.bodyMedium,
                            ),
                          ],
                        )
                    ),
                  )
              ],
            ),
          ),
          onRefresh: () async {}
      ),
    );
  }
}