import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:tmdbmaze/src/feature/connectivity/domain/repositories/connectivity_repository.dart';

part 'connectivity_event.dart';
part 'connectivity_state.dart';

class ConnectivityBloc extends Bloc<ConnectivityEvent, ConnectivityState> {
  ConnectivityBloc({required ConnectivityRepository connectivityRepository})
    : _connectivityRepository = connectivityRepository,
      super(const ConnectivityOnline()) {
    on<CheckConnectivityEvent>(_onCheckConnectivity);
    on<ConnectivityChangedEvent>(_onConnectivityChanged);
    on<StartMonitoringConnectivityEvent>(_onStartMonitoring);

    _startMonitoring();
  }

  final ConnectivityRepository _connectivityRepository;

  void _startMonitoring() {
    add(const StartMonitoringConnectivityEvent());
    _connectivityRepository.connectivityStream.listen((isConnected) {
      add(ConnectivityChangedEvent(isConnected: isConnected));
    });
  }

  Future<void> _onCheckConnectivity(
    CheckConnectivityEvent event,
    Emitter<ConnectivityState> emit,
  ) async {
    final isConnected = await _connectivityRepository.hasInternetConnection();
    emit(isConnected ? const ConnectivityOnline() : const ConnectivityOffline());
  }

  Future<void> _onConnectivityChanged(
    ConnectivityChangedEvent event,
    Emitter<ConnectivityState> emit,
  ) async {
    emit(event.isConnected ? const ConnectivityOnline() : const ConnectivityOffline());
  }

  Future<void> _onStartMonitoring(
    StartMonitoringConnectivityEvent event,
    Emitter<ConnectivityState> emit,
  ) async {
    final isConnected = await _connectivityRepository.hasInternetConnection();
    emit(isConnected ? const ConnectivityOnline() : const ConnectivityOffline());
  }
}
