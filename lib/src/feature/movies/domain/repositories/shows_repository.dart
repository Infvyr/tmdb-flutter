import 'package:tmdbmaze/src/app/export.dart';
import 'package:tmdbmaze/src/feature/movies/export.dart';

abstract class ShowsRepository {
  Future<Result<List<Show>>> getShows({bool forceRefresh = false});
  Future<Result<List<Show>>> getLocalShows();
  Future<void> clearShows();
  
  // Search
  Future<Result<List<Show>>> searchShows(
    SearchQuery query, {
    ShowFilter? filter,
    PaginationParams? pagination,
  });
  
  // Filter
  List<Show> filterShows(List<Show> shows, ShowFilter filter);
  
  // Pagination
  List<Show> paginateShows(List<Show> shows, PaginationParams pagination);
}
