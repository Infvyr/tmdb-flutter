import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:tmdbmaze/src/feature/movies/export.dart';

class ShowItemImage extends StatelessWidget {
  const ShowItemImage(this.imageUrl, {required this.status, super.key});

  final String? imageUrl;
  final String status;

  @override
  Widget build(BuildContext context) => AspectRatio(
    aspectRatio: 1.2,
    child: Stack(
      children: [
        Positioned.fill(
          child: ClipRRect(
            borderRadius: const BorderRadiusGeometry.all(Radius.circular(6)),
            child: CachedNetworkImage(
              imageUrl: imageUrl ?? 'https://placehold.co/400x400/000000/FFFFFF.webp',
              imageBuilder: (context, imageProvider) => DecoratedBox(
                decoration: BoxDecoration(
                  image: DecorationImage(image: imageProvider, fit: BoxFit.cover),
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                ),
              ),
              placeholder: (context, url) => const Center(
                child: SizedBox(
                  width: 36,
                  height: 36,
                  child: CircularProgressIndicator(),
                ),
              ),
              errorWidget: (_, url, error) => Column(
                children: [
                  const Icon(Icons.error),
                  Text('$error', style: Theme.of(context).textTheme.bodyMedium),
                  Text(url, style: Theme.of(context).textTheme.bodyMedium),
                ],
              ),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(top: 8, right: 8, child: ShowStatus(status)),
      ],
    ),
  );
}
