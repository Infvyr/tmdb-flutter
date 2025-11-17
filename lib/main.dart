import 'package:flutter/material.dart';

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
  runApp(MainApp());
}
