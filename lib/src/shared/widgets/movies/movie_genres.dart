import 'package:flutter/material.dart';
import 'package:tmdbmaze/src/app/export.dart';

class MovieGenres extends StatelessWidget {
  const MovieGenres(this.genres, {super.key, this.count});

  final List<String> genres;
  final int? count;

  @override
  Widget build(BuildContext context) {
    final visibleGenres = genres.take(count ?? genres.length);

    return Wrap(
      spacing: 4,
      runSpacing: 4,
      children: [
        for (final genre in visibleGenres) ...[
          Chip(
            label: Text(
              genre,
              style: Theme.of(
                context,
              ).textTheme.labelSmall?.copyWith(color: GenreColor.getTextColor(genre)),
            ),
            backgroundColor: GenreColor.getBackgroundColor(genre),
            padding: EdgeInsets.zero,
            visualDensity: const VisualDensity(horizontal: -4, vertical: -4),
          ),
        ],
      ],
    );
  }
}
