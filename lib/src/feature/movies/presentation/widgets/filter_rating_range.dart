import 'package:flutter/material.dart';
import 'package:tmdbmaze/src/feature/movies/export.dart';

class FilterRatingRange extends StatefulWidget {
  const FilterRatingRange({required this.initialFilter, required this.onFilterChanged, super.key});

  final ShowFilter initialFilter;
  final void Function(ShowFilter) onFilterChanged;

  @override
  State<FilterRatingRange> createState() => _FilterRatingRangeState();
}

class _FilterRatingRangeState extends State<FilterRatingRange> {
  late ShowFilter _filter;

  @override
  void initState() {
    super.initState();
    _filter = widget.initialFilter;
  }

  @override
  void didUpdateWidget(FilterRatingRange oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.initialFilter != widget.initialFilter) {
      setState(() => _filter = widget.initialFilter);
    }
  }

  @override
  Widget build(BuildContext context) {
    final minRating = _filter.minRating ?? 0.0;
    final maxRating = _filter.maxRating ?? 10.0;

    return Column(
      crossAxisAlignment: .start,
      spacing: 12,
      children: [
        const Text('Rating Range', style: TextStyle(fontWeight: FontWeight.w600)),
        Row(
          spacing: 12,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: .start,
                spacing: 6,
                children: [
                  Text('Min: ${minRating.toStringAsFixed(1)}'),
                  Slider(
                    min: 0,
                    max: maxRating,
                    divisions: 20,
                    value: minRating,
                    label: minRating.toStringAsFixed(1),
                    onChanged: (value) {
                      final newMin = value > maxRating ? maxRating : value;
                      setState(() => _filter = _filter.copyWith(minRating: newMin));
                      widget.onFilterChanged(_filter);
                    },
                    padding: const EdgeInsets.only(left: 8, right: 14),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Max: ${maxRating.toStringAsFixed(1)}'),
                  const SizedBox(height: 6),
                  Slider(
                    min: minRating,
                    max: 10,
                    divisions: 20,
                    value: maxRating,
                    label: maxRating.toStringAsFixed(1),
                    onChanged: (value) {
                      final newMax = value < minRating ? minRating : value;
                      setState(() => _filter = _filter.copyWith(maxRating: newMax));
                      widget.onFilterChanged(_filter);
                    },
                    padding: const EdgeInsets.only(right: 14),
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
