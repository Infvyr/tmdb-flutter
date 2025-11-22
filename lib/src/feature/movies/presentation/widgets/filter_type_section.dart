import 'package:flutter/material.dart';
import 'package:tmdbmaze/src/feature/movies/export.dart';

class FilterTypeSection extends StatelessWidget {
  const FilterTypeSection({
    required this.filter,
    required this.onFilterChanged,
    required this.availableTypes,
    super.key,
  });

  final ShowFilter filter;
  final void Function(ShowFilter) onFilterChanged;
  final List<String> availableTypes;

  @override
  Widget build(BuildContext context) {
    if (availableTypes.isEmpty) {
      return const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Type', style: TextStyle(fontWeight: FontWeight.w600)),
          SizedBox(height: 8),
          Text('No types available', style: TextStyle(fontStyle: FontStyle.italic)),
        ],
      );
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Type', style: TextStyle(fontWeight: FontWeight.w600)),
        const SizedBox(height: 8),
        Wrap(
          spacing: 8,
          runSpacing: 8,
          children: availableTypes.map((type) {
            return FilterChip(
              label: Text(type),
              selected: filter.types.contains(type),
              onSelected: (selected) {
                final updatedTypes = List<String>.from(filter.types);
                if (selected) {
                  updatedTypes.add(type);
                } else {
                  updatedTypes.remove(type);
                }
                onFilterChanged(filter.copyWith(types: updatedTypes));
              },
            );
          }).toList(),
        ),
      ],
    );
  }
}
