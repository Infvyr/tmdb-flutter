import 'package:flutter/material.dart';
import 'package:tmdbmaze/src/feature/movies/export.dart';

class EmptyStateMessage extends StatelessWidget {
  const EmptyStateMessage({required this.currentQuery, required this.currentFilter, super.key});

  final SearchQuery currentQuery;
  final ShowFilter currentFilter;

  String _buildMessage() {
    final hasSearch = currentQuery.query.isNotEmpty;
    final hasFilters = _hasActiveFilters();

    if (hasSearch && hasFilters) {
      return _buildDetailedMessage();
    } else if (hasSearch) {
      return 'No shows found matching "${currentQuery.query}".\n\nTry adjusting your search term or applying filters.';
    } else if (hasFilters) {
      return _buildDetailedMessage();
    } else {
      return 'No shows available.\n\nPull to refresh or try searching.';
    }
  }

  bool _hasActiveFilters() =>
      currentFilter.genres.isNotEmpty ||
      currentFilter.statuses.isNotEmpty ||
      currentFilter.premieredFrom != null ||
      currentFilter.premieredTo != null ||
      currentFilter.endedFrom != null ||
      currentFilter.endedTo != null ||
      currentFilter.minRating != null ||
      currentFilter.maxRating != null ||
      currentFilter.countries.isNotEmpty ||
      currentFilter.sortBy != SortField.name ||
      currentFilter.sortOrder != SortOrder.asc;

  String _buildDetailedMessage() {
    final parts = <String>[];

    if (currentQuery.query.isNotEmpty) {
      parts.add('for "${currentQuery.query}"');
    }

    if (currentFilter.genres.isNotEmpty) {
      parts.add('genre: ${currentFilter.genres.join(", ")}');
    }

    if (currentFilter.statuses.isNotEmpty) {
      parts.add('status: ${currentFilter.statuses.join(", ")}');
    }

    if (currentFilter.minRating != null || currentFilter.maxRating != null) {
      final min = currentFilter.minRating ?? 0.0;
      final max = currentFilter.maxRating ?? 10.0;
      parts.add('rating: ${min.toStringAsFixed(1)}-${max.toStringAsFixed(1)}');
    }

    if (currentFilter.premieredFrom != null || currentFilter.premieredTo != null) {
      final from = currentFilter.premieredFrom ?? 'any';
      final to = currentFilter.premieredTo ?? 'any';
      parts.add('premiered: $from to $to');
    }

    if (currentFilter.endedFrom != null || currentFilter.endedTo != null) {
      final from = currentFilter.endedFrom ?? 'any';
      final to = currentFilter.endedTo ?? 'any';
      parts.add('ended: $from to $to');
    }

    if (currentFilter.countries.isNotEmpty) {
      parts.add('countries: ${currentFilter.countries.join(", ")}');
    }

    final criteria = parts.join(', ');
    return 'No shows match your search criteria:\n$criteria\n\nTry adjusting your filters or search term.';
  }

  @override
  Widget build(BuildContext context) => Center(
    child: Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.search_off, size: 64, color: Colors.grey[400]),
          const SizedBox(height: 16),
          Text(
            _buildMessage(),
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16, color: Colors.grey[700], height: 1.5),
          ),
        ],
      ),
    ),
  );
}
