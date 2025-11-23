import 'package:flutter/material.dart';
import 'package:tmdbmaze/src/feature/movies/export.dart';

class FilterCountrySection extends StatefulWidget {
  const FilterCountrySection({
    required this.filter,
    required this.onFilterChanged,
    required this.availableCountries,
    super.key,
  });

  final ShowFilter filter;
  final void Function(ShowFilter) onFilterChanged;
  final Map<String, String> availableCountries;

  @override
  State<FilterCountrySection> createState() => _FilterCountrySectionState();
}

class _FilterCountrySectionState extends State<FilterCountrySection> {
  late List<MapEntry<String, String>> sortedCountries;

  @override
  void initState() {
    super.initState();
    _updateSortedCountries();
  }

  @override
  void didUpdateWidget(FilterCountrySection oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.availableCountries != widget.availableCountries) {
      _updateSortedCountries();
    }
    // Trigger rebuild when filter changes (e.g., on reset)
    if (oldWidget.filter != widget.filter) {
      setState(() {});
    }
  }

  void _updateSortedCountries() {
    sortedCountries = widget.availableCountries.entries.toList()
      ..sort((a, b) => a.value.compareTo(b.value));
  }

  @override
  Widget build(BuildContext context) {
    if (widget.availableCountries.isEmpty) {
      return const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Country', style: TextStyle(fontWeight: FontWeight.w600)),
          SizedBox(height: 8),
          Text('No countries available', style: TextStyle(fontStyle: FontStyle.italic)),
        ],
      );
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Country', style: TextStyle(fontWeight: FontWeight.w600)),
        const SizedBox(height: 8),
        Wrap(
          spacing: 6,
          runSpacing: 8,
          children: sortedCountries.map((entry) {
            final countryCode = entry.key;
            final countryName = entry.value;
            final isSelected = widget.filter.countries.contains(countryCode);

            return ChoiceChip(
              label: Text(countryName),
              selected: isSelected,
              onSelected: (selected) {
                final updatedCountries = List<String>.from(widget.filter.countries);
                if (selected) {
                  updatedCountries.add(countryCode);
                } else {
                  updatedCountries.remove(countryCode);
                }
                widget.onFilterChanged(widget.filter.copyWith(countries: updatedCountries));
              },
            );
          }).toList(),
        ),
      ],
    );
  }
}
