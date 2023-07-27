import 'package:flutter/material.dart';
import 'package:toktik/config/theme/app_theme.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.theme,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('TokTik'),
        ),
        body: Center(
          child: Text('Hello World!'),
        ),
      ),
    );
  }
}
