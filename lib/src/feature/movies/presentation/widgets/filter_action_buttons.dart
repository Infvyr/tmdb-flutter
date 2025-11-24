import 'package:flutter/material.dart';
import 'package:tmdbmaze/src/feature/movies/export.dart';

class FilterActionButtons extends StatelessWidget {
  const FilterActionButtons({required this.filter, required this.onApply, super.key});

  final ShowFilter filter;
  final void Function(ShowFilter) onApply;

  @override
  Widget build(BuildContext context) => Row(
    children: [
      Expanded(
        child: TextButton(
          onPressed: () => Navigator.pop(context),
          style: ButtonStyle(elevation: WidgetStateProperty.all(0)),
          child: const Text('Cancel'),
        ),
      ),
      const SizedBox(width: 12),
      Expanded(
        child: OutlinedButton(onPressed: () => onApply(filter), child: const Text('Apply')),
      ),
    ],
  );
}
