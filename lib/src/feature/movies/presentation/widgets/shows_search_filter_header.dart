import 'package:flutter/material.dart';
import 'package:tmdbmaze/src/feature/movies/export.dart';

class ShowsSearchFilterHeader extends StatelessWidget {
  const ShowsSearchFilterHeader({
    required this.onSearch,
    required this.onFilterChanged,
    this.initialQuery = '',
    this.initialFilter,
    this.availableTypes = const [],
    this.availableStatuses = const [],
    this.availableCountries = const {},
    this.showFilterButton = true,
    super.key,
  });

  final void Function(SearchQuery) onSearch;
  final void Function(ShowFilter) onFilterChanged;
  final String initialQuery;
  final ShowFilter? initialFilter;
  final List<String> availableTypes;
  final List<String> availableStatuses;
  final Map<String, String> availableCountries;
  final bool showFilterButton;

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Row(
          spacing: 8,
          children: [
            Expanded(
              child: ShowsSearchBar(onSearch: onSearch, initialQuery: initialQuery),
            ),
            if (showFilterButton)
              FilterButton(
                onFilterChanged: onFilterChanged,
                initialFilter: initialFilter,
                availableTypes: availableTypes,
                availableStatuses: availableStatuses,
                availableCountries: availableCountries,
              ),
          ],
        ),
      );
}
