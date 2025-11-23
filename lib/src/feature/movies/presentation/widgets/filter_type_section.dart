import 'package:flutter/material.dart';
import 'package:tmdbmaze/src/feature/movies/export.dart';

class FilterTypeSection extends StatefulWidget {
  const FilterTypeSection({
    required this.filter,
    required this.onFilterChanged,
    required this.availableGenres,
    super.key,
  });

  final ShowFilter filter;
  final void Function(ShowFilter) onFilterChanged;
  final List<String> availableGenres;

  @override
  State<FilterTypeSection> createState() => _FilterTypeSectionState();
}

class _FilterTypeSectionState extends State<FilterTypeSection> {
  late List<String> sortedGenres;

  @override
  void initState() {
    super.initState();
    _updateSortedGenres();
  }

  @override
  void didUpdateWidget(FilterTypeSection oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.availableGenres != widget.availableGenres) {
      _updateSortedGenres();
    }
    // Trigger rebuild when filter changes (e.g., on reset)
    if (oldWidget.filter != widget.filter) {
      setState(() {});
    }
  }

  void _updateSortedGenres() {
    sortedGenres = List<String>.from(widget.availableGenres)..sort();
  }

  @override
  Widget build(BuildContext context) {
    if (widget.availableGenres.isEmpty) {
      return const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Genre', style: TextStyle(fontWeight: FontWeight.w600)),
          SizedBox(height: 8),
          Text('No genres available', style: TextStyle(fontStyle: FontStyle.italic)),
        ],
      );
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Genre', style: TextStyle(fontWeight: FontWeight.w600)),
        const SizedBox(height: 8),
        Wrap(
          spacing: 6,
          runSpacing: 8,
          children: sortedGenres.map((genre) {
            final isSelected = widget.filter.genres.contains(genre);
            return ChoiceChip(
              label: Text(genre),
              selected: isSelected,
              onSelected: (selected) {
                final updatedGenres = List<String>.from(widget.filter.genres);
                if (selected) {
                  updatedGenres.add(genre);
                } else {
                  updatedGenres.remove(genre);
                }
                widget.onFilterChanged(widget.filter.copyWith(genres: updatedGenres));
              },
            );
          }).toList(),
        ),
      ],
    );
  }
}
