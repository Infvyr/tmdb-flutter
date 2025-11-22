import 'package:flutter/material.dart';
import 'package:tmdbmaze/src/feature/movies/export.dart';

class FilterStatusSection extends StatelessWidget {
  const FilterStatusSection({
    required this.filter,
    required this.onFilterChanged,
    required this.availableStatuses,
    super.key,
  });

  final ShowFilter filter;
  final void Function(ShowFilter) onFilterChanged;
  final List<String> availableStatuses;

  @override
  Widget build(BuildContext context) {
    if (availableStatuses.isEmpty) {
      return const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Status', style: TextStyle(fontWeight: FontWeight.w600)),
          SizedBox(height: 8),
          Text('No statuses available', style: TextStyle(fontStyle: FontStyle.italic)),
        ],
      );
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Status', style: TextStyle(fontWeight: FontWeight.w600)),
        const SizedBox(height: 8),
        Wrap(
          spacing: 8,
          runSpacing: 8,
          children: availableStatuses.map((status) {
            return FilterChip(
              label: Text(status),
              selected: filter.statuses.contains(status),
              onSelected: (selected) {
                final updatedStatuses = List<String>.from(filter.statuses);
                if (selected) {
                  updatedStatuses.add(status);
                } else {
                  updatedStatuses.remove(status);
                }
                onFilterChanged(filter.copyWith(statuses: updatedStatuses));
              },
            );
          }).toList(),
        ),
      ],
    );
  }
}
