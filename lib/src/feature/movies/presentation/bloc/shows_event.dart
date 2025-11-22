part of 'shows_bloc.dart';

sealed class ShowsEvent extends Equatable {
  const ShowsEvent();

  @override
  List<Object?> get props => [];
}

class LoadShows extends ShowsEvent {
  const LoadShows({this.forceRefresh = false});

  final bool forceRefresh;

  @override
  List<Object?> get props => [forceRefresh];
}

class LoadLocalShows extends ShowsEvent {}

class SearchShowsEvent extends ShowsEvent {
  const SearchShowsEvent(
    this.query, {
    this.filter,
    this.pagination,
  });

  final SearchQuery query;
  final ShowFilter? filter;
  final PaginationParams? pagination;

  @override
  List<Object?> get props => [query, filter, pagination];
}

class ApplyFilterEvent extends ShowsEvent {
  const ApplyFilterEvent(this.filter);

  final ShowFilter filter;

  @override
  List<Object?> get props => [filter];
}

class ChangePaginationEvent extends ShowsEvent {
  const ChangePaginationEvent(this.pagination);

  final PaginationParams pagination;

  @override
  List<Object?> get props => [pagination];
}
