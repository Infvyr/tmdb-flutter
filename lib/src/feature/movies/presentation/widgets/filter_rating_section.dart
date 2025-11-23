import 'package:flutter/material.dart';
import 'package:tmdbmaze/src/feature/movies/export.dart';

class FilterRatingSection extends StatelessWidget {
  const FilterRatingSection({required this.filter, required this.onFilterChanged, super.key});

  final ShowFilter filter;
  final void Function(ShowFilter) onFilterChanged;

  @override
  Widget build(BuildContext context) {
    final minRating = filter.minRating ?? 0.0;
    final maxRating = filter.maxRating ?? 10.0;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Rating Range', style: TextStyle(fontWeight: FontWeight.w600)),
        const SizedBox(height: 12),
        Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Min: ${minRating.toStringAsFixed(1)}',
                    style: const TextStyle(fontSize: 12),
                  ),
                  const SizedBox(height: 6),
                  Slider(
                    min: 0.0,
                    max: maxRating,
                    divisions: 20,
                    value: minRating,
                    label: minRating.toStringAsFixed(1),
                    onChanged: (value) {
                      final newMin = value > maxRating ? maxRating : value;
                      onFilterChanged(filter.copyWith(minRating: newMin));
                    },
                  ),
                ],
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Max: ${maxRating.toStringAsFixed(1)}',
                    style: const TextStyle(fontSize: 12),
                  ),
                  const SizedBox(height: 6),
                  Slider(
                    min: minRating,
                    max: 10.0,
                    divisions: 20,
                    value: maxRating,
                    label: maxRating.toStringAsFixed(1),
                    onChanged: (value) {
                      final newMax = value < minRating ? minRating : value;
                      onFilterChanged(filter.copyWith(maxRating: newMax));
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
