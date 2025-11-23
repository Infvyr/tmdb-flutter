import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:tmdbmaze/src/app/export.dart';
import 'package:tmdbmaze/src/feature/movies/export.dart';

part 'shows_event.dart';
part 'shows_state.dart';

class ShowsBloc extends Bloc<ShowsEvent, ShowsState> {
  ShowsBloc({required this.repository}) : super(ShowsLoading()) {
    on<LoadShows>(_onLoadShows);
    on<LoadLocalShows>(_onLoadLocalPosts);
    on<SearchShowsEvent>(_onSearchShows);
    on<ApplyFilterEvent>(_onApplyFilter);
    on<ChangePaginationEvent>(_onChangePagination);
  }

  final ShowsRepository repository;
  List<Show> _currentSearchResults = [];
  PaginationParams _currentPagination = const PaginationParams();
  SearchQuery _currentQuery = const SearchQuery();
  ShowFilter _currentFilter = const ShowFilter();

  Future<void> _onLoadShows(LoadShows event, Emitter<ShowsState> emit) async {
    emit(ShowsLoading());

    final result = await repository.getShows(forceRefresh: event.forceRefresh);

    switch (result) {
      case Success(:final data):
        _currentSearchResults = data;
        _currentQuery = const SearchQuery();
        _currentFilter = const ShowFilter();
        _currentPagination = _currentPagination.reset().copyWith(totalItems: data.length);
        final firstPage = repository.paginateShows(_currentSearchResults, _currentPagination);
        emit(
          ShowsLoaded(
            firstPage,
            pagination: _currentPagination,
            currentQuery: _currentQuery,
            currentFilter: _currentFilter,
          ),
        );

      case Error(:final message):
        emit(ShowsError(message));
    }
  }

  Future<void> _onLoadLocalPosts(LoadLocalShows event, Emitter<ShowsState> emit) async {
    emit(ShowsLoading());

    final result = await repository.getLocalShows();

    switch (result) {
      case Success(:final data):
        _currentSearchResults = data;
        _currentQuery = const SearchQuery();
        _currentFilter = const ShowFilter();
        _currentPagination = _currentPagination.reset().copyWith(totalItems: data.length);
        final firstPage = repository.paginateShows(_currentSearchResults, _currentPagination);
        emit(
          ShowsLoaded(
            firstPage,
            isFromCache: true,
            pagination: _currentPagination,
            currentQuery: _currentQuery,
            currentFilter: _currentFilter,
          ),
        );

      case Error(:final message):
        emit(ShowsError(message));
    }
  }

  Future<void> _onSearchShows(SearchShowsEvent event, Emitter<ShowsState> emit) async {
    // Always use repository search (API for non-empty query; /shows for empty),
    // then apply client-side pagination.
    final result = await repository.searchShows(event.query, filter: event.filter);

    switch (result) {
      case Success(:final data):
        _currentSearchResults = data;
        _currentQuery = event.query;
        _currentFilter = event.filter ?? const ShowFilter();
        _currentPagination = _currentPagination.reset().copyWith(totalItems: data.length);
        final firstPage = repository.paginateShows(_currentSearchResults, _currentPagination);
        emit(
          ShowsLoaded(
            firstPage,
            pagination: _currentPagination,
            currentQuery: _currentQuery,
            currentFilter: _currentFilter,
          ),
        );
      case Error(:final message):
        emit(ShowsError(message));
    }
  }

  Future<void> _onApplyFilter(ApplyFilterEvent event, Emitter<ShowsState> emit) async {
    final currentState = state;
    if (currentState is ShowsLoaded) {
      final filteredFull = repository.filterShows(_currentSearchResults, event.filter);
      _currentFilter = event.filter;
      _currentPagination = _currentPagination.reset().copyWith(totalItems: filteredFull.length);
      final firstPage = repository.paginateShows(filteredFull, _currentPagination);
      emit(
        ShowsLoaded(
          firstPage,
          isFromCache: currentState.isFromCache,
          pagination: _currentPagination,
          currentQuery: _currentQuery,
          currentFilter: _currentFilter,
        ),
      );
    }
  }

  Future<void> _onChangePagination(ChangePaginationEvent event, Emitter<ShowsState> emit) async {
    final currentState = state;
    if (currentState is ShowsLoaded) {
      _currentPagination = event.pagination;
      final filteredFull = repository.filterShows(_currentSearchResults, _currentFilter);
      final paginated = repository.paginateShows(filteredFull, event.pagination);
      emit(
        ShowsLoaded(
          paginated,
          isFromCache: currentState.isFromCache,
          pagination: _currentPagination,
          currentQuery: _currentQuery,
          currentFilter: _currentFilter,
        ),
      );
    }
  }
}
