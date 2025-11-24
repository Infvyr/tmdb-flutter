import 'package:flutter/material.dart';
import 'package:tmdbmaze/src/app/export.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'TmdbMaze',
    theme: ThemeData(
      colorScheme: ColorScheme.fromSeed(
        seedColor: const Color.fromARGB(255, 4, 104, 41),
        onTertiary: Colors.black87,
        tertiary: Colors.white70,
      ),
    ),
    darkTheme: ThemeData(
      colorScheme: ColorScheme.fromSeed(
        seedColor: const Color.fromARGB(255, 2, 66, 14),
        brightness: Brightness.dark,
        onTertiary: Colors.black87,
        tertiary: Colors.white70,
      ),
    ),
    initialRoute: AppRoutes.shows,
    onGenerateRoute: Routes.generateRoute,
  );
}
