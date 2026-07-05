import 'package:flutter/material.dart';

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
                        SizedBox(
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