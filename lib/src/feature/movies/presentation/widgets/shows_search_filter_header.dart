import 'package:flutter/material.dart';
import 'package:tmdbmaze/src/feature/movies/export.dart';

class ShowsSearchFilterHeader extends StatelessWidget {
  const ShowsSearchFilterHeader({
    required this.onSearch,
    required this.onFilterChanged,
    this.initialQuery = '',
    this.initialFilter,
    this.currentQuery,
    this.availableGenres = const [],
    this.availableStatuses = const [],
    this.availableCountries = const {},
    super.key,
  });

  final void Function(SearchQuery) onSearch;
  final void Function(ShowFilter) onFilterChanged;
  final String initialQuery;
  final ShowFilter? initialFilter;
  final SearchQuery? currentQuery;
  final List<String> availableGenres;
  final List<String> availableStatuses;
  final Map<String, String> availableCountries;

  @override
  Widget build(BuildContext context) => Padding(
    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
    child: Row(
      spacing: 8,
      children: [
        Expanded(
          child: ShowsSearchBar(onSearch: onSearch, initialQuery: initialQuery),
        ),
        FilterButton(
          onFilterChanged: onFilterChanged,
          initialFilter: initialFilter,
          currentQuery: currentQuery,
          availableGenres: availableGenres,
          availableStatuses: availableStatuses,
          availableCountries: availableCountries,
        ),
      ],
    ),
  );
}
