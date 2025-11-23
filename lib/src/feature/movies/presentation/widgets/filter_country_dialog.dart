import 'package:flutter/material.dart';
import 'package:tmdbmaze/src/feature/movies/export.dart';

class _CountryDialogContent extends StatefulWidget {
  const _CountryDialogContent({required this.sortedCountries, required this.selectedCountries});

  final List<MapEntry<String, String>> sortedCountries;
  final List<String> selectedCountries;

  @override
  State<_CountryDialogContent> createState() => _CountryDialogContentState();
}

class _CountryDialogContentState extends State<_CountryDialogContent> {
  late List<String> _selectedCountries;

  @override
  void initState() {
    super.initState();
    _selectedCountries = List<String>.from(widget.selectedCountries);
  }

  void _toggleCountry(String code) {
    setState(() {
      if (_selectedCountries.contains(code)) {
        _selectedCountries.remove(code);
      } else {
        _selectedCountries.add(code);
      }
    });
  }

  @override
  Widget build(BuildContext context) => AlertDialog(
    title: const Text('Select Countries'),
    content: SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: widget.sortedCountries.map((entry) {
          final code = entry.key;
          final name = entry.value;
          final isSelected = _selectedCountries.contains(code);
          return CheckboxListTile(
            title: Text(name),
            value: isSelected,
            onChanged: (_) => _toggleCountry(code),
            dense: true,
            contentPadding: EdgeInsets.zero,
          );
        }).toList(),
      ),
    ),
    actions: [
      TextButton(onPressed: () => Navigator.pop(context), child: const Text('Cancel')),
      TextButton(
        onPressed: () => Navigator.pop(context, _selectedCountries),
        child: const Text('OK'),
      ),
    ],
  );
}

class FilterCountryDialog extends StatelessWidget {
  const FilterCountryDialog({
    required this.filter,
    required this.onFilterChanged,
    required this.availableCountries,
    super.key,
  });

  final ShowFilter filter;
  final void Function(ShowFilter) onFilterChanged;
  final Map<String, String> availableCountries;

  String _getDisplayText() {
    if (filter.countries.isEmpty) {
      return 'Select countries';
    } else if (filter.countries.length == 1) {
      final code = filter.countries.first;
      return availableCountries[code] ?? code;
    } else {
      return '${filter.countries.length} selected';
    }
  }

  Future<void> _showCountryDialog(BuildContext context) async {
    final sortedCountries = availableCountries.entries.toList()
      ..sort((a, b) => a.value.compareTo(b.value));

    final result = await showDialog<List<String>>(
      context: context,
      builder: (context) => _CountryDialogContent(
        sortedCountries: sortedCountries,
        selectedCountries: filter.countries,
      ),
    );

    if (result != null && result != filter.countries) {
      onFilterChanged(filter.copyWith(countries: result));
    }
  }

  @override
  Widget build(BuildContext context) {
    if (availableCountries.isEmpty) {
      return const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Country', style: TextStyle(fontWeight: FontWeight.w600)),
          SizedBox(height: FilterConstants.spacingM),
          Text('No countries available', style: TextStyle(fontStyle: FontStyle.italic)),
        ],
      );
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Country', style: TextStyle(fontWeight: FontWeight.w600)),
        const SizedBox(height: FilterConstants.spacingM),
        OutlinedButton(
          onPressed: () => _showCountryDialog(context),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Flexible(child: Text(_getDisplayText(), overflow: TextOverflow.ellipsis)),
              const SizedBox(width: FilterConstants.spacingS),
              const Icon(Icons.expand_more, size: FilterConstants.iconSizeS),
            ],
          ),
        ),
      ],
    );
  }
}
