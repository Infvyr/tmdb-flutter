import 'package:flutter/material.dart';
import 'package:tmdbmaze/src/feature/movies/export.dart';

class FilterCountrySection extends StatelessWidget {
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
  Widget build(BuildContext context) {
    if (availableCountries.isEmpty) {
      return const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Country', style: TextStyle(fontWeight: FontWeight.w600)),
          SizedBox(height: 8),
          Text('No countries available', style: TextStyle(fontStyle: FontStyle.italic)),
        ],
      );
    }

    final countryEntries = availableCountries.entries.toList()
      ..sort((a, b) => a.value.compareTo(b.value));

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Country', style: TextStyle(fontWeight: FontWeight.w600)),
        const SizedBox(height: 8),
        Wrap(
          spacing: 8,
          runSpacing: 8,
          children: countryEntries.map((entry) {
            final countryCode = entry.key;
            final countryName = entry.value;

            return FilterChip(
              label: Text(countryName),
              selected: filter.countries.contains(countryCode),
              onSelected: (selected) {
                final updatedCountries = List<String>.from(filter.countries);
                if (selected) {
                  updatedCountries.add(countryCode);
                } else {
                  updatedCountries.remove(countryCode);
                }
                onFilterChanged(filter.copyWith(countries: updatedCountries));
              },
            );
          }).toList(),
        ),
      ],
    );
  }
}
