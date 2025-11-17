class AppRoutes {
  // static final AppRoutes _instance = AppRoutes._internal();
  static AppRoutes? _instance;

  AppRoutes._internal();

  factory AppRoutes() {
    _instance ??= AppRoutes._internal();
    return _instance!;
  }

  static const splash = '/';
  static const login = '/login';
  static const home = '/home';
  static const movie = '/movie';
  static const profile = '/profile';
}
