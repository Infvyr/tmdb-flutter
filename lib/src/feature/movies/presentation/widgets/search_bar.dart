import 'dart:async';

import 'package:flutter/material.dart';
import 'package:tmdbmaze/src/feature/movies/export.dart';

class ShowsSearchBar extends StatefulWidget {
  const ShowsSearchBar({
    required this.onSearch,
    this.initialQuery = '',
    this.onQueryChanged,
    this.debounceDelay = const Duration(milliseconds: 500),
    super.key,
  });

  final void Function(SearchQuery) onSearch;
  final String initialQuery;
  final void Function(String)? onQueryChanged;
  final Duration debounceDelay;

  @override
  State<ShowsSearchBar> createState() => _ShowsSearchBarState();
}

class _ShowsSearchBarState extends State<ShowsSearchBar> {
  String _currentText = '';
  Timer? _debounceTimer;

  @override
  void initState() {
    super.initState();
    _currentText = widget.initialQuery;
  }

  @override
  void dispose() {
    _debounceTimer?.cancel();
    super.dispose();
  }

  void _handleClear() {
    _debounceTimer?.cancel();
    setState(() => _currentText = '');
    widget.onSearch(const SearchQuery());
    widget.onQueryChanged?.call('');
  }

  void _onSearchChanged(String value) {
    setState(() => _currentText = value);
    widget.onQueryChanged?.call(value);

    _debounceTimer?.cancel();
    _debounceTimer = Timer(widget.debounceDelay, () {
      widget.onSearch(SearchQuery(query: value));
    });
  }

  void _handleSearch() {
    _debounceTimer?.cancel();
    widget.onSearch(SearchQuery(query: _currentText));
    widget.onQueryChanged?.call(_currentText);
  }

  @override
  Widget build(BuildContext context) => SearchAnchor(
    builder: (context, controller) {
      // Keep SearchBar text in sync with the state
      if (controller.text != _currentText) {
        controller.text = _currentText;
      }
      return SearchBar(
        elevation: WidgetStateProperty.all(0),
        controller: controller,
        leading: const Padding(
          padding: EdgeInsets.only(left: 8),
          child: Icon(Icons.search),
        ),
        trailing: _currentText.isNotEmpty
            ? [IconButton(icon: const Icon(Icons.clear), onPressed: _handleClear)]
            : null,
        hintText: 'Search shows...',
        onChanged: _onSearchChanged,
        onSubmitted: (_) => _handleSearch(),
      );
    },
    suggestionsBuilder: (BuildContext context, SearchController controller) => const [],
  );
}
