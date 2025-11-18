import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart' show ReadContext;
import 'package:tmdbmaze/src/feature/movies/export.dart';

class ForceRefreshButton extends StatelessWidget {
  const ForceRefreshButton({super.key});

  @override
  Widget build(BuildContext context) => IconButton(
    icon: const Icon(Icons.cloud_download),
    tooltip: 'Force Refresh',
    onPressed: () {
      ScaffoldMessenger.of(context).clearMaterialBanners();
      context.read<ShowsBloc>().add(const LoadShows(forceRefresh: true));
    },
  );
}
