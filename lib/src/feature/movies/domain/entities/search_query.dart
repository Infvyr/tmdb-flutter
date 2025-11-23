import 'package:equatable/equatable.dart';

class SearchQuery extends Equatable {
  const SearchQuery({
    this.query = '',
    this.searchByName = true,
    this.searchByGenre = false,
    this.searchByNetwork = false,
  });

  final String query;
  final bool searchByName;
  final bool searchByGenre;
  final bool searchByNetwork;

  bool get isEmpty => query.isEmpty;

  SearchQuery copyWith({
    String? query,
    bool? searchByName,
    bool? searchByGenre,
    bool? searchByNetwork,
  }) => SearchQuery(
    query: query ?? this.query,
    searchByName: searchByName ?? this.searchByName,
    searchByGenre: searchByGenre ?? this.searchByGenre,
    searchByNetwork: searchByNetwork ?? this.searchByNetwork,
  );

  SearchQuery clear() => const SearchQuery();

  @override
  List<Object?> get props => [query, searchByName, searchByGenre, searchByNetwork];
}
