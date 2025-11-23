import 'package:flutter/material.dart';
import 'package:tmdbmaze/src/feature/movies/export.dart';

class FilterSortSectionOptimized extends StatefulWidget {
  const FilterSortSectionOptimized({
    required this.initialFilter,
    required this.onFilterChanged,
    super.key,
  });

  final ShowFilter initialFilter;
  final void Function(ShowFilter) onFilterChanged;

  @override
  State<FilterSortSectionOptimized> createState() => _FilterSortSectionOptimizedState();
}

class _FilterSortSectionOptimizedState extends State<FilterSortSectionOptimized> {
  late ShowFilter _filter;

  @override
  void initState() {
    super.initState();
    _filter = widget.initialFilter;
  }

  @override
  void didUpdateWidget(FilterSortSectionOptimized oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.initialFilter != widget.initialFilter) {
      setState(() => _filter = widget.initialFilter);
    }
  }

  @override
  Widget build(BuildContext context) => Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      const Text('Sort By', style: TextStyle(fontWeight: FontWeight.w600)),
      const SizedBox(height: 8),
      Row(
        children: [
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: SegmentedButton<SortField>(
                segments: const [
                  ButtonSegment(label: Text('Name'), value: SortField.name),
                  ButtonSegment(label: Text('Rating'), value: SortField.rating),
                  ButtonSegment(label: Text('Premiered'), value: SortField.premiered),
                  ButtonSegment(label: Text('Ended'), value: SortField.ended),
                ],
                selected: {_filter.sortBy ?? SortField.name},
                onSelectionChanged: (selected) {
                  setState(() => _filter = _filter.copyWith(sortBy: selected.first));
                  widget.onFilterChanged(_filter);
                },
              ),
            ),
          ),
        ],
      ),
      const SizedBox(height: 8),
      Row(
        children: [
          Expanded(
            child: SegmentedButton<SortOrder>(
              segments: const [
                ButtonSegment(label: Text('ASC'), value: SortOrder.asc),
                ButtonSegment(label: Text('DESC'), value: SortOrder.desc),
              ],
              selected: {_filter.sortOrder},
              onSelectionChanged: (selected) {
                setState(() => _filter = _filter.copyWith(sortOrder: selected.first));
                widget.onFilterChanged(_filter);
              },
            ),
          ),
        ],
      ),
    ],
  );
}
