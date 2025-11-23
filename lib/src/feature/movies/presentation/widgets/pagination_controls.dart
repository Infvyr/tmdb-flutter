import 'package:flutter/material.dart';
import 'package:tmdbmaze/src/feature/movies/export.dart';

class PaginationControls extends StatelessWidget {
  const PaginationControls({required this.pagination, required this.onPageChanged, super.key});

  final PaginationParams pagination;
  final void Function(int) onPageChanged;

  @override
  Widget build(BuildContext context) {
    // Show pagination if there are multiple pages (totalItems > pageSize)
    if (pagination.totalItems <= pagination.pageSize) {
      return const SizedBox.shrink();
    }

    return LayoutBuilder(
      builder: (context, constraints) => SizedBox(
        width: double.infinity,
        child: Row(
          mainAxisAlignment: .center,
          spacing: 12,
          children: [
            if (pagination.hasPreviousPage)
              Expanded(
                child: OutlinedButton.icon(
                  onPressed: () => onPageChanged(pagination.currentPage - 1),
                  icon: const Icon(Icons.chevron_left),
                  label: const Text('Prev'),
                ),
              )
            else
              Expanded(
                child: OutlinedButton.icon(
                  onPressed: null,
                  icon: const Icon(Icons.chevron_left),
                  label: const Text('Prev'),
                ),
              ),
            if (constraints.maxWidth >= 360)
              Text(
                'Page ${pagination.currentPage} of ${pagination.totalPages}',
                style: const TextStyle(fontWeight: FontWeight.w500),
              ),
            if (pagination.hasNextPage)
              Expanded(
                child: OutlinedButton.icon(
                  onPressed: () => onPageChanged(pagination.currentPage + 1),
                  icon: const Icon(Icons.chevron_right),
                  iconAlignment: IconAlignment.end,
                  label: const Text('Next'),
                ),
              )
            else
              Expanded(
                child: OutlinedButton.icon(
                  onPressed: null,
                  icon: const Icon(Icons.chevron_right),
                  iconAlignment: IconAlignment.end,
                  label: const Text('Next'),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
