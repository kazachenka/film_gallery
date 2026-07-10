import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:film_gallery/shared/models/film_preview_data/film_preview_data.dart';

class FilmCard extends StatelessWidget {
  const FilmCard({super.key, required this.film});

  final FilmPreviewData film;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Card(
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
                    Image.network(
                      film.posterUrl,
                      width: 150,
                      height: 150,
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) {
                        return Image.asset(
                          'assets/images/film.jpg',
                          width: 150,
                          height: 150,
                          fit: BoxFit.cover,
                        );
                      },
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
                            '${film.ratingKinopoisk}',
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
                Center(
                  child: Text(
                    film.nameRu ?? ' - ',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                )
              ],
            )
        ),
      ),
      onTap: () {
        context.push('popular/${film.kinopoiskId}');
      },
    );


  }
}