import 'package:flutter/material.dart';
import 'package:tmdbmaze/src/feature/movies/export.dart';
import 'package:url_launcher/url_launcher.dart';

class ShowDetailLinks extends StatelessWidget {
  const ShowDetailLinks(this.show, {super.key});

  final Show show;

  Future<void> _launchURL(String url) async {
    final uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    }
  }

  @override
  Widget build(BuildContext context) {
    if (show.links == null ||
        (show.links!.previousEpisodeHref == null && show.links!.selfHref == null)) {
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
                'Links',
                style: Theme.of(
                  context,
                ).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w600),
              ),
              if (show.links?.previousEpisodeHref != null)
                _LinkTile(
                  title: 'Previous Episode',
                  subtitle: show.links!.previousEpisodeName ?? 'View Episode',
                  url: show.links!.previousEpisodeHref!,
                  onTap: () => _launchURL(show.links!.previousEpisodeHref!),
                ),
              if (show.links?.selfHref != null)
                _LinkTile(
                  title: 'Show Page',
                  subtitle: 'Open on TVMaze',
                  url: show.links!.selfHref!,
                  onTap: () => _launchURL(show.links!.selfHref!),
                ),
            ],
          ),
        ),
      ),
    );
  }
}

class _LinkTile extends StatelessWidget {
  const _LinkTile({
    required this.title,
    required this.subtitle,
    required this.url,
    required this.onTap,
  });

  final String title;
  final String subtitle;
  final String url;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) => InkWell(
    onTap: onTap,
    borderRadius: BorderRadius.circular(8),
    child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          Icon(Icons.open_in_new, size: 20, color: Colors.grey[500]),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: .start,
              children: [
                Text(
                  title,
                  style: Theme.of(context).textTheme.labelSmall?.copyWith(color: Colors.grey[500]),
                ),
                const SizedBox(height: 4),
                Text(
                  subtitle,
                  style: Theme.of(
                    context,
                  ).textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.w600, color: Colors.blue),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
          Icon(Icons.arrow_forward_ios, size: 16, color: Colors.grey[400]),
        ],
      ),
    ),
  );
}
