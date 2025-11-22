import 'package:flutter/material.dart';
import 'package:tmdbmaze/src/feature/movies/export.dart';

class PaginationControls extends StatelessWidget {
  const PaginationControls({
    required this.pagination,
    required this.onPageChanged,
    super.key,
  });

  final PaginationParams pagination;
  final void Function(int) onPageChanged;

  @override
  Widget build(BuildContext context) {
    // Show pagination if there are multiple pages (totalItems > pageSize)
    if (pagination.totalItems <= pagination.pageSize) {
      return const SizedBox.shrink();
    }

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      spacing: 12,
      children: [
        if (pagination.hasPreviousPage)
          OutlinedButton(
            onPressed: () => onPageChanged(pagination.currentPage - 1),
            child: const Text('← Previous'),
          )
        else
          const OutlinedButton(onPressed: null, child: Text('← Previous')),
        Text(
          'Page ${pagination.currentPage} of ${pagination.totalPages}',
          style: const TextStyle(fontWeight: FontWeight.w500),
        ),
        if (pagination.hasNextPage)
          OutlinedButton(
            onPressed: () => onPageChanged(pagination.currentPage + 1),
            child: const Text('Next →'),
          )
        else
          const OutlinedButton(onPressed: null, child: Text('Next →')),
      ],
    );
  }
}
