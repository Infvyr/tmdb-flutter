import 'package:equatable/equatable.dart';

enum SortOrder { asc, desc }

class ShowFilter extends Equatable {
  const ShowFilter({
    this.sortBy = SortField.name,
    this.sortOrder = SortOrder.asc,
    this.types = const [],
    this.statuses = const [],
    this.premieredFrom,
    this.premieredTo,
    this.endedFrom,
    this.endedTo,
    this.minRating,
    this.maxRating,
    this.countries = const [],
  });

  final SortField sortBy;
  final SortOrder sortOrder;
  final List<String> types;
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
    List<String>? types,
    List<String>? statuses,
    String? premieredFrom,
    String? premieredTo,
    String? endedFrom,
    String? endedTo,
    double? minRating,
    double? maxRating,
    List<String>? countries,
  }) {
    return ShowFilter(
      sortBy: sortBy ?? this.sortBy,
      sortOrder: sortOrder ?? this.sortOrder,
      types: types ?? this.types,
      statuses: statuses ?? this.statuses,
      premieredFrom: premieredFrom ?? this.premieredFrom,
      premieredTo: premieredTo ?? this.premieredTo,
      endedFrom: endedFrom ?? this.endedFrom,
      endedTo: endedTo ?? this.endedTo,
      minRating: minRating ?? this.minRating,
      maxRating: maxRating ?? this.maxRating,
      countries: countries ?? this.countries,
    );
  }

  @override
  List<Object?> get props => [
    sortBy,
    sortOrder,
    types,
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
