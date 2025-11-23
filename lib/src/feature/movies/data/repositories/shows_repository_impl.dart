import 'dart:async';

import 'package:tmdbmaze/src/app/export.dart';
import 'package:tmdbmaze/src/feature/movies/export.dart';

class ShowsRepositoryImpl implements ShowsRepository {
  ShowsRepositoryImpl({
    required this.remoteDataSource,
    required this.localDataSource,
    required this.searchFilterLocalDataSource,
  });

  final ShowsRemoteDataSource remoteDataSource;
  final ShowsLocalDataSource localDataSource;
  final ShowsSearchFilterLocalDatasource searchFilterLocalDataSource;

  @override
  Future<Result<List<Show>>> getShows({bool forceRefresh = false}) async {
    try {
      if (!forceRefresh) {
        final cachedShows = await localDataSource.getShows();
        if (cachedShows.isNotEmpty) {
          return Success(cachedShows.map((model) => model.toEntity()).toList());
        }
      }

      final remotePosts = await remoteDataSource.fetchShows();
      await localDataSource.cacheShows(remotePosts);

      final entities = remotePosts.map((model) => model.toEntity()).toList();
      return Success(entities);
    } catch (e) {
      try {
        final cachedShows = await localDataSource.getShows();
        if (cachedShows.isNotEmpty) {
          return Success(cachedShows.map((model) => model.toEntity()).toList());
        }
      } catch (_) {}

      return Error(e.toString());
    }
  }

  @override
  Future<Result<List<Show>>> getLocalShows() async {
    try {
      final posts = await localDataSource.getShows();
      final entities = posts.map((model) => model.toEntity()).toList();
      return Success(entities);
    } catch (e) {
      return Error(e.toString());
    }
  }

  @override
  Future<void> clearShows() async => localDataSource.clearShows();

  @override
  List<Show> filterShows(List<Show> shows, ShowFilter filter) {
    var filtered = shows;

    // Filter by genres (Adventure, Comedy, Drama, etc.)
    if (filter.genres.isNotEmpty) {
      filtered = filtered
          .where((show) => filter.genres.any((genre) => show.genres.contains(genre)))
          .toList();
    }

    // Filter by status (Running, Ended, etc.)
    if (filter.statuses.isNotEmpty) {
      filtered = filtered.where((show) => filter.statuses.contains(show.status)).toList();
    }

    // Filter by premiered date range
    if (filter.premieredFrom != null || filter.premieredTo != null) {
      filtered = filtered.where((show) {
        if (show.premiered == null || show.premiered!.isEmpty) return false;
        final showDate = DateTime.tryParse(show.premiered!);
        if (showDate == null) return false;

        if (filter.premieredFrom != null) {
          final fromDate = DateTime.tryParse(filter.premieredFrom!);
          if (fromDate != null && showDate.isBefore(fromDate)) return false;
        }

        if (filter.premieredTo != null) {
          final toDate = DateTime.tryParse(filter.premieredTo!);
          if (toDate != null && showDate.isAfter(toDate)) return false;
        }

        return true;
      }).toList();
    }

    // Filter by ended date range
    if (filter.endedFrom != null || filter.endedTo != null) {
      filtered = filtered.where((show) {
        if (show.ended == null || show.ended!.isEmpty) {
          return true; // Include ongoing shows
        }
        final showDate = DateTime.tryParse(show.ended!);
        if (showDate == null) return true;

        if (filter.endedFrom != null) {
          final fromDate = DateTime.tryParse(filter.endedFrom!);
          if (fromDate != null && showDate.isBefore(fromDate)) return false;
        }

        if (filter.endedTo != null) {
          final toDate = DateTime.tryParse(filter.endedTo!);
          if (toDate != null && showDate.isAfter(toDate)) return false;
        }

        return true;
      }).toList();
    }

    // Filter by rating range
    if (filter.minRating != null) {
      filtered = filtered
          .where((show) => (show.rating?.average ?? 0) >= filter.minRating!)
          .toList();
    }
    if (filter.maxRating != null) {
      filtered = filtered
          .where((show) => (show.rating?.average ?? 0) <= filter.maxRating!)
          .toList();
    }

    // Filter by country
    if (filter.countries.isNotEmpty) {
      filtered = filtered.where((show) {
        final countryCode = show.network?.country?.code;
        return countryCode != null && filter.countries.contains(countryCode);
      }).toList();
    }

    // Sort (only if sortBy is specified)
    if (filter.sortBy != null) {
      switch (filter.sortBy) {
        case SortField.name:
          filtered.sort((a, b) => a.name.compareTo(b.name));
        case SortField.rating:
          filtered.sort((a, b) => (b.rating?.average ?? 0).compareTo(a.rating?.average ?? 0));
        case SortField.premiered:
          filtered.sort((a, b) {
            final dateA = DateTime.tryParse(a.premiered ?? '') ?? DateTime(0);
            final dateB = DateTime.tryParse(b.premiered ?? '') ?? DateTime(0);
            return dateA.compareTo(dateB);
          });
        case SortField.ended:
          filtered.sort((a, b) {
            final dateA = DateTime.tryParse(a.ended ?? '') ?? DateTime.now();
            final dateB = DateTime.tryParse(b.ended ?? '') ?? DateTime.now();
            return dateA.compareTo(dateB);
          });
        default:
          break;
      }
    }

    // Reverse for DESC order
    if (filter.sortOrder == SortOrder.desc) {
      filtered = filtered.reversed.toList();
    }

    return filtered;
  }

  @override
  List<Show> paginateShows(List<Show> shows, PaginationParams pagination) {
    final sorted = [...shows];
    sorted.sort((a, b) {
      final aIsRunning = a.status.toLowerCase() == 'running' ? 0 : 1;
      final bIsRunning = b.status.toLowerCase() == 'running' ? 0 : 1;
      return aIsRunning.compareTo(bIsRunning);
    });

    final startIndex = (pagination.currentPage - 1) * pagination.pageSize;
    final endIndex = startIndex + pagination.pageSize;

    if (startIndex >= sorted.length) {
      return [];
    }

    return sorted.sublist(startIndex, endIndex.clamp(0, sorted.length));
  }

  @override
  Future<Result<List<Show>>> searchShows(
    SearchQuery query, {
    ShowFilter? filter,
    PaginationParams? pagination,
  }) async {
    try {
      // Persist search query and filter asynchronously without blocking
      unawaited(
        Future(() async {
          await searchFilterLocalDataSource.saveSearchQuery(query);
          if (filter != null) {
            await searchFilterLocalDataSource.saveFilter(filter);
          }
        }),
      );

      late List<ShowModel> results;
      if (query.isEmpty) {
        results = await remoteDataSource.fetchShows();
      } else {
        results = await remoteDataSource.searchShows(query.query);
      }

      var shows = results.map((model) => model.toEntity()).toList();

      if (filter != null) {
        shows = filterShows(shows, filter);
      }

      if (pagination != null) {
        shows = paginateShows(shows, pagination);
      }

      return Success(shows);
    } catch (e) {
      return Error(e.toString());
    }
  }
}
