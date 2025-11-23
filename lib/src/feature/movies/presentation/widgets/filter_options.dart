import 'package:flutter/material.dart';
import 'package:tmdbmaze/src/feature/movies/export.dart';

class FilterBottomSheet extends StatefulWidget {
  const FilterBottomSheet({
    required this.initialFilter,
    required this.onFilterApplied,
    this.availableGenres = const [],
    this.availableStatuses = const [],
    this.availableCountries = const {},
    this.currentQuery,
    super.key,
  });

  final ShowFilter initialFilter;
  final void Function(ShowFilter) onFilterApplied;
  final List<String> availableGenres;
  final List<String> availableStatuses;
  final Map<String, String> availableCountries;
  final SearchQuery? currentQuery;

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

  void _handleReset(ShowFilter resetFilter) {
    _updateFilter(resetFilter);
    widget.onFilterApplied(resetFilter);
  }

  @override
  Widget build(BuildContext context) => DraggableScrollableSheet(
    expand: false,
    initialChildSize: FilterConstants.bottomSheetInitialSize,
    minChildSize: FilterConstants.bottomSheetMinSize,
    maxChildSize: FilterConstants.bottomSheetMaxSize,
    builder: (context, scrollController) => Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(FilterConstants.spacingXl),
          child: FilterHeader(
            filter: _filter,
            onFilterReset: (resetFilter) {
              _handleReset(resetFilter);
              if (mounted) {
                Navigator.of(context, rootNavigator: false).maybePop();
              }
            },
          ),
        ),
        // Scrollable Content
        Expanded(
          child: SingleChildScrollView(
            controller: scrollController,
            child: Padding(
              padding: const EdgeInsets.only(
                left: FilterConstants.spacingXl,
                right: FilterConstants.spacingXl,
                bottom: FilterConstants.spacingXxl,
              ),
              child: Column(
                spacing: FilterConstants.spacingXl,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (widget.currentQuery != null)
                    CurrentSearchDisplay(searchQuery: widget.currentQuery!),
                  FilterSummaryChips(filter: _filter, onRemoveFilter: _updateFilter),
                  FilterSortSectionOptimized(
                    initialFilter: _filter,
                    onFilterChanged: _updateFilter,
                  ),
                  FilterGenreDialog(
                    filter: _filter,
                    onFilterChanged: _updateFilter,
                    availableGenres: widget.availableGenres,
                  ),
                  FilterStatusSection(
                    filter: _filter,
                    onFilterChanged: _updateFilter,
                    availableStatuses: widget.availableStatuses,
                  ),
                  FilterRatingRange(initialFilter: _filter, onFilterChanged: _updateFilter),
                  FilterDateRangeSection(filter: _filter, onFilterChanged: _updateFilter),
                  FilterCountryDialog(
                    filter: _filter,
                    onFilterChanged: _updateFilter,
                    availableCountries: widget.availableCountries,
                  ),
                ],
              ),
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(FilterConstants.spacingXl),
          decoration: BoxDecoration(
            border: Border(top: BorderSide(color: Theme.of(context).dividerColor)),
          ),
          child: FilterActionButtons(filter: _filter, onApply: widget.onFilterApplied),
        ),
      ],
    ),
  );
}
