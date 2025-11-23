import 'package:flutter/material.dart';

/// Centralized constants for filter UI styling and spacing
class FilterConstants {
  FilterConstants._(); // Private constructor to prevent instantiation

  // Spacing constants
  static const double spacingXs = 4;
  static const double spacingS = 6;
  static const double spacingM = 8;
  static const double spacingL = 12;
  static const double spacingXl = 16;
  static const double spacingXxl = 24;

  // Icon sizes
  static const double iconSizeS = 16;
  static const double iconSizeM = 18;
  static const double iconSizeL = 24;

  // Font sizes
  static const double fontSizeS = 12;
  static const double fontSizeM = 14;
  static const double fontSizeL = 16;

  // Border radius
  static const double borderRadiusS = 4;
  static const double borderRadiusM = 8;
  static const double borderRadiusL = 12;

  // Bottom sheet sizing
  static const double bottomSheetInitialSize = 0.7;
  static const double bottomSheetMinSize = 0.5;
  static const double bottomSheetMaxSize = 0.95;

  // Slider divisions
  static const int sliderDivisions = 20;

  // List sorting debounce
  static const Duration sortDebounce = Duration(milliseconds: 100);

  /// Get filter colors based on theme
  static FilterColors getColors(BuildContext context) => FilterColors.fromTheme(context);
}

/// Theming-aware color palette for filters
class FilterColors {
  FilterColors({
    required this.searchBackgroundColor,
    required this.searchBorderColor,
    required this.searchIconColor,
    required this.searchTextColor,
    required this.dividerColor,
  });

  factory FilterColors.fromTheme(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return FilterColors(
      searchBackgroundColor: colorScheme.primary.withValues(alpha: .1),
      searchBorderColor: colorScheme.primary.withValues(alpha: .2),
      searchIconColor: colorScheme.primary,
      searchTextColor: colorScheme.onSurface,
      dividerColor: colorScheme.outlineVariant,
    );
  }

  factory FilterColors.light() => FilterColors(
    searchBackgroundColor: Colors.blue.shade50,
    searchBorderColor: Colors.blue.shade200,
    searchIconColor: Colors.blue.shade700,
    searchTextColor: Colors.black87,
    dividerColor: Colors.grey.shade300,
  );

  factory FilterColors.dark() => FilterColors(
    searchBackgroundColor: Colors.blue.shade900.withValues(alpha: .2),
    searchBorderColor: Colors.blue.shade700,
    searchIconColor: Colors.blue.shade300,
    searchTextColor: Colors.white,
    dividerColor: Colors.grey.shade700,
  );
  final Color searchBackgroundColor;
  final Color searchBorderColor;
  final Color searchIconColor;
  final Color searchTextColor;
  final Color dividerColor;
}
