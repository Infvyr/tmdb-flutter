import 'package:flutter/material.dart';
import 'package:tmdbmaze/src/feature/movies/export.dart';

class FilterActionButtons extends StatelessWidget {
  const FilterActionButtons({
    required this.filter,
    required this.onApply,
    required this.onCancel,
    super.key,
  });

  final ShowFilter filter;
  final void Function(ShowFilter) onApply;
  final VoidCallback onCancel;

  @override
  Widget build(BuildContext context) => Row(
    children: [
      Expanded(
        child: OutlinedButton(
          onPressed: onCancel,
          child: const Text('Cancel'),
        ),
      ),
      const SizedBox(width: 12),
      Expanded(
        child: ElevatedButton(
          onPressed: () => onApply(filter),
          child: const Text('Apply'),
        ),
      ),
    ],
  );
}
