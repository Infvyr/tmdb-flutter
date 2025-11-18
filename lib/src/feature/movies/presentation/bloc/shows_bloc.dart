import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:tmdbmaze/src/app/export.dart';
import 'package:tmdbmaze/src/feature/movies/export.dart';

part 'shows_event.dart';
part 'shows_state.dart';

class ShowsBloc extends Bloc<ShowsEvent, ShowsState> {
  ShowsBloc({required this.repository}) : super(ShowsInitial()) {
    on<LoadShows>(_onLoadShows);
    on<LoadLocalShows>(_onLoadLocalPosts);
  }

  final ShowsRepository repository;

  Future<void> _onLoadShows(LoadShows event, Emitter<ShowsState> emit) async {
    emit(ShowsLoading());

    final result = await repository.getShows(forceRefresh: event.forceRefresh);

    switch (result) {
      case Success(:final data):
        emit(ShowsLoaded(data));

      case Error(:final message):
        emit(ShowsError(message));
    }
  }

  Future<void> _onLoadLocalPosts(LoadLocalShows event, Emitter<ShowsState> emit) async {
    emit(ShowsLoading());

    final result = await repository.getLocalShows();

    switch (result) {
      case Success(:final data):
        emit(ShowsLoaded(data, isFromCache: true));

      case Error(:final message):
        emit(ShowsError(message));
    }
  }
}
