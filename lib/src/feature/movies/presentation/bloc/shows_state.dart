part of 'shows_bloc.dart';

sealed class ShowsState extends Equatable {
  const ShowsState();

  @override
  List<Object?> get props => [];
}

final class ShowsInitial extends ShowsState {}

class ShowsLoading extends ShowsState {}

class ShowsLoaded extends ShowsState {
  const ShowsLoaded(
    this.shows, {
    this.isFromCache = false,
    this.pagination,
    this.currentQuery,
    this.currentFilter,
  });

  final List<Show> shows;
  final bool isFromCache;
  final PaginationParams? pagination;
  final SearchQuery? currentQuery;
  final ShowFilter? currentFilter;

  @override
  List<Object?> get props => [shows, isFromCache, pagination, currentQuery, currentFilter];
}

class ShowsError extends ShowsState {
  const ShowsError(this.message);

  final String message;

  @override
  List<Object> get props => [message];
}
