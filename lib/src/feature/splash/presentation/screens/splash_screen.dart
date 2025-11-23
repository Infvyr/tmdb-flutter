import 'package:flutter/material.dart';
import 'package:tmdbmaze/src/app/export.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _redirectToMainScreen();
  }

  Future<void> _redirectToMainScreen() async => Future.delayed(const Duration(seconds: 2), () {
    if (mounted) {
      Navigator.popAndPushNamed(context, AppRoutes.shows);
    }
  });

  @override
  Widget build(BuildContext context) => const Placeholder(child: Text('Splash screen'));
}
