import 'package:flutter/material.dart';
import 'package:tmdbmaze/src/feature/movies/export.dart';

class FilterButton extends StatefulWidget {
  const FilterButton({
    required this.onFilterChanged,
    this.initialFilter,
    this.currentQuery,
    this.availableGenres = const [],
    this.availableStatuses = const [],
    this.availableCountries = const {},
    super.key,
  });

  final void Function(ShowFilter) onFilterChanged;
  final ShowFilter? initialFilter;
  final SearchQuery? currentQuery;
  final List<String> availableGenres;
  final List<String> availableStatuses;
  final Map<String, String> availableCountries;

  @override
  State<FilterButton> createState() => _FilterButtonState();
}

class _FilterButtonState extends State<FilterButton> {
  late ShowFilter _currentFilter;

  @override
  void initState() {
    super.initState();
    _currentFilter = widget.initialFilter ?? const ShowFilter();
  }

  @override
  void didUpdateWidget(covariant FilterButton oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.initialFilter != widget.initialFilter) {
      setState(() {
        _currentFilter = widget.initialFilter ?? const ShowFilter();
      });
    }
  }

  int _activeFiltersCount() {
    int count = 0;
    if (_currentFilter.genres.isNotEmpty) count++;
    if (_currentFilter.statuses.isNotEmpty) count++;
    if (_currentFilter.premieredFrom != null || _currentFilter.premieredTo != null) {
      count++;
    }
    if (_currentFilter.endedFrom != null || _currentFilter.endedTo != null) count++;
    if (_currentFilter.minRating != null || _currentFilter.maxRating != null) count++;
    if (_currentFilter.countries.isNotEmpty) count++;

    final isDefaultSortField =
        _currentFilter.sortBy == null || _currentFilter.sortBy == SortField.name;
    final isDefaultSortOrder = _currentFilter.sortOrder == SortOrder.asc;
    if (!(isDefaultSortField && isDefaultSortOrder)) {
      count++;
    }
    return count;
  }

  bool _hasActiveFilters() => _activeFiltersCount() > 0;

  Future<void> _showFilterBottomSheet() async {
    final wasFiltered = _activeFiltersCount() > 0;
    await showModalBottomSheet<void>(
      context: context,
      isScrollControlled: true,
      useSafeArea: true,
      builder: (context) => FilterBottomSheet(
        initialFilter: _currentFilter,
        currentQuery: widget.currentQuery,
        onFilterApplied: (filter) {
          setState(() {
            _currentFilter = filter;
          });
          widget.onFilterChanged(filter);
          Navigator.pop(context);
        },
        availableGenres: widget.availableGenres,
        availableStatuses: widget.availableStatuses,
        availableCountries: widget.availableCountries,
      ),
    );
    // Show snackbar if filters were reset
    if (mounted && wasFiltered && _activeFiltersCount() == 0) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Filters reset')));
    }
  }

  @override
  Widget build(BuildContext context) {
    final hasActive = _hasActiveFilters();
    final count = _activeFiltersCount();

    return IconButton(
      icon: Badge(
        isLabelVisible: hasActive,
        label: hasActive ? Text(count.toString()) : null,
        child: Icon(Icons.filter_list, color: hasActive ? Colors.blue : null),
      ),
      onPressed: _showFilterBottomSheet,
    );
  }
}
