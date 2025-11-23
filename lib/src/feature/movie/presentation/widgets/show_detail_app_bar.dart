import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:tmdbmaze/src/app/export.dart';
import 'package:tmdbmaze/src/feature/movies/export.dart';
import 'package:tmdbmaze/src/shared/export.dart';

class ShowDetailAppBar extends StatelessWidget {
  const ShowDetailAppBar(this.show, {required this.scrollController, super.key});

  final Show show;
  final ScrollController scrollController;

  @override
  Widget build(BuildContext context) => SliverAppBar(
    expandedHeight: 280,
    pinned: true,
    automaticallyImplyLeading: false,
    automaticallyImplyActions: false,
    leading: Padding(
      padding: const EdgeInsets.all(8),
      child: CircleAvatar(
        backgroundColor: Theme.of(context).colorScheme.onInverseSurface,
        child: BackButton(onPressed: () => Navigator.pop(context)),
      ),
    ),
    title: _FadeInTitle(showName: show.name, scrollController: scrollController),
    centerTitle: true,
    flexibleSpace: ClipRRect(
      borderRadius: const BorderRadius.vertical(bottom: Radius.circular(10)),
      child: FlexibleSpaceBar(
        background: Stack(
          fit: StackFit.expand,
          children: [
            CachedNetworkImage(
              imageUrl: show.image?.original ?? 'https://placehold.co/400',
              fit: BoxFit.cover,
              placeholder: (context, url) => ColoredBox(color: Colors.grey[800]!),
              errorWidget: (context, url, error) => ColoredBox(color: Colors.grey[800]!),
            ),
            DecoratedBox(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.transparent, Colors.black.withValues(alpha: .9)],
                ),
              ),
            ),
            _PosterInfo(name: show.name, genres: show.genres, status: show.status),
          ],
        ),
      ),
    ),
  );
}

class _FadeInTitle extends StatefulWidget {
  const _FadeInTitle({required this.showName, required this.scrollController});

  final String showName;
  final ScrollController scrollController;

  @override
  State<_FadeInTitle> createState() => _FadeInTitleState();
}

class _FadeInTitleState extends State<_FadeInTitle> {
  double _opacity = 0;

  @override
  void initState() {
    super.initState();
    widget.scrollController.addListener(_updateOpacity);
  }

  void _updateOpacity() {
    if (!mounted) return;

    final offset = widget.scrollController.offset;
    const expandedHeight = 280.0;
    const toolbarHeight = kToolbarHeight;
    const collapsibleHeight = expandedHeight - toolbarHeight;

    final newOpacity = (offset / collapsibleHeight).clamp(0.0, 1.0);
    if ((newOpacity - _opacity).abs() > 0.01) {
      setState(() => _opacity = newOpacity);
    }
  }

  @override
  void dispose() {
    widget.scrollController.removeListener(_updateOpacity);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Opacity(
    opacity: _opacity,
    child: Text(
      widget.showName,
      style: Theme.of(context).textTheme.titleMedium,
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
    ),
  );
}

class _PosterInfo extends StatelessWidget {
  const _PosterInfo({required this.name, required this.genres, required this.status});

  final String name;
  final String status;
  final List<String> genres;

  @override
  Widget build(BuildContext context) => Align(
    alignment: Alignment.bottomLeft,
    child: Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            name,
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              shadows: [
                Shadow(
                  offset: const Offset(0, 1),
                  blurRadius: 3,
                  color: Colors.black.withValues(alpha: 0.5),
                ),
              ],
            ),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(height: 8),
          Text(
            status,
            style: Theme.of(context).textTheme.labelSmall?.copyWith(
              color: StatusColor.getStatusColor(status),
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 8),
          if (genres.isNotEmpty) MovieGenres(genres),
        ],
      ),
    ),
  );
}
