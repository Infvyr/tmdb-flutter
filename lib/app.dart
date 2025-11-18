import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tmdbmaze/src/feature/movies/export.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key, required this.repository});

  final ShowsRepository repository;

  @override
  Widget build(BuildContext context) => MaterialApp(
    home: BlocProvider(
      create: (context) => ShowsBloc(repository: repository)..add(const LoadShows()),
      child: const ShowsScreen(),
    ),
  );
}
