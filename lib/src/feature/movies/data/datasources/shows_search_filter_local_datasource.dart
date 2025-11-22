import 'package:flutter/foundation.dart';
import 'package:isar/isar.dart';
import 'package:tmdbmaze/src/feature/movies/export.dart';

abstract class ShowsSearchFilterLocalDatasource {
  Future<SearchQuery> getLastSearchQuery();
  Future<void> saveSearchQuery(SearchQuery query);

  Future<ShowFilter> getLastFilter();
  Future<void> saveFilter(ShowFilter filter);

  Future<void> clearAll();
}

class ShowsSearchFilterLocalDatasourceImpl implements ShowsSearchFilterLocalDatasource {
  ShowsSearchFilterLocalDatasourceImpl({required this.isar});

  final Isar isar;

  static const _searchQueryId = 1;
  static const _filterId = 1;

  @override
  Future<SearchQuery> getLastSearchQuery() async {
    try {
      final query = await isar.searchQueryModels.get(_searchQueryId);
      return query?.toEntity() ?? const SearchQuery();
    } catch (e) {
      debugPrint('Failed to get search query: $e');
      return const SearchQuery();
    }
  }

  @override
  Future<void> saveSearchQuery(SearchQuery query) async {
    try {
      final model = SearchQueryModel.fromEntity(query);
      await isar.writeTxn(() async {
        await isar.searchQueryModels.put(model);
      });
    } catch (e) {
      debugPrint('Failed to save search query: $e');
    }
  }

  @override
  Future<ShowFilter> getLastFilter() async {
    try {
      final filter = await isar.showFilterModels.get(_filterId);
      return filter?.toEntity() ?? const ShowFilter();
    } catch (e) {
      debugPrint('Failed to get filter: $e');
      return const ShowFilter();
    }
  }

  @override
  Future<void> saveFilter(ShowFilter filter) async {
    try {
      final model = ShowFilterModel.fromEntity(filter);
      await isar.writeTxn(() async {
        await isar.showFilterModels.put(model);
      });
    } catch (e) {
      debugPrint('Failed to save filter: $e');
    }
  }

  @override
  Future<void> clearAll() async {
    try {
      await isar.writeTxn(() async {
        await isar.searchQueryModels.clear();
        await isar.showFilterModels.clear();
      });
    } catch (e) {
      debugPrint('Failed to clear search and filter data: $e');
    }
  }
}
