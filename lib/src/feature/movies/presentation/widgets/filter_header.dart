import 'package:flutter/material.dart';
import 'package:tmdbmaze/src/feature/movies/export.dart';

class FilterHeader extends StatelessWidget {
  const FilterHeader({
    required this.filter,
    required this.onFilterReset,
    super.key,
  });

  final ShowFilter filter;
  final void Function(ShowFilter) onFilterReset;

  @override
  Widget build(BuildContext context) => Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      const Text(
        'Filters',
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
      TextButton.icon(
        onPressed: () => onFilterReset(const ShowFilter()),
        icon: const Icon(Icons.refresh),
        label: const Text('Reset'),
      ),
    ],
  );
}
