import 'package:cinemapedia/config/initials/initial_setup.dart';
import 'package:cinemapedia/config/router/app_router.dart';
import 'package:cinemapedia/config/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() async {
  await AppInitialSetup.init();
  runApp(const ProviderScope(child: MainApp()));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Cinemapedia',
      routerConfig: appRouter,
      debugShowCheckedModeBanner: false,
      theme: AppTheme().themeData,
    );
  }
}
