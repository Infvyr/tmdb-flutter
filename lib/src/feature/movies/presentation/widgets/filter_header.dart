import 'package:flutter/material.dart';
import 'package:tmdbmaze/src/feature/movies/export.dart';

class FilterHeader extends StatelessWidget {
  const FilterHeader({required this.filter, required this.onFilterReset, super.key});

  final ShowFilter filter;
  final void Function(ShowFilter) onFilterReset;

  @override
  Widget build(BuildContext context) => Row(
    mainAxisAlignment: .spaceBetween,
    children: [
      const Text('Filters', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
      TextButton.icon(
        onPressed: () async {
          if (!context.mounted) return;
          final confirm = await showDialog<bool>(
            context: context,
            builder: (ctx) => AlertDialog(
              title: const Text('Reset filters?'),
              content: const Text('This will clear all selected filters.'),
              actions: [
                TextButton(onPressed: () => Navigator.pop(ctx, false), child: const Text('Cancel')),
                FilledButton(onPressed: () => Navigator.pop(ctx, true), child: const Text('Reset')),
              ],
            ),
          );
          if (!context.mounted) return;
          if (confirm == true) {
            onFilterReset(const ShowFilter());
          }
        },
        icon: const Icon(Icons.refresh),
        label: const Text('Reset'),
      ),
    ],
  );
}
