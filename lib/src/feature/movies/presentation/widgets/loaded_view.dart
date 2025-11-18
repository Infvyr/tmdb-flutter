import 'package:flutter/material.dart';
import 'package:tmdbmaze/src/feature/movies/export.dart';

class LoadedView extends StatelessWidget {
  const LoadedView(this.shows, {super.key, required this.isFromCache});

  final List<Show> shows;
  final bool isFromCache;

  @override
  Widget build(BuildContext context) => Column(
    children: [
      if (isFromCache)
        (() {
          WidgetsBinding.instance.addPostFrameCallback(
            (_) => ScaffoldMessenger.of(context).showMaterialBanner(CacheBanner(context)),
          );
          return const SizedBox.shrink();
        })(),
      Expanded(
        child: shows.isEmpty
            ? const Center(child: Text('No shows available'))
            : ShowsView(shows),
      ),
    ],
  );
}
