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
  List<Show> _originalShows = [];
  PaginationParams _currentPagination = const PaginationParams();

  Future<void> _onLoadShows(LoadShows event, Emitter<ShowsState> emit) async {
    emit(ShowsLoading());

    final result = await repository.getShows(forceRefresh: event.forceRefresh);

    switch (result) {
      case Success(:final data):
        _originalShows = data;
        _currentPagination = _currentPagination.reset().copyWith(
          totalItems: data.length,
        );
        final firstPage = repository.paginateShows(_originalShows, _currentPagination);
        emit(ShowsLoaded(firstPage, pagination: _currentPagination));

      case Error(:final message):
        emit(ShowsError(message));
    }
  }

  Future<void> _onLoadLocalPosts(LoadLocalShows event, Emitter<ShowsState> emit) async {
    emit(ShowsLoading());

    final result = await repository.getLocalShows();

    switch (result) {
      case Success(:final data):
        _originalShows = data;
        _currentPagination = _currentPagination.reset().copyWith(
          totalItems: data.length,
        );
        final firstPage = repository.paginateShows(_originalShows, _currentPagination);
        emit(ShowsLoaded(firstPage, isFromCache: true, pagination: _currentPagination));

      case Error(:final message):
        emit(ShowsError(message));
    }
  }

  Future<void> _onSearchShows(SearchShowsEvent event, Emitter<ShowsState> emit) async {
    // Always use repository search (API for non-empty query; /shows for empty),
    // then apply client-side pagination.
    final result = await repository.searchShows(
      event.query,
      filter: event.filter,
    );

    switch (result) {
      case Success(:final data):
        _originalShows = data;
        _currentPagination = _currentPagination.reset().copyWith(
          totalItems: data.length,
        );
        final firstPage = repository.paginateShows(_originalShows, _currentPagination);
        emit(ShowsLoaded(firstPage, pagination: _currentPagination));
      case Error(:final message):
        emit(ShowsError(message));
    }
  }

  Future<void> _onApplyFilter(ApplyFilterEvent event, Emitter<ShowsState> emit) async {
    final currentState = state;
    if (currentState is ShowsLoaded) {
      final filteredFull = repository.filterShows(_originalShows, event.filter);
      _originalShows = filteredFull;
      _currentPagination = _currentPagination.reset().copyWith(
        totalItems: filteredFull.length,
      );
      final firstPage = repository.paginateShows(_originalShows, _currentPagination);
      emit(ShowsLoaded(firstPage, isFromCache: currentState.isFromCache, pagination: _currentPagination));
    }
  }

  Future<void> _onChangePagination(
    ChangePaginationEvent event,
    Emitter<ShowsState> emit,
  ) async {
    final currentState = state;
    if (currentState is ShowsLoaded) {
      _currentPagination = event.pagination;
      final paginated = repository.paginateShows(_originalShows, event.pagination);
      emit(ShowsLoaded(paginated, isFromCache: currentState.isFromCache, pagination: _currentPagination));
    }
  }
}
