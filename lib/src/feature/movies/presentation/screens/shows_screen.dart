import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tmdbmaze/src/feature/movies/export.dart';
import 'package:tmdbmaze/src/shared/export.dart';

class ShowsScreen extends StatelessWidget {
  const ShowsScreen({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: const Text('Shows'),
      actions: [
        IconButton(
          icon: const Icon(Icons.cloud_download),
          tooltip: 'Force Refresh',
          onPressed: () {
            context.read<ShowsBloc>().add(const LoadShows(forceRefresh: true));
          },
        ),
        IconButton(
          icon: const Icon(Icons.storage),
          tooltip: 'Load Local',
          onPressed: () {
            context.read<ShowsBloc>().add(LoadLocalShows());
          },
        ),
      ],
    ),
    body: BlocBuilder<ShowsBloc, ShowsState>(
      builder: (context, state) => switch (state) {
        ShowsInitial() => const Center(child: Text('Press button to load posts')),
        ShowsLoading() => const LoadingView(),
        ShowsLoaded(:final shows, :final isFromCache) => Column(
          children: [
            if (isFromCache)
              Container(
                color: Colors.orange.shade100,
                padding: const EdgeInsets.all(8),
                child: const Row(
                  children: [Icon(Icons.storage, size: 16), SizedBox(width: 8), Text('Loaded from cache')],
                ),
              ),
            Expanded(
              child: shows.isEmpty
                  ? const Center(child: Text('No shows available'))
                  : ListView.builder(
                      itemCount: shows.length,
                      itemBuilder: (context, index) {
                        final show = shows[index];
                        return ListTile(
                          leading: CircleAvatar(child: Text('${show.showId}')),
                          title: Text(show.name),
                          subtitle: Text(show.status),
                        );
                      },
                    ),
            ),
          ],
        ),
        ShowsError(:final message) => ErrorView(
          message: message,
          onRetry: () => context.read<ShowsBloc>().add(const LoadShows()),
        ),
      },
    ),
    floatingActionButton: FloatingActionButton(
      onPressed: () => context.read<ShowsBloc>().add(const LoadShows()),
      child: const Icon(Icons.refresh),
    ),
  );
}
