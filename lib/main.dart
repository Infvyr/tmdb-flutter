import 'package:flutter/material.dart';
import 'package:tmdbmaze/src/app/di/injector.dart';

import 'app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await setupServiceLocator();

  runApp(const MainApp());
}
