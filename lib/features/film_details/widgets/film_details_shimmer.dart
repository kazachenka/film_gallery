import 'package:flutter/material.dart';
import 'package:shimmer_animation/shimmer_animation.dart';

class FilmDetailsShimmer extends StatelessWidget {
  const FilmDetailsShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    Widget buildBox({
      required double width,
      required double height,
      double borderRadius = 8,
    }) {
      return Shimmer(
        duration: const Duration(seconds: 2),
        child: Container(
          width: width,
          height: height,
          decoration: BoxDecoration(
            color: Colors.grey[300],
            borderRadius: BorderRadius.circular(borderRadius),
          ),
        ),
      );
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 15),

        Center(
          child: buildBox(width: 240, height: 28),
        ),

        const SizedBox(height: 5),

        Center(
          child: buildBox(width: 240, height: 16),
        ),

        const SizedBox(height: 10),

        Row(
          children: [
            buildBox(width: 40, height: 40, borderRadius: 20),

            const SizedBox(width: 10),

            buildBox(width: 50, height: 16),

            const SizedBox(width: 10),

            buildBox(width: 50, height: 16),

            const SizedBox(width: 8),

            buildBox(width: 50, height: 16),
          ],
        ),

        const SizedBox(height: 15),

        buildBox(width: double.infinity, height: 14),

        const SizedBox(height: 6),

        buildBox(width: double.infinity, height: 14),

        const SizedBox(height: 6),

        buildBox(width: double.infinity, height: 14),

        const SizedBox(height: 6),

        buildBox(width: 240, height: 14),

        const SizedBox(height: 15),
      ],
    );
  }
}