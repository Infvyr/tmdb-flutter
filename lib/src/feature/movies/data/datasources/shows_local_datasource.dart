import 'package:isar/isar.dart';
import 'package:tmdbmaze/src/feature/movies/export.dart';

abstract class ShowsLocalDataSource {
  Future<List<ShowModel>> getShows();
  Future<void> cacheShows(List<ShowModel> shows);
  Future<void> clearShows();
}

class ShowsLocalDataSourceImpl implements ShowsLocalDataSource {
  ShowsLocalDataSourceImpl({required this.isar});
  final Isar isar;

  @override
  Future<List<ShowModel>> getShows() async => isar.showModels.where().findAll();

  @override
  Future<void> cacheShows(List<ShowModel> shows) async => isar.writeTxn(() async {
    await isar.showModels.clear();
    await isar.showModels.putAll(shows);
  });

  @override
  Future<void> clearShows() async => isar.writeTxn(() async => isar.showModels.clear());
}
