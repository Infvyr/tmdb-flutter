import 'package:flutter/material.dart';
import 'package:tmdbmaze/src/feature/movies/export.dart';

class ShowItem extends StatelessWidget {
  const ShowItem(this.show, {super.key});

  final Show show;

  @override
  Widget build(BuildContext context) => Column(
    crossAxisAlignment: .start,
    children: [
      ShowItemImage(show.image?.medium, status: show.status),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
        child: Column(
          crossAxisAlignment: .start,
          spacing: 5,
          children: [ShowItemName(show.name), ShowItemGenres(show.genres)],
        ),
      ),
    ],
  );
}
