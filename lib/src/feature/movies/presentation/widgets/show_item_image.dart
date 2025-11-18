import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ShowItemImage extends StatelessWidget {
  const ShowItemImage(this.imageUrl, {super.key});

  final String? imageUrl;

  @override
  Widget build(BuildContext context) => AspectRatio(
    aspectRatio: 1.2,
    child: ClipRRect(
      borderRadius: const BorderRadiusGeometry.all(Radius.circular(6)),
      child: CachedNetworkImage(
        imageUrl: imageUrl ?? 'https://placehold.co/400x400/000000/FFFFFF.webp',
        imageBuilder: (context, imageProvider) => DecoratedBox(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: imageProvider,
              fit: BoxFit.cover,
              colorFilter: const ColorFilter.mode(Colors.red, BlendMode.colorBurn),
            ),
          ),
        ),
        placeholder: (context, url) => const Center(
          child: SizedBox(width: 36, height: 36, child: CircularProgressIndicator()),
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
  );
}
