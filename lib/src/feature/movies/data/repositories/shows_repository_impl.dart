import 'package:tmdbmaze/src/app/export.dart';
import 'package:tmdbmaze/src/feature/movies/export.dart';

class ShowsRepositoryImpl implements ShowsRepository {
  ShowsRepositoryImpl({required this.remoteDataSource, required this.localDataSource});
  final ShowsRemoteDataSource remoteDataSource;
  final ShowsLocalDataSource localDataSource;

  @override
  Future<Result<List<Show>>> getShows({bool forceRefresh = false}) async {
    try {
      if (!forceRefresh) {
        final cachedShows = await localDataSource.getShows();
        if (cachedShows.isNotEmpty) {
          return Success(cachedShows.map((model) => model.toEntity()).toList());
        }
      }

      final remotePosts = await remoteDataSource.fetchPosts();
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
}
