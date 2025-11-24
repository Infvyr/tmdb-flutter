import 'package:flutter/material.dart';
import 'package:tmdbmaze/src/app/export.dart';
import 'package:tmdbmaze/src/feature/movies/export.dart';

class _GenreDialogContent extends StatefulWidget {
  const _GenreDialogContent({required this.sortedGenres, required this.selectedGenres});

  final List<String> sortedGenres;
  final List<String> selectedGenres;

  @override
  State<_GenreDialogContent> createState() => _GenreDialogContentState();
}

class _GenreDialogContentState extends State<_GenreDialogContent> {
  late List<String> _selectedGenres;

  @override
  void initState() {
    super.initState();
    _selectedGenres = List<String>.from(widget.selectedGenres);
  }

  void _toggleGenre(String genre) {
    setState(() {
      if (_selectedGenres.contains(genre)) {
        _selectedGenres.remove(genre);
      } else {
        _selectedGenres.add(genre);
      }
    });
  }

  @override
  Widget build(BuildContext context) => AlertDialog(
    title: const Text('Select Genres'),
    content: SingleChildScrollView(
      child: Column(
        mainAxisSize: .min,
        children: widget.sortedGenres.map((genre) {
          final isSelected = _selectedGenres.contains(genre);

          return CheckboxListTile(
            title: Padding(padding: const EdgeInsets.only(left: 8), child: Text(genre)),
            value: isSelected,
            onChanged: (_) => _toggleGenre(genre),
            dense: true,
            visualDensity: const VisualDensity(horizontal: -4, vertical: -4),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
            contentPadding: EdgeInsets.zero,
          );
        }).toList(),
      ),
    ),
    actions: [
      TextButton(onPressed: () => Navigator.pop(context), child: const Text('Cancel')),
      TextButton(onPressed: () => Navigator.pop(context, _selectedGenres), child: const Text('OK')),
    ],
  );
}

class FilterGenreDialog extends StatelessWidget {
  const FilterGenreDialog({
    required this.filter,
    required this.onFilterChanged,
    required this.availableGenres,
    super.key,
  });

  final ShowFilter filter;
  final void Function(ShowFilter) onFilterChanged;
  final List<String> availableGenres;

  String _getDisplayText() {
    if (filter.genres.isEmpty) {
      return 'Select genres';
    } else if (filter.genres.length == 1) {
      return filter.genres.first;
    } else {
      return '${filter.genres.length} selected';
    }
  }

  Future<void> _showGenreDialog(BuildContext context) async {
    final sortedGenres = List<String>.from(availableGenres)..sort();
    final result = await showDialog<List<String>>(
      context: context,
      builder: (context) =>
          _GenreDialogContent(sortedGenres: sortedGenres, selectedGenres: filter.genres),
    );

    if (result != null && result != filter.genres) {
      onFilterChanged(filter.copyWith(genres: result));
    }
  }

  @override
  Widget build(BuildContext context) {
    if (availableGenres.isEmpty) {
      return const Column(
        crossAxisAlignment: .start,
        children: [
          Text('Genre', style: TextStyle(fontWeight: FontWeight.w600)),
          SizedBox(height: FilterConstants.spacingM),
          Text('No genres available', style: TextStyle(fontStyle: FontStyle.italic)),
        ],
      );
    }

    return Column(
      crossAxisAlignment: .start,
      children: [
        const Text('Genre', style: TextStyle(fontWeight: FontWeight.w600)),
        const SizedBox(height: FilterConstants.spacingM),
        OutlinedButton(
          onPressed: () => _showGenreDialog(context),
          child: Row(
            mainAxisSize: .min,
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
