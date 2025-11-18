import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart' show ReadContext;
import 'package:tmdbmaze/src/feature/movies/export.dart';

class LoadFromStorageButton extends StatelessWidget {
  const LoadFromStorageButton({super.key});

  @override
  Widget build(BuildContext context) => IconButton(
    icon: const Icon(Icons.storage),
    tooltip: 'Load Local',
    onPressed: () => context.read<ShowsBloc>().add(LoadLocalShows()),
  );
}
