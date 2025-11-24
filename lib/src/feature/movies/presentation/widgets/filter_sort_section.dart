import 'package:flutter/material.dart';
import 'package:tmdbmaze/src/app/export.dart';
import 'package:tmdbmaze/src/feature/movies/export.dart';

class FilterSortSection extends StatelessWidget {
  const FilterSortSection({required this.filter, required this.onFilterChanged, super.key});

  final ShowFilter filter;
  final void Function(ShowFilter) onFilterChanged;

  @override
  Widget build(BuildContext context) => Column(
    crossAxisAlignment: .start,
    spacing: FilterConstants.spacingM,
    children: [
      const Text('Sort By', style: TextStyle(fontWeight: FontWeight.w600)),
      Row(
        children: [
          Expanded(
            child: SegmentedButton<SortField>(
              segments: const [
                ButtonSegment(label: Text('Name'), value: SortField.name),
                ButtonSegment(label: Text('Rating'), value: SortField.rating),
                ButtonSegment(label: Text('Premiered'), value: SortField.premiered),
                ButtonSegment(label: Text('Ended'), value: SortField.ended),
              ],
              selected: {filter.sortBy ?? SortField.name},
              onSelectionChanged: (selected) {
                onFilterChanged(filter.copyWith(sortBy: selected.first));
              },
            ),
          ),
        ],
      ),
      Row(
        children: [
          Expanded(
            child: SegmentedButton<SortOrder>(
              segments: const [
                ButtonSegment(label: Text('ASC'), value: SortOrder.asc),
                ButtonSegment(label: Text('DESC'), value: SortOrder.desc),
              ],
              selected: {filter.sortOrder},
              onSelectionChanged: (selected) {
                onFilterChanged(filter.copyWith(sortOrder: selected.first));
              },
            ),
          ),
        ],
      ),
    ],
  );
}
