import 'package:flutter/material.dart';
import 'package:tmdbmaze/src/feature/movies/export.dart';

class FilterDateRangeSection extends StatelessWidget {
  const FilterDateRangeSection({required this.filter, required this.onFilterChanged, super.key});

  final ShowFilter filter;
  final void Function(ShowFilter) onFilterChanged;

  Future<void> _selectDate(BuildContext context, bool isStart, bool isPremiere) async {
    final currentDateStr = isPremiere
        ? (isStart ? filter.premieredFrom : filter.premieredTo)
        : (isStart ? filter.endedFrom : filter.endedTo);

    final currentDate = currentDateStr != null ? DateTime.tryParse(currentDateStr) : null;

    final selectedDate = await showDatePicker(
      context: context,
      initialDate: currentDate ?? DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime.now().add(const Duration(days: 365 * 10)),
    );

    if (selectedDate != null) {
      final dateString = selectedDate.toIso8601String().split('T').first;

      if (isPremiere) {
        if (isStart) {
          onFilterChanged(filter.copyWith(premieredFrom: dateString));
        } else {
          onFilterChanged(filter.copyWith(premieredTo: dateString));
        }
      } else {
        if (isStart) {
          onFilterChanged(filter.copyWith(endedFrom: dateString));
        } else {
          onFilterChanged(filter.copyWith(endedTo: dateString));
        }
      }
    }
  }

  @override
  Widget build(BuildContext context) => Column(
    crossAxisAlignment: .start,
    spacing: 12,
    children: [
      const Text('Date Range', style: TextStyle(fontWeight: FontWeight.w600)),
      // Premiered dates
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 12,
        children: [
          const Text('Premiered', style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500)),
          const SizedBox(height: 8),
          Row(
            spacing: 8,
            children: [
              Expanded(
                child: OutlinedButton.icon(
                  onPressed: () => _selectDate(context, true, true),
                  icon: const Icon(Icons.calendar_today, size: 18),
                  label: Text(filter.premieredFrom ?? 'From'),
                ),
              ),
              Expanded(
                child: OutlinedButton.icon(
                  onPressed: () => _selectDate(context, false, true),
                  icon: const Icon(Icons.calendar_today, size: 18),
                  label: Text(filter.premieredTo ?? 'To'),
                ),
              ),
            ],
          ),
        ],
      ),
      // Ended dates
      Column(
        crossAxisAlignment: .start,
        spacing: 8,
        children: [
          const Text('Ended', style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500)),
          Row(
            spacing: 8,
            children: [
              Expanded(
                child: OutlinedButton.icon(
                  onPressed: () => _selectDate(context, true, false),
                  icon: const Icon(Icons.calendar_today, size: 18),
                  label: Text(filter.endedFrom ?? 'From'),
                ),
              ),

              Expanded(
                child: OutlinedButton.icon(
                  onPressed: () => _selectDate(context, false, false),
                  icon: const Icon(Icons.calendar_today, size: 18),
                  label: Text(filter.endedTo ?? 'To'),
                ),
              ),
            ],
          ),
        ],
      ),
    ],
  );
}
