import 'package:tmdbmaze/src/feature/movies/domain/entities/filter_options.dart';
import 'package:tmdbmaze/src/feature/movies/domain/entities/show_entity.dart';
import 'package:tmdbmaze/src/feature/movies/domain/repositories/predefined_filter_options.dart';

abstract class FilterOptionsRepository {
  /// Extract available filter options from a list of shows
  FilterOptions extractFilterOptions(List<Show> shows);
}

class FilterOptionsRepositoryImpl implements FilterOptionsRepository {
  @override
  FilterOptions extractFilterOptions(List<Show> shows) {
    // Start with predefined options to ensure all common statuses, genres, and countries are available
    final predefined = PredefinedFilterOptions.getComprehensiveOptions();

    final statuses = <String>{...predefined.statuses};
    final genres = <String>{...predefined.genres};
    final countries = <String, String>{...predefined.countries};

    // Extract additional options from shows that aren't already in predefined lists
    for (final show in shows) {
      // Extract statuses (likely won't find new ones, but just in case)
      if (show.status.isNotEmpty) {
        statuses.add(show.status);
      }

      // Extract genres
      for (final genre in show.genres) {
        if (genre.isNotEmpty) {
          genres.add(genre);
        }
      }

      // Extract countries (add any new ones from shows data)
      final countryCode = show.network?.country?.code;
      final countryName = show.network?.country?.name;
      if (countryCode != null &&
          countryCode.isNotEmpty &&
          countryName != null &&
          countryName.isNotEmpty) {
        countries[countryCode] = countryName;
      }
    }

    // Sort collections for consistent ordering
    final sortedStatuses = statuses.toList()..sort();
    final sortedGenres = genres.toList()..sort();

    return FilterOptions(
      types: const [],
      statuses: sortedStatuses,
      genres: sortedGenres,
      countries: countries,
    );
  }
}
