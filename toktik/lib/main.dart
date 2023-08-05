import 'package:flutter/material.dart';
import 'package:toktik/config/theme/app_theme.dart';
import 'package:toktik/infrastructure/datasources/local_videos_datasource_impl.dart';
import 'package:toktik/infrastructure/repositories/video_post_repository_impl.dart';
import 'package:toktik/presentation/screens/discover/discover_screen.dart';

import 'package:provider/provider.dart';
import 'package:toktik/presentation/providers/discover_provider.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    final videoPostRepository =
        VideoPostRepositoryImpl(videoPostDataSource: LocalVideoDataSource());
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          lazy: false,
          create: (_) => DiscoverProvider(
            videoPostRepository: videoPostRepository,
          )..loadingNextPage(),
        ),
      ],
      child: MaterialApp(
        theme: AppTheme.theme,
        home: const DiscoverScreen(),
      ),
    );
  }
}
