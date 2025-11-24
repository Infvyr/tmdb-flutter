import 'package:connectivity_plus/connectivity_plus.dart';

abstract class ConnectivityDataSource {
  Future<bool> hasInternetConnection();

  Stream<bool> get connectivityStream;
}

class ConnectivityDataSourceImpl implements ConnectivityDataSource {
  final Connectivity _connectivity = Connectivity();

  @override
  Future<bool> hasInternetConnection() async {
    try {
      final result = await _connectivity.checkConnectivity();
      return _isConnected(result);
    } catch (e) {
      return true;
    }
  }

  @override
  Stream<bool> get connectivityStream =>
      _connectivity.onConnectivityChanged.map(_isConnected).distinct().asBroadcastStream();

  bool _isConnected(dynamic result) {
    if (result is List<ConnectivityResult>) {
      final hasNoConnection = result.contains(ConnectivityResult.none);
      return !hasNoConnection;
    }
    if (result is ConnectivityResult) {
      final isOffline = result == ConnectivityResult.none;
      return !isOffline;
    }
    return true;
  }
}
