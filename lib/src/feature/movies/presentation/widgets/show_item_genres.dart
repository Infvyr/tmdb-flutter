import 'package:flutter/material.dart';
import 'package:tmdbmaze/src/app/export.dart';

class ShowItemGenres extends StatelessWidget {
  const ShowItemGenres(this.genres, {super.key});

  final List<String> genres;

  @override
  Widget build(BuildContext context) => Wrap(
    spacing: 4,
    runSpacing: 4,
    children: [
      for (final genre in genres.take(2)) ...[
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
