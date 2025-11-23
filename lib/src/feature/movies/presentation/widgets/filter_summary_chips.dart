import 'package:flutter/material.dart';
import 'package:tmdbmaze/src/feature/movies/export.dart';

class FilterSummaryChips extends StatelessWidget {
  const FilterSummaryChips({required this.filter, required this.onRemoveFilter, super.key});

  final ShowFilter filter;
  final void Function(ShowFilter) onRemoveFilter;

  void _removeGenre(String genre) {
    final updated = List<String>.from(filter.genres)..remove(genre);
    onRemoveFilter(filter.copyWith(genres: updated));
  }

  void _removeStatus(String status) {
    final updated = List<String>.from(filter.statuses)..remove(status);
    onRemoveFilter(filter.copyWith(statuses: updated));
  }

  void _removeCountry(String country) {
    final updated = List<String>.from(filter.countries)..remove(country);
    onRemoveFilter(filter.copyWith(countries: updated));
  }

  @override
  Widget build(BuildContext context) {
    final hasActiveFilters =
        filter.genres.isNotEmpty ||
        filter.statuses.isNotEmpty ||
        filter.premieredFrom != null ||
        filter.premieredTo != null ||
        filter.endedFrom != null ||
        filter.endedTo != null ||
        filter.minRating != null ||
        filter.maxRating != null ||
        filter.countries.isNotEmpty;

    if (!hasActiveFilters) {
      return const SizedBox.shrink();
    }

    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Column(
        crossAxisAlignment: .start,
        spacing: 8,
        children: [
          const Text(
            'Active Filters',
            style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600, color: Colors.grey),
          ),
          Wrap(
            spacing: 6,
            runSpacing: 6,
            children: [
              ...filter.genres.map(
                (genre) => Chip(
                  label: Text(genre, style: const TextStyle(fontSize: 12)),
                  onDeleted: () => _removeGenre(genre),
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                ),
              ),
              ...filter.statuses.map(
                (status) => Chip(
                  label: Text(status, style: const TextStyle(fontSize: 12)),
                  onDeleted: () => _removeStatus(status),
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                ),
              ),
              if (filter.premieredFrom != null)
                Chip(
                  label: Text(
                    'Premiered from ${filter.premieredFrom}',
                    style: const TextStyle(fontSize: 12),
                  ),
                  onDeleted: () => onRemoveFilter(filter.copyWith(clearPremieredFrom: true)),
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                ),
              if (filter.premieredTo != null)
                Chip(
                  label: Text(
                    'Premiered to ${filter.premieredTo}',
                    style: const TextStyle(fontSize: 12),
                  ),
                  onDeleted: () => onRemoveFilter(filter.copyWith(clearPremieredTo: true)),
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                ),
              if (filter.endedFrom != null)
                Chip(
                  label: Text(
                    'Ended from ${filter.endedFrom}',
                    style: const TextStyle(fontSize: 12),
                  ),
                  onDeleted: () => onRemoveFilter(filter.copyWith(clearEndedFrom: true)),
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                ),
              if (filter.endedTo != null)
                Chip(
                  label: Text('Ended to ${filter.endedTo}', style: const TextStyle(fontSize: 12)),
                  onDeleted: () => onRemoveFilter(filter.copyWith(clearEndedTo: true)),
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                ),
              if (filter.minRating != null || filter.maxRating != null)
                Chip(
                  label: Text(
                    'Rating ${(filter.minRating ?? 0).toStringAsFixed(1)}-${(filter.maxRating ?? 10).toStringAsFixed(1)}',
                    style: const TextStyle(fontSize: 12),
                  ),
                  onDeleted: () =>
                      onRemoveFilter(filter.copyWith(clearMinRating: true, clearMaxRating: true)),
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                ),
              ...filter.countries.map(
                (country) => Chip(
                  label: Text(country, style: const TextStyle(fontSize: 12)),
                  onDeleted: () => _removeCountry(country),
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
