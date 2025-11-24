import 'package:flutter/material.dart';
import 'package:tmdbmaze/src/feature/movies/export.dart';

class ShowsAppbar extends StatelessWidget implements PreferredSizeWidget {
  const ShowsAppbar({super.key});

  @override
  Widget build(BuildContext context) => AppBar(
    title: const Text('Shows'),
    actions: const [ForceRefreshButton(), LoadFromStorageButton()],
    automaticallyImplyLeading: false,
  );

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
