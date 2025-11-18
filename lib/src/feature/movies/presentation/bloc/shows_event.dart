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
