import 'package:flutter/material.dart';

class MultiSelectFilterDialog<T> extends StatefulWidget {
  const MultiSelectFilterDialog({
    required this.title,
    required this.items,
    required this.selectedItems,
    required this.itemBuilder,
    super.key,
  });

  final String title;
  final List<T> items;
  final List<T> selectedItems;
  final String Function(T) itemBuilder;

  @override
  State<MultiSelectFilterDialog<T>> createState() => _MultiSelectFilterDialogState<T>();
}

class _MultiSelectFilterDialogState<T> extends State<MultiSelectFilterDialog<T>> {
  late List<T> _selectedItems;

  @override
  void initState() {
    super.initState();
    _selectedItems = List<T>.from(widget.selectedItems);
  }

  void _toggleItem(T item) {
    setState(() {
      if (_selectedItems.contains(item)) {
        _selectedItems.remove(item);
      } else {
        _selectedItems.add(item);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(widget.title),
      content: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: widget.items.map((item) {
            final isSelected = _selectedItems.contains(item);
            return CheckboxListTile(
              title: Text(widget.itemBuilder(item)),
              value: isSelected,
              onChanged: (_) => _toggleItem(item),
              dense: true,
              contentPadding: EdgeInsets.zero,
            );
          }).toList(),
        ),
      ),
      actions: [
        TextButton(onPressed: () => Navigator.pop(context), child: const Text('Cancel')),
        TextButton(
          onPressed: () => Navigator.pop(context, _selectedItems),
          child: const Text('OK'),
        ),
      ],
    );
  }
}
