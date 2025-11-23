import 'package:flutter/material.dart';
import 'package:tmdbmaze/src/feature/movies/export.dart';

class ShowDetailSummary extends StatelessWidget {
  const ShowDetailSummary(this.show, {super.key});

  final Show show;

  String _stripHtml(String html) {
    final RegExp exp = RegExp(r'<[^>]*>|&nbsp;|&lt;|&gt;|&amp;');
    final String strip = html.replaceAll(exp, '').replaceAll('&quot;', '"');
    return strip.replaceAll(RegExp(r'\s+'), ' ').trim();
  }

  @override
  Widget build(BuildContext context) {
    if (show.summary == null || show.summary!.isEmpty) {
      return const SizedBox.shrink();
    }

    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'About',
            style: Theme.of(context).textTheme.titleSmall?.copyWith(fontWeight: FontWeight.w600),
          ),
          const SizedBox(height: 12),
          Card(
            margin: EdgeInsets.zero,
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Text(
                _stripHtml(show.summary!),
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(height: 1.6),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
