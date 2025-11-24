import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tmdbmaze/src/feature/movies/export.dart';
import 'package:tmdbmaze/src/shared/export.dart';

class ShowsScreen extends StatelessWidget {
  const ShowsScreen({super.key});

  void _onSearch(BuildContext context, SearchQuery query) {
    context.read<ShowsBloc>().add(SearchShowsEvent(query));
  }

  void _onFilterChanged(BuildContext context, ShowFilter filter) {
    context.read<ShowsBloc>().add(ApplyFilterEvent(filter));
  }

  void _onPageChanged(BuildContext context, int page) {
    final state = context.read<ShowsBloc>().state;
    if (state is ShowsLoaded && state.pagination != null) {
      final pagination = state.pagination!.copyWith(currentPage: page);
      context.read<ShowsBloc>().add(ChangePaginationEvent(pagination));
    }
  }

  Future<void> _onRefresh(BuildContext context) async {
    context.read<ShowsBloc>().add(const LoadShows());
    await Future<void>.delayed(const Duration(milliseconds: 500));
  }

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: const ShowsAppbar(),
    body: BlocBuilder<ShowsBloc, ShowsState>(
      builder: (context, state) => switch (state) {
        ShowsInitial() || ShowsLoading() => const LoadingView(),
        ShowsLoaded(
          :final shows,
          :final isFromCache,
          :final pagination,
          :final currentQuery,
          :final currentFilter,
        ) =>
          RefreshIndicator.adaptive(
            onRefresh: () => _onRefresh(context),
            child: ShowsLoadedView(
              shows: shows,
              isFromCache: isFromCache,
              pagination: pagination ?? const PaginationParams(),
              currentQuery: currentQuery ?? const SearchQuery(),
              currentFilter: currentFilter ?? const ShowFilter(),
              onSearch: (query) => _onSearch(context, query),
              onFilterChanged: (filter) => _onFilterChanged(context, filter),
              onPageChanged: (page) => _onPageChanged(context, page),
            ),
          ),
        ShowsError(:final message) => ErrorView(
          message: message,
          onRetry: () => context.read<ShowsBloc>().add(const LoadShows()),
        ),
      },
    ),
  );
}
