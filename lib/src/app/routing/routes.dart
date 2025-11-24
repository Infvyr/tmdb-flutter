import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tmdbmaze/src/app/di/service_locator.dart';
import 'package:tmdbmaze/src/feature/connectivity/export.dart';
import 'package:tmdbmaze/src/feature/movie/export.dart';
import 'package:tmdbmaze/src/feature/movies/export.dart';

class AppRoutes {
  factory AppRoutes() {
    _instance ??= AppRoutes._internal();
    return _instance!;
  }

  AppRoutes._internal();

  static AppRoutes? _instance;

  static const shows = '/shows';
  static const show = '/show';
}

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.shows:
        return MaterialPageRoute(
          builder: (_) => MultiBlocProvider(
            providers: [
              BlocProvider(create: (context) => getIt<ShowsBloc>()..add(const LoadShows())),
              BlocProvider(create: (context) => getIt<ConnectivityBloc>()),
            ],
            child: const ConnectivityStatusWidget(child: ShowsScreen()),
          ),
        );
      case AppRoutes.show:
        final show = settings.arguments as Show;
        return MaterialPageRoute(builder: (_) => MovieScreen(show: show));
      default:
        return MaterialPageRoute(
          builder: (_) =>
              const Scaffold(body: Center(child: Text(r'No route defined for ${settings.name}'))),
        );
    }
  }
}
