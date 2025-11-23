import 'package:flutter/material.dart';

/// Represents a color scheme for a genre with background and text colors
class GenreColorScheme {
  const GenreColorScheme({required this.backgroundColor, required this.textColor});

  final Color backgroundColor;
  final Color textColor;
}

/// A utility class that provides background and text colors for each show genre
class GenreColor {
  GenreColor._();

  static const Map<String, GenreColorScheme> _genreColorMap = {
    'Action': GenreColorScheme(backgroundColor: Color(0xFFFF6B6B), textColor: Color(0xFFFFFFFF)),
    'Adventure': GenreColorScheme(backgroundColor: Color(0xFF4ECDC4), textColor: Color(0xFFFFFFFF)),
    'Animation': GenreColorScheme(backgroundColor: Color(0xFFFFD93D), textColor: Color(0xFF2C3E50)),
    'Comedy': GenreColorScheme(backgroundColor: Color(0xFFFFA502), textColor: Color(0xFFFFFFFF)),
    'Crime': GenreColorScheme(backgroundColor: Color(0xFF2E3440), textColor: Color(0xFFFFFFFF)),
    'Documentary': GenreColorScheme(
      backgroundColor: Color(0xFF9B59B6),
      textColor: Color(0xFFFFFFFF),
    ),
    'Drama': GenreColorScheme(backgroundColor: Color(0xFFE74C3C), textColor: Color(0xFFFFFFFF)),
    'Family': GenreColorScheme(backgroundColor: Color(0xFF1ABC9C), textColor: Color(0xFFFFFFFF)),
    'Fantasy': GenreColorScheme(backgroundColor: Color(0xFFBB86FC), textColor: Color(0xFFFFFFFF)),
    'History': GenreColorScheme(backgroundColor: Color(0xFF8B7355), textColor: Color(0xFFFFFFFF)),
    'Horror': GenreColorScheme(backgroundColor: Color(0xFF1A1A1A), textColor: Color(0xFFFFFFFF)),
    'Music': GenreColorScheme(backgroundColor: Color(0xFFFF6B9D), textColor: Color(0xFFFFFFFF)),
    'Mystery': GenreColorScheme(backgroundColor: Color(0xFF663399), textColor: Color(0xFFFFFFFF)),
    'Romance': GenreColorScheme(backgroundColor: Color(0xFFFF69B4), textColor: Color(0xFFFFFFFF)),
    'Science Fiction': GenreColorScheme(
      backgroundColor: Color(0xFF00BCD4),
      textColor: Color(0xFFFFFFFF),
    ),
    'TV Movie': GenreColorScheme(backgroundColor: Color(0xFF5B7CFF), textColor: Color(0xFFFFFFFF)),
    'Thriller': GenreColorScheme(backgroundColor: Color(0xFFD84315), textColor: Color(0xFFFFFFFF)),
    'War': GenreColorScheme(backgroundColor: Color(0xFF546E7A), textColor: Color(0xFFFFFFFF)),
    'Western': GenreColorScheme(backgroundColor: Color(0xFFC17817), textColor: Color(0xFFFFFFFF)),
  };

  /// Returns the color scheme for a given genre
  ///
  /// If the genre is not found in the map, returns a default teal color scheme
  ///
  /// Example:
  /// ```dart
  /// final scheme = GenreColor.getColorScheme('Action');
  /// Container(
  ///   color: scheme.backgroundColor,
  ///   child: Text('Action', style: TextStyle(color: scheme.textColor)),
  /// )
  /// ```
  static GenreColorScheme getColorScheme(String genre) =>
      _genreColorMap[genre] ??
      const GenreColorScheme(backgroundColor: Color(0xFF17A2B8), textColor: Color(0xFFFFFFFF));

  /// Returns the background color for a given genre
  static Color getBackgroundColor(String genre) => getColorScheme(genre).backgroundColor;

  /// Returns the text color for a given genre
  static Color getTextColor(String genre) => getColorScheme(genre).textColor;

  /// Returns all available genres and their color schemes
  static Map<String, GenreColorScheme> getAllColorSchemes() => Map.unmodifiable(_genreColorMap);

  /// Checks if a genre has a defined color scheme
  static bool hasGenre(String genre) => _genreColorMap.containsKey(genre);
}
