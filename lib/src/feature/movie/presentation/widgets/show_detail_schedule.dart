import 'package:flutter/material.dart';
import 'package:tmdbmaze/src/feature/movies/export.dart';

class ShowDetailSchedule extends StatelessWidget {
  const ShowDetailSchedule(this.show, {super.key});

  final Show show;

  @override
  Widget build(BuildContext context) => Padding(
    padding: const EdgeInsets.all(16),
    child: Card(
      margin: EdgeInsets.zero,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 8),
        child: Column(
          crossAxisAlignment: .start,
          spacing: 12,
          children: [
            Text(
              'Schedule',
              style: Theme.of(context).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w600),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Premiered', style: Theme.of(context).textTheme.labelSmall),
                    const SizedBox(height: 4),
                    Text(
                      show.premiered ?? 'N/A',
                      style: Theme.of(
                        context,
                      ).textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Ended', style: Theme.of(context).textTheme.labelSmall),
                    const SizedBox(height: 4),
                    Text(
                      show.ended ?? 'Ongoing',
                      style: Theme.of(
                        context,
                      ).textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                if (show.network?.name != null)
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text('Network', style: Theme.of(context).textTheme.labelSmall),
                      const SizedBox(height: 4),
                      Text(
                        show.network!.name ?? 'N/A',
                        style: Theme.of(
                          context,
                        ).textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.w600),
                        textAlign: TextAlign.end,
                      ),
                    ],
                  ),
              ],
            ),
          ],
        ),
      ),
    ),
  );
}
