import 'package:tmdbmaze/src/app/export.dart';
import 'package:tmdbmaze/src/feature/movies/export.dart';

abstract class ShowsRepository {
  Future<Result<List<Show>>> getShows({bool forceRefresh = false});
  Future<Result<List<Show>>> getLocalShows();
  Future<void> clearShows();
}
