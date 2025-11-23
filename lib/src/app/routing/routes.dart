import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tmdbmaze/src/app/di/service_locator.dart';
import 'package:tmdbmaze/src/feature/movies/export.dart';
import 'package:tmdbmaze/src/feature/splash/export.dart';

class AppRoutes {
  factory AppRoutes() {
    _instance ??= AppRoutes._internal();
    return _instance!;
  }

  AppRoutes._internal();

  static AppRoutes? _instance;

  static const splash = '/';
  static const shows = '/shows';
  static const show = '/show';
  static const profile = '/profile';
}

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.splash:
        return MaterialPageRoute(
          builder: (_) => const SplashScreen(),
          settings: RouteSettings(name: settings.name),
        );
      case AppRoutes.shows:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<ShowsBloc>()..add(const LoadShows()),
            child: const ShowsScreen(),
          ),
        );

      case AppRoutes.profile:
        return MaterialPageRoute(builder: (_) => const Scaffold(body: Text('Profile')));
      default:
        return MaterialPageRoute(
          builder: (_) =>
              const Scaffold(body: Center(child: Text(r'No route defined for ${settings.name}'))),
        );
    }
  }
}
