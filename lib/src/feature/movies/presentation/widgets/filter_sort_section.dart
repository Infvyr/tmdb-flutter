import 'package:flutter/material.dart';
import 'package:tmdbmaze/src/feature/movies/export.dart';

class FilterSortSection extends StatelessWidget {
  const FilterSortSection({
    required this.filter,
    required this.onFilterChanged,
    super.key,
  });

  final ShowFilter filter;
  final void Function(ShowFilter) onFilterChanged;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Sort By', style: TextStyle(fontWeight: FontWeight.w600)),
        const SizedBox(height: 8),
        Row(
          children: [
            Expanded(
              child: SegmentedButton<SortField>(
                segments: const [
                  ButtonSegment(label: Text('Name'), value: SortField.name),
                  ButtonSegment(label: Text('Rating'), value: SortField.rating),
                  ButtonSegment(
                    label: Text('Premiered'),
                    value: SortField.premiered,
                  ),
                ],
                selected: {filter.sortBy},
                onSelectionChanged: (selected) {
                  onFilterChanged(filter.copyWith(sortBy: selected.first));
                },
              ),
            ),
          ],
        ),
        const SizedBox(height: 8),
        Wrap(
          spacing: 8,
          children: [
            ChoiceChip(
              label: const Text('ASC'),
              selected: filter.sortOrder == SortOrder.asc,
              onSelected: (selected) {
                if (selected) {
                  onFilterChanged(
                    filter.copyWith(sortOrder: SortOrder.asc),
                  );
                }
              },
            ),
            ChoiceChip(
              label: const Text('DESC'),
              selected: filter.sortOrder == SortOrder.desc,
              onSelected: (selected) {
                if (selected) {
                  onFilterChanged(
                    filter.copyWith(sortOrder: SortOrder.desc),
                  );
                }
              },
            ),
          ],
        ),
      ],
    );
  }
}
