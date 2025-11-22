import 'package:tmdbmaze/src/feature/movies/domain/entities/filter_options.dart';
import 'package:tmdbmaze/src/feature/movies/domain/entities/show_entity.dart';

abstract class FilterOptionsRepository {
  /// Extract available filter options from a list of shows
  FilterOptions extractFilterOptions(List<Show> shows);
}

class FilterOptionsRepositoryImpl implements FilterOptionsRepository {
  @override
  FilterOptions extractFilterOptions(List<Show> shows) {
    final types = <String>{};
    final statuses = <String>{};
    final genres = <String>{};
    final countries = <String, String>{};

    for (final show in shows) {
      // Extract types
      if (show.type != null && show.type!.isNotEmpty) {
        types.add(show.type!);
      }

      // Extract statuses
      if (show.status.isNotEmpty) {
        statuses.add(show.status);
      }

      // Extract genres
      for (final genre in show.genres) {
        if (genre.isNotEmpty) {
          genres.add(genre);
        }
      }

      // Extract countries
      final countryCode = show.network?.country?.code;
      final countryName = show.network?.country?.name;
      if (countryCode != null && countryCode.isNotEmpty &&
          countryName != null && countryName.isNotEmpty) {
        countries[countryCode] = countryName;
      }
    }

    // Sort collections for consistent ordering
    final sortedTypes = types.toList()..sort();
    final sortedStatuses = statuses.toList()..sort();
    final sortedGenres = genres.toList()..sort();

    return FilterOptions(
      types: sortedTypes,
      statuses: sortedStatuses,
      genres: sortedGenres,
      countries: countries,
    );
  }
}
