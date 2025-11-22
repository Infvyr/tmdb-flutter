import 'package:equatable/equatable.dart';

class FilterOptions extends Equatable {
  const FilterOptions({
    this.types = const [],
    this.statuses = const [],
    this.genres = const [],
    this.countries = const {},
  });

  final List<String> types;
  final List<String> statuses;
  final List<String> genres;
  final Map<String, String> countries; // code -> name

  @override
  List<Object?> get props => [types, statuses, genres, countries];
}
