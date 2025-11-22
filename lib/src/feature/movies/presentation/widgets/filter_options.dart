import 'package:flutter/material.dart';
import 'package:tmdbmaze/src/feature/movies/export.dart';

class FilterBottomSheet extends StatefulWidget {
  const FilterBottomSheet({
    required this.initialFilter,
    required this.onFilterApplied,
    this.availableTypes = const [],
    this.availableStatuses = const [],
    this.availableCountries = const {},
    super.key,
  });

  final ShowFilter initialFilter;
  final void Function(ShowFilter) onFilterApplied;
  final List<String> availableTypes;
  final List<String> availableStatuses;
  final Map<String, String> availableCountries;

  @override
  State<FilterBottomSheet> createState() => _FilterBottomSheetState();
}

class _FilterBottomSheetState extends State<FilterBottomSheet> {
  late ShowFilter _filter;

  @override
  void initState() {
    super.initState();
    _filter = widget.initialFilter;
  }

  void _updateFilter(ShowFilter newFilter) {
    setState(() => _filter = newFilter);
  }

  @override
  Widget build(BuildContext context) => DraggableScrollableSheet(
    expand: false,
    initialChildSize: 0.7,
    minChildSize: 0.5,
    maxChildSize: 0.95,
    builder: (context, scrollController) => SingleChildScrollView(
      controller: scrollController,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          spacing: 16,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FilterHeader(filter: _filter, onFilterReset: _updateFilter),
            FilterSortSection(filter: _filter, onFilterChanged: _updateFilter),
            FilterTypeSection(
              filter: _filter,
              onFilterChanged: _updateFilter,
              availableTypes: widget.availableTypes,
            ),
            FilterStatusSection(
              filter: _filter,
              onFilterChanged: _updateFilter,
              availableStatuses: widget.availableStatuses,
            ),
            FilterRatingSection(filter: _filter, onFilterChanged: _updateFilter),
            FilterCountrySection(
              filter: _filter,
              onFilterChanged: _updateFilter,
              availableCountries: widget.availableCountries,
            ),
            const SizedBox(height: 8),
            FilterActionButtons(
              filter: _filter,
              onApply: widget.onFilterApplied,
              onCancel: () => Navigator.pop(context),
            ),
          ],
        ),
      ),
    ),
  );
}
