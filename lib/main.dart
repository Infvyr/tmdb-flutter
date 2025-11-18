import 'package:flutter/material.dart';
import 'package:tmdbmaze/src/app/export.dart';
import 'package:tmdbmaze/src/feature/movies/export.dart';

import 'app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // final appDocumentDir = await getApplicationDocumentsDirectory();
  // await Hive.initFlutter(appDocumentDir.path);
  // Hive.registerAdapter(MovieAdapter());
  // Hive.registerAdapter(GenreAdapter());
  // await Hive.openBox<Movie>('movies');
  // await Hive.openBox<Genre>('genres');

  // final connectivityService = ConnectivityService();
  // final connectivityBloc = ConnectivityBloc(connectivityService);
  // connectivityBloc.checkConnectivity();

  // runApp(MyApp(connectivityBloc: connectivityBloc));

  final isar = await IsarService.getInstance();
  final httpClient = HttpClient.instance;

  final remoteDataSource = ShowsRemoteDataSourceImpl(client: httpClient);
  final localDataSource = ShowsLocalDataSourceImpl(isar: isar);

  final repository = ShowsRepositoryImpl(remoteDataSource: remoteDataSource, localDataSource: localDataSource);

  runApp(MainApp(repository: repository));
}
