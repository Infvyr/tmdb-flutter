import 'package:flutter/material.dart';
import 'package:tmdbmaze/src/app/export.dart';
import 'package:tmdbmaze/src/feature/movies/export.dart';

class CurrentSearchDisplay extends StatelessWidget {
  const CurrentSearchDisplay({required this.searchQuery, super.key});

  final SearchQuery searchQuery;

  @override
  Widget build(BuildContext context) {
    if (searchQuery.query.isEmpty) {
      return const SizedBox.shrink();
    }

    final colors = FilterConstants.getColors(context);

    return DecoratedBox(
      decoration: BoxDecoration(
        color: colors.searchBackgroundColor,
        borderRadius: BorderRadius.circular(FilterConstants.borderRadiusM),
        border: Border.all(color: colors.searchBorderColor),
      ),
      child: Row(
        spacing: FilterConstants.spacingM,
        children: [
          Icon(Icons.search, color: colors.searchIconColor, size: FilterConstants.iconSizeM),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Current Search',
                  style: TextStyle(
                    fontSize: FilterConstants.fontSizeS,
                    fontWeight: FontWeight.w600,
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(height: FilterConstants.spacingXs),
                Text(
                  '"${searchQuery.query}"',
                  style: const TextStyle(
                    fontSize: FilterConstants.fontSizeM,
                    fontWeight: FontWeight.w500,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
