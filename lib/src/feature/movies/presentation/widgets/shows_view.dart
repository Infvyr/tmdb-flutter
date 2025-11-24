import 'package:flutter/material.dart';
import 'package:tmdbmaze/src/feature/movies/export.dart';

class ShowsView extends StatelessWidget {
  const ShowsView(this.shows, {super.key});

  final List<Show> shows;

  int _getCrossAxisCount(BoxConstraints constraints, Orientation orientation) {
    final width = constraints.maxWidth;
    final isPortrait = orientation == Orientation.portrait;

    // Phone: width < 600
    if (width < 600) {
      return isPortrait ? 2 : 3;
    }
    // Tablet: width >= 600
    else if (width < 900) {
      return 3;
    }
    // Large screen/desktop: width >= 900
    else {
      return isPortrait ? 4 : 3;
    }
  }

  double _getMainAxisExtent(BoxConstraints constraints, Orientation orientation) {
    final width = constraints.maxWidth;
    final crossAxisCount = _getCrossAxisCount(constraints, orientation);

    // Calculate available width per column
    final horizontalPadding = _getHorizontalPadding(constraints) * 2;
    const spacing = 12;
    final availableWidth = width - horizontalPadding - (spacing * (crossAxisCount - 1));
    final columnWidth = availableWidth / crossAxisCount;

    // Maintain aspect ratio with some padding for content
    return columnWidth * 1.3;
  }

  double _getHorizontalPadding(BoxConstraints constraints) {
    final width = constraints.maxWidth;
    if (width < 600) return 16;
    if (width < 900) return 24;
    return 32;
  }

  double _getVerticalPadding(BoxConstraints constraints) {
    final width = constraints.maxWidth;
    if (width < 600) return 10;
    return 16;
  }

  @override
  Widget build(BuildContext context) {
    final orientation = MediaQuery.of(context).orientation;

    return LayoutBuilder(
      builder: (context, constraints) => Padding(
        padding: EdgeInsets.symmetric(
          horizontal: _getHorizontalPadding(constraints),
          vertical: _getVerticalPadding(constraints),
        ),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: _getCrossAxisCount(constraints, orientation),
            mainAxisExtent: _getMainAxisExtent(constraints, orientation),
            crossAxisSpacing: 12,
            mainAxisSpacing: 12,
          ),
          itemCount: shows.length,
          itemBuilder: (context, index) => ShowItem(shows[index]),
        ),
      ),
    );
  }
}
