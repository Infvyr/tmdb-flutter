import 'package:isar/isar.dart';
import 'package:tmdbmaze/src/feature/movies/export.dart';

part 'search_query_model.g.dart';

@collection
class SearchQueryModel {
  SearchQueryModel({
    required this.query,
    this.searchByName = true,
    this.searchByGenre = false,
    this.searchByNetwork = false,
  });

  factory SearchQueryModel.fromEntity(SearchQuery entity) => SearchQueryModel(
    query: entity.query,
    searchByName: entity.searchByName,
    searchByGenre: entity.searchByGenre,
    searchByNetwork: entity.searchByNetwork,
  );

  Id id = 1;

  late String query;
  late bool searchByName;
  late bool searchByGenre;
  late bool searchByNetwork;

  SearchQuery toEntity() => SearchQuery(
    query: query,
    searchByName: searchByName,
    searchByGenre: searchByGenre,
    searchByNetwork: searchByNetwork,
  );
}
