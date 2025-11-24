import 'package:flutter/material.dart';
import 'package:tmdbmaze/src/app/export.dart';
import 'package:tmdbmaze/src/feature/movies/export.dart';

class FilterStatusSection extends StatefulWidget {
  const FilterStatusSection({
    required this.filter,
    required this.onFilterChanged,
    required this.availableStatuses,
    super.key,
  });

  final ShowFilter filter;
  final void Function(ShowFilter) onFilterChanged;
  final List<String> availableStatuses;

  @override
  State<FilterStatusSection> createState() => _FilterStatusSectionState();
}

class _FilterStatusSectionState extends State<FilterStatusSection> {
  late List<String> sortedStatuses;

  @override
  void initState() {
    super.initState();
    _updateSortedStatuses();
  }

  @override
  void didUpdateWidget(FilterStatusSection oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.availableStatuses != widget.availableStatuses) {
      _updateSortedStatuses();
    }
    // Trigger rebuild when filter changes (e.g., on reset)
    if (oldWidget.filter != widget.filter) {
      setState(() {});
    }
  }

  void _updateSortedStatuses() {
    sortedStatuses = List<String>.from(widget.availableStatuses)..sort();
  }

  void _selectStatus(String status) {
    final updatedStatuses = widget.filter.statuses.contains(status) ? <String>[] : [status];
    widget.onFilterChanged(widget.filter.copyWith(statuses: updatedStatuses));
  }

  @override
  Widget build(BuildContext context) {
    if (widget.availableStatuses.isEmpty) {
      return const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Status', style: TextStyle(fontWeight: FontWeight.w600)),
          SizedBox(height: FilterConstants.spacingM),
          Text('No statuses available', style: TextStyle(fontStyle: FontStyle.italic)),
        ],
      );
    }

    final colorScheme = Theme.of(context).colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Status', style: TextStyle(fontWeight: FontWeight.w600)),
        const SizedBox(height: FilterConstants.spacingM),
        Wrap(
          spacing: FilterConstants.spacingS,
          runSpacing: FilterConstants.spacingS,
          children: sortedStatuses.map((status) {
            final isSelected =
                widget.filter.statuses.length == 1 && widget.filter.statuses.first == status;
            return Material(
              child: InkWell(
                onTap: () => _selectStatus(status),
                borderRadius: BorderRadius.circular(FilterConstants.borderRadiusM),
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: FilterConstants.spacingL,
                    vertical: FilterConstants.spacingM,
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: isSelected ? colorScheme.primary : colorScheme.outlineVariant,
                      width: isSelected ? 2 : 1,
                    ),
                    borderRadius: BorderRadius.circular(FilterConstants.borderRadiusM),
                    color: isSelected
                        ? colorScheme.primary.withValues(alpha: .1)
                        : Colors.transparent,
                  ),
                  child: Text(
                    status,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: FilterConstants.fontSizeM,
                      fontWeight: isSelected ? FontWeight.w600 : FontWeight.w500,
                      color: isSelected ? colorScheme.primary : colorScheme.onSurface,
                    ),
                  ),
                ),
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}
