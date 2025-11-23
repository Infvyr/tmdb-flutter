import 'package:flutter/material.dart';
import 'package:tmdbmaze/src/app/routing/routes.dart';
import 'package:tmdbmaze/src/feature/movies/export.dart';
import 'package:tmdbmaze/src/shared/export.dart';

class ShowItem extends StatelessWidget {
  const ShowItem(this.show, {super.key});

  final Show show;

  void _navigateToDetail(BuildContext context) {
    Navigator.of(context).pushNamed(AppRoutes.show, arguments: show);
  }

  @override
  Widget build(BuildContext context) => GestureDetector(
    onTap: () => _navigateToDetail(context),
    child: Column(
      crossAxisAlignment: .start,
      children: [
        ShowItemImage(show.image?.medium, status: show.status),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
          child: Column(
            crossAxisAlignment: .start,
            spacing: 5,
            children: [ShowItemName(show.name), MovieGenres(show.genres, count: 2)],
          ),
        ),
      ],
    ),
  );
}
