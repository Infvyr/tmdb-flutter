import 'package:flutter/material.dart';

class CacheBanner extends MaterialBanner {
  CacheBanner(BuildContext context, {super.key})
    : super(
        content: Row(
          children: [
            Icon(
              Icons.storage,
              size: 16,
              color: Theme.of(context).colorScheme.onTertiaryContainer,
            ),
            const SizedBox(width: 8),
            Text(
              'Loaded from cache',
              style: TextStyle(color: Theme.of(context).colorScheme.onTertiaryContainer),
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.close, size: 16),
            onPressed: () => ScaffoldMessenger.of(context).clearMaterialBanners(),
          ),
        ],
      );
}
