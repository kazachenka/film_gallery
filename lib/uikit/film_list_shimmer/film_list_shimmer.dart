import 'package:flutter/material.dart';
import 'package:shimmer_animation/shimmer_animation.dart';

class FilmGridSkeleton extends StatelessWidget {
  const FilmGridSkeleton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: GridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 8.0,
        mainAxisSpacing: 8.0,
        childAspectRatio: 0.78,
        children: [
          FilmCardSkeleton(),
          FilmCardSkeleton(),
          FilmCardSkeleton(),
          FilmCardSkeleton(),
          FilmCardSkeleton(),
          FilmCardSkeleton(),
        ],
      ),
    );
  }
}

class FilmCardSkeleton extends StatelessWidget {
  const FilmCardSkeleton({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer(
      duration: const Duration(seconds: 2),
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
                  Container(
                    width: 150,
                    height: 150,
                    color: Colors.grey[300],
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Center(
                child: Container(
                  width: 140,
                  height: 14,
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Center(
                child: Container(
                  width: 120,
                  height: 14,
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}