import 'package:flutter/material.dart';
import 'package:tmdbmaze/src/feature/movies/export.dart';

class ShowDetailRating extends StatelessWidget {
  const ShowDetailRating(this.show, {super.key});

  final Show show;

  @override
  Widget build(BuildContext context) => Padding(
    padding: const EdgeInsets.fromLTRB(16, 24, 16, 16),
    child: Card(
      margin: EdgeInsets.zero,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 8),
        child: Row(
          mainAxisAlignment: .spaceEvenly,
          children: [
            if (show.rating != null && show.rating!.average > 0) ...[
              _RatingItem(
                label: 'Rating',
                value: '${show.rating!.average.toStringAsFixed(1)}/10',
                icon: Icons.star,
              ),
              Ink(width: 1, height: 48, color: Colors.grey[700]),
            ],
            _RatingItem(label: 'Type', value: show.type ?? 'N/A', icon: Icons.tv),
            if (show.averageRuntime != null) ...[
              Ink(width: 1, height: 48, color: Colors.grey[700]),
              _RatingItem(
                label: 'Avg Runtime',
                value: '${show.averageRuntime} min',
                icon: Icons.hourglass_bottom,
              ),
            ],
          ],
        ),
      ),
    ),
  );
}

class _RatingItem extends StatelessWidget {
  const _RatingItem({required this.label, required this.value, required this.icon});

  final String label;
  final String value;
  final IconData icon;

  @override
  Widget build(BuildContext context) => Column(
    children: [
      Icon(icon, size: 20),
      const SizedBox(height: 6),
      Text(
        label,
        style: Theme.of(context).textTheme.labelMedium?.copyWith(color: Colors.grey[500]),
      ),
      const SizedBox(height: 4),
      Text(
        value,
        style: Theme.of(
          context,
        ).textTheme.labelMedium?.copyWith(fontWeight: FontWeight.w600),
      ),
    ],
  );
}
