import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tmdbmaze/src/feature/movies/export.dart';
import 'package:tmdbmaze/src/shared/export.dart';

class ShowsScreen extends StatelessWidget {
  const ShowsScreen({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: const ShowsAppbar(),
    body: BlocBuilder<ShowsBloc, ShowsState>(
      builder: (context, state) => switch (state) {
        ShowsInitial() || ShowsLoading() => const LoadingView(),
        ShowsLoaded(:final shows, :final isFromCache) => LoadedView(
          shows,
          isFromCache: isFromCache,
        ),
        ShowsError(:final message) => ErrorView(
          message: message,
          onRetry: () => context.read<ShowsBloc>().add(const LoadShows()),
        ),
      },
    ),
  );
}
