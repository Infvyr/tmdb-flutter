import 'package:flutter/material.dart';
import 'package:tmdbmaze/src/feature/movies/export.dart';

class ShowDetailAirtime extends StatelessWidget {
  const ShowDetailAirtime(this.show, {super.key});

  final Show show;

  @override
  Widget build(BuildContext context) {
    if (show.schedule == null || (show.schedule!.time == null && show.schedule!.days == null)) {
      return const SizedBox.shrink();
    }

    return Padding(
      padding: const EdgeInsets.all(16),
      child: Card(
        margin: EdgeInsets.zero,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 16),
          child: Column(
            crossAxisAlignment: .start,
            spacing: 12,
            children: [
              Text(
                'Airtime',
                style: Theme.of(
                  context,
                ).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w600),
              ),
              if (show.schedule?.time != null && show.schedule!.time!.isNotEmpty)
                Row(
                  children: [
                    Icon(Icons.schedule, size: 20, color: Colors.grey[500]),
                    const SizedBox(width: 12),
                    Column(
                      crossAxisAlignment: .start,
                      children: [
                        Text(
                          'Time',
                          style: Theme.of(
                            context,
                          ).textTheme.labelSmall?.copyWith(color: Colors.grey[500]),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          show.schedule!.time!,
                          style: Theme.of(
                            context,
                          ).textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ],
                ),
              if (show.schedule?.days != null && show.schedule!.days!.isNotEmpty)
                Column(
                  crossAxisAlignment: .start,
                  spacing: 8,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.calendar_today, size: 20, color: Colors.grey[500]),
                        const SizedBox(width: 12),
                        Text(
                          'Days',
                          style: Theme.of(
                            context,
                          ).textTheme.labelSmall?.copyWith(color: Colors.grey[500]),
                        ),
                      ],
                    ),
                    Wrap(
                      spacing: 8,
                      runSpacing: 8,
                      children: show.schedule!.days!
                          .map(
                            (day) => Container(
                              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                              decoration: BoxDecoration(
                                color: Theme.of(context).primaryColor.withValues(alpha: 0.1),
                                borderRadius: BorderRadius.circular(4),
                                border: Border.all(color: Theme.of(context).primaryColor),
                              ),
                              child: Text(
                                day,
                                style: Theme.of(context).textTheme.labelMedium?.copyWith(
                                  fontWeight: FontWeight.w600,
                                  color: Theme.of(context).primaryColor,
                                ),
                              ),
                            ),
                          )
                          .toList(),
                    ),
                  ],
                ),
            ],
          ),
        ),
      ),
    );
  }
}
