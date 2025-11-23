import 'package:get_it/get_it.dart';
import 'package:http/http.dart' as http;
import 'package:isar/isar.dart';
import 'package:tmdbmaze/src/app/database/isar_service.dart';
import 'package:tmdbmaze/src/app/network/http_client.dart';
import 'package:tmdbmaze/src/feature/movies/data/datasources/shows_local_datasource.dart';
import 'package:tmdbmaze/src/feature/movies/data/datasources/shows_remote_datasource.dart';
import 'package:tmdbmaze/src/feature/movies/data/datasources/shows_search_filter_local_datasource.dart';
import 'package:tmdbmaze/src/feature/movies/data/repositories/shows_repository_impl.dart';
import 'package:tmdbmaze/src/feature/movies/domain/repositories/shows_repository.dart';
import 'package:tmdbmaze/src/feature/movies/domain/repositories/filter_options_repository.dart';
import 'package:tmdbmaze/src/feature/movies/presentation/bloc/shows_bloc.dart';

final getIt = GetIt.instance;

Future<void> setupServiceLocator() async {
  // Core services
  await _setupCoreDependencies();

  // Data layer
  _setupDataLayer();

  // Presentation layer
  _setupPresentationLayer();
}

Future<void> _setupCoreDependencies() async {
  // Database
  final isar = await IsarService.getInstance();
  getIt.registerSingleton<Isar>(isar);

  // HTTP Client
  final httpClient = HttpClient.instance;
  getIt.registerSingleton<http.Client>(httpClient);
}

void _setupDataLayer() {
  // Remote data source
  getIt.registerSingleton<ShowsRemoteDataSource>(
    ShowsRemoteDataSourceImpl(client: getIt<http.Client>()),
  );

  // Local data source
  getIt.registerSingleton<ShowsLocalDataSource>(ShowsLocalDataSourceImpl(isar: getIt<Isar>()));

  // Search and filter local data source
  getIt.registerSingleton<ShowsSearchFilterLocalDatasource>(
    ShowsSearchFilterLocalDatasourceImpl(isar: getIt<Isar>()),
  );

  // Repository
  getIt.registerSingleton<ShowsRepository>(
    ShowsRepositoryImpl(
      remoteDataSource: getIt<ShowsRemoteDataSource>(),
      localDataSource: getIt<ShowsLocalDataSource>(),
      searchFilterLocalDataSource: getIt<ShowsSearchFilterLocalDatasource>(),
    ),
  );

  // Filter options repository
  getIt.registerSingleton<FilterOptionsRepository>(FilterOptionsRepositoryImpl());
}

void _setupPresentationLayer() {
  // BLoCs
  getIt.registerSingleton<ShowsBloc>(ShowsBloc(repository: getIt<ShowsRepository>()));
}

/// Helper method to reset GetIt for testing
Future<void> resetServiceLocator() async {
  await getIt.reset();
}
