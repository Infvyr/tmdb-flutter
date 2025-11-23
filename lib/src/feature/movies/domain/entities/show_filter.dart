import 'package:equatable/equatable.dart';

enum SortOrder { asc, desc }

class ShowFilter extends Equatable {
  const ShowFilter({
    this.sortBy,
    this.sortOrder = SortOrder.asc,
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

  final SortField? sortBy;
  final SortOrder sortOrder;
  final List<String> genres;
  final List<String> statuses;
  final String? premieredFrom;
  final String? premieredTo;
  final String? endedFrom;
  final String? endedTo;
  final double? minRating;
  final double? maxRating;
  final List<String> countries;

  ShowFilter copyWith({
    SortField? sortBy,
    SortOrder? sortOrder,
    List<String>? genres,
    List<String>? statuses,
    String? premieredFrom,
    String? premieredTo,
    String? endedFrom,
    String? endedTo,
    double? minRating,
    double? maxRating,
    List<String>? countries,
    bool clearPremieredFrom = false,
    bool clearPremieredTo = false,
    bool clearEndedFrom = false,
    bool clearEndedTo = false,
    bool clearMinRating = false,
    bool clearMaxRating = false,
  }) => ShowFilter(
    sortBy: sortBy ?? this.sortBy,
    sortOrder: sortOrder ?? this.sortOrder,
    genres: genres ?? this.genres,
    statuses: statuses ?? this.statuses,
    premieredFrom: clearPremieredFrom ? null : premieredFrom ?? this.premieredFrom,
    premieredTo: clearPremieredTo ? null : premieredTo ?? this.premieredTo,
    endedFrom: clearEndedFrom ? null : endedFrom ?? this.endedFrom,
    endedTo: clearEndedTo ? null : endedTo ?? this.endedTo,
    minRating: clearMinRating ? null : minRating ?? this.minRating,
    maxRating: clearMaxRating ? null : maxRating ?? this.maxRating,
    countries: countries ?? this.countries,
  );
  @override
  List<Object?> get props => [
    sortBy,
    sortOrder,
    genres,
    statuses,
    premieredFrom,
    premieredTo,
    endedFrom,
    endedTo,
    minRating,
    maxRating,
    countries,
  ];
}

enum SortField { name, rating, premiered, ended }
