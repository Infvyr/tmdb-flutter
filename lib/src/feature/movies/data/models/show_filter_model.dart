import 'package:isar/isar.dart';
import 'package:tmdbmaze/src/feature/movies/export.dart';

part 'show_filter_model.g.dart';

@collection
class ShowFilterModel {
  ShowFilterModel({
    this.sortByValue = 'name',
    this.sortOrderValue = 'asc',
    this.genres = const [],
    this.statuses = const [],
    this.premieredFrom,
    this.premieredTo,
    this.endedFrom,
    this.endedTo,
    this.minRating,
    this.maxRating,
    this.countries = const [],
  });

  factory ShowFilterModel.fromEntity(ShowFilter entity) => ShowFilterModel(
    sortByValue: entity.sortBy.toString().split('.').last,
    sortOrderValue: entity.sortOrder.toString().split('.').last,
    genres: entity.genres,
    statuses: entity.statuses,
    premieredFrom: entity.premieredFrom,
    premieredTo: entity.premieredTo,
    endedFrom: entity.endedFrom,
    endedTo: entity.endedTo,
    minRating: entity.minRating,
    maxRating: entity.maxRating,
    countries: entity.countries,
  );

  Id id = 1;

  late String sortByValue;
  late String sortOrderValue;
  late List<String> genres;
  late List<String> statuses;
  late String? premieredFrom;
  late String? premieredTo;
  late String? endedFrom;
  late String? endedTo;
  late double? minRating;
  late double? maxRating;
  late List<String> countries;

  ShowFilter toEntity() {
    final sortByValue = _parseSortField(this.sortByValue);
    final sortOrderValue = _parseSortOrder(this.sortOrderValue);

    return ShowFilter(
      sortBy: sortByValue,
      sortOrder: sortOrderValue,
      genres: genres,
      statuses: statuses,
      premieredFrom: premieredFrom,
      premieredTo: premieredTo,
      endedFrom: endedFrom,
      endedTo: endedTo,
      minRating: minRating,
      maxRating: maxRating,
      countries: countries,
    );
  }

  static SortField _parseSortField(String value) => SortField.values.firstWhere(
    (e) => e.toString().split('.').last == value,
    orElse: () => SortField.name,
  );

  static SortOrder _parseSortOrder(String value) => SortOrder.values.firstWhere(
    (e) => e.toString().split('.').last == value,
    orElse: () => SortOrder.asc,
  );
}
