import 'package:flutter/material.dart';
import 'package:tmdbmaze/src/feature/movies/export.dart';

class FilterButton extends StatefulWidget {
  const FilterButton({
    required this.onFilterChanged,
    this.initialFilter,
    this.availableTypes = const [],
    this.availableStatuses = const [],
    this.availableCountries = const {},
    super.key,
  });

  final void Function(ShowFilter) onFilterChanged;
  final ShowFilter? initialFilter;
  final List<String> availableTypes;
  final List<String> availableStatuses;
  final Map<String, String> availableCountries;

  @override
  State<FilterButton> createState() => _FilterButtonState();
}

class _FilterButtonState extends State<FilterButton> {
  late ShowFilter _currentFilter;
  bool _hasActiveFilters = false;

  @override
  void initState() {
    super.initState();
    _currentFilter = widget.initialFilter ?? const ShowFilter();
    _updateActiveFilterStatus();
  }

  void _updateActiveFilterStatus() {
    _hasActiveFilters =
        _currentFilter.types.isNotEmpty ||
        _currentFilter.statuses.isNotEmpty ||
        _currentFilter.premieredFrom != null ||
        _currentFilter.premieredTo != null ||
        _currentFilter.endedFrom != null ||
        _currentFilter.endedTo != null ||
        _currentFilter.minRating != null ||
        _currentFilter.maxRating != null ||
        _currentFilter.countries.isNotEmpty ||
        _currentFilter.sortBy != SortField.name ||
        _currentFilter.sortOrder != SortOrder.asc;
  }

  Future<void> _showFilterBottomSheet() async {
    await showModalBottomSheet<void>(
      context: context,
      isScrollControlled: true,
      useSafeArea: true,
      builder: (context) => FilterBottomSheet(
        initialFilter: _currentFilter,
        onFilterApplied: (filter) {
          setState(() {
            _currentFilter = filter;
            _updateActiveFilterStatus();
          });
          widget.onFilterChanged(filter);
          Navigator.pop(context);
        },
        availableTypes: widget.availableTypes,
        availableStatuses: widget.availableStatuses,
        availableCountries: widget.availableCountries,
      ),
    );
  }

  @override
  Widget build(BuildContext context) => IconButton(
    icon: Badge(
      isLabelVisible: _hasActiveFilters,
      child: Icon(Icons.filter_list, color: _hasActiveFilters ? Colors.blue : null),
    ),
    onPressed: _showFilterBottomSheet,
  );
}
