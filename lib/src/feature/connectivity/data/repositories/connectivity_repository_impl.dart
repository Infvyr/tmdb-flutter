import 'package:tmdbmaze/src/feature/connectivity/export.dart';

class ConnectivityRepositoryImpl implements ConnectivityRepository {
  ConnectivityRepositoryImpl({required ConnectivityDataSource dataSource})
    : _dataSource = dataSource;

  final ConnectivityDataSource _dataSource;

  @override
  Future<bool> hasInternetConnection() => _dataSource.hasInternetConnection();

  @override
  Stream<bool> get connectivityStream => _dataSource.connectivityStream;
}
