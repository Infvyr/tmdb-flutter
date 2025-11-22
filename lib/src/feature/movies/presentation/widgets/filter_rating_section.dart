import 'package:flutter/material.dart';
import 'package:tmdbmaze/src/feature/movies/export.dart';

class FilterRatingSection extends StatelessWidget {
  const FilterRatingSection({
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
        const Text('Rating', style: TextStyle(fontWeight: FontWeight.w600)),
        const SizedBox(height: 8),
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Min: ${filter.minRating?.toStringAsFixed(1) ?? "0.0"}'),
                Text('Max: ${filter.maxRating?.toStringAsFixed(1) ?? "10.0"}'),
              ],
            ),
            const SizedBox(height: 8),
            Slider(
              min: 0.0,
              max: 10.0,
              divisions: 20,
              value: filter.minRating ?? 0.0,
              label: (filter.minRating ?? 0.0).toStringAsFixed(1),
              onChanged: (value) {
                onFilterChanged(filter.copyWith(minRating: value));
              },
            ),
            Slider(
              min: 0.0,
              max: 10.0,
              divisions: 20,
              value: filter.maxRating ?? 10.0,
              label: (filter.maxRating ?? 10.0).toStringAsFixed(1),
              onChanged: (value) {
                onFilterChanged(filter.copyWith(maxRating: value));
              },
            ),
          ],
        ),
      ],
    );
  }
}
