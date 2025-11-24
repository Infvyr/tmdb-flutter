part of 'connectivity_bloc.dart';

abstract class ConnectivityEvent extends Equatable {
  const ConnectivityEvent();

  @override
  List<Object?> get props => [];
}

class CheckConnectivityEvent extends ConnectivityEvent {
  const CheckConnectivityEvent();
}

class ConnectivityChangedEvent extends ConnectivityEvent {
  const ConnectivityChangedEvent({required this.isConnected});

  final bool isConnected;

  @override
  List<Object?> get props => [isConnected];
}

class StartMonitoringConnectivityEvent extends ConnectivityEvent {
  const StartMonitoringConnectivityEvent();
}
