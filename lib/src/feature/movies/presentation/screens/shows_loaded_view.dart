import 'package:flutter/material.dart';
import 'package:tmdbmaze/src/app/di/service_locator.dart';
import 'package:tmdbmaze/src/feature/movies/export.dart';

class ShowsLoadedView extends StatefulWidget {
  const ShowsLoadedView({
    required this.shows,
    required this.isFromCache,
    required this.pagination,
    required this.onSearch,
    required this.onFilterChanged,
    required this.onPageChanged,
    required this.currentQuery,
    required this.currentFilter,
    super.key,
  });

  final List<Show> shows;
  final bool isFromCache;
  final PaginationParams pagination;
  final void Function(SearchQuery) onSearch;
  final void Function(ShowFilter) onFilterChanged;
  final void Function(int) onPageChanged;
  final SearchQuery currentQuery;
  final ShowFilter currentFilter;

  @override
  State<ShowsLoadedView> createState() => _ShowsLoadedViewState();
}

class _ShowsLoadedViewState extends State<ShowsLoadedView> {
  late FilterOptionsRepository _filterOptionsRepository;
  FilterOptions _filterOptions = const FilterOptions();

  @override
  void initState() {
    super.initState();
    _filterOptionsRepository = getIt<FilterOptionsRepository>();
    _updateFilterOptions();
  }

  @override
  void didUpdateWidget(ShowsLoadedView oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.shows != widget.shows) {
      _updateFilterOptions();
    }
  }

  void _updateFilterOptions() {
    setState(() {
      _filterOptions = _filterOptionsRepository.extractFilterOptions(widget.shows);
    });
  }

  @override
  Widget build(BuildContext context) => Padding(
    padding: const EdgeInsets.only(top: 15),
    child: Column(
      children: [
        ShowsSearchFilterHeader(
          onSearch: widget.onSearch,
          onFilterChanged: widget.onFilterChanged,
          currentQuery: widget.currentQuery,
          availableGenres: _filterOptions.genres,
          availableStatuses: _filterOptions.statuses,
          availableCountries: _filterOptions.countries,
        ),
        Expanded(
          child: LoadedView(
            widget.shows,
            isFromCache: widget.isFromCache,
            currentQuery: widget.currentQuery,
            currentFilter: widget.currentFilter,
          ),
        ),
        if (widget.shows.isNotEmpty)
          Padding(
            padding: const EdgeInsets.all(16),
            child: PaginationControls(
              pagination: widget.pagination,
              onPageChanged: widget.onPageChanged,
            ),
          ),
      ],
    ),
  );
}
