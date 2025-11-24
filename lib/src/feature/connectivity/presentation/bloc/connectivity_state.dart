part of 'connectivity_bloc.dart';

abstract class ConnectivityState extends Equatable {
  const ConnectivityState({required this.isConnected});

  final bool isConnected;

  @override
  List<Object?> get props => [isConnected];
}

class ConnectivityInitial extends ConnectivityState {
  const ConnectivityInitial() : super(isConnected: false);
}

class ConnectivityOnline extends ConnectivityState {
  const ConnectivityOnline() : super(isConnected: true);
}

class ConnectivityOffline extends ConnectivityState {
  const ConnectivityOffline() : super(isConnected: false);
}
