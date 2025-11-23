import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:tmdbmaze/src/app/config/bloc_observer.dart';
import 'package:tmdbmaze/src/app/di/injector.dart';

import 'app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  Bloc.observer = AppBlocObserver();

  await setupServiceLocator();

  runApp(const MainApp());
}
