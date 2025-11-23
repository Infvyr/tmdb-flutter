import 'package:flutter/material.dart';
import 'package:tmdbmaze/src/feature/movies/export.dart';

class ShowDetailGrid extends StatelessWidget {
  const ShowDetailGrid(this.show, {super.key});

  final Show show;

  @override
  Widget build(BuildContext context) {
    final items = <({String label, String value})>[
      if (show.network?.country?.name != null)
        (label: 'Country', value: show.network!.country!.name ?? 'N/A'),
      if (show.externals?.thetvdb != null)
        (label: 'TheTV DB', value: show.externals!.thetvdb.toString()),
      if (show.externals?.tvrage != null)
        (label: 'TheRage', value: show.externals!.tvrage.toString()),
    ];

    if (items.isEmpty) return const SizedBox.shrink();

    return Padding(
      padding: const EdgeInsets.all(16),
      child: GridView.count(
        crossAxisCount: 3,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        mainAxisSpacing: 16,
        crossAxisSpacing: 16,
        childAspectRatio: 1.25,
        children: items
            .map(
              (item) => Card(
                margin: EdgeInsets.zero,
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    mainAxisAlignment: .center,
                    spacing: 5,
                    children: [
                      Text(
                        item.label,
                        style: Theme.of(
                          context,
                        ).textTheme.labelMedium?.copyWith(color: Colors.grey.shade500),
                      ),
                      Text(
                        item.value,
                        style: Theme.of(
                          context,
                        ).textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.w600),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}
