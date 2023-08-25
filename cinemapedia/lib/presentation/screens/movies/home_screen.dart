import 'package:cinemapedia/presentation/providers/providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeScreen extends StatelessWidget {
  static const name = 'home-screen';
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: _HomeView(),
    );
  }
}

class _HomeView extends ConsumerStatefulWidget {
  const _HomeView();

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends ConsumerState<_HomeView> {
  @override
  void initState() {
    super.initState();
    ref.read(nowPlayingMoviesProvider.notifier).loadNextPage();
  }

  @override
  Widget build(BuildContext context) {
    final movies = ref.watch(nowPlayingMoviesProvider);
    return ListView.builder(
      itemCount: movies.length,
      itemBuilder: (BuildContext context, int index) {
        final movie = movies[index];
        return ListTile(
          title: Text(movie.title),
          // subtitle: Text(movie.overview),
          leading: Image.network(
            'https://image.tmdb.org/t/p/w500${movie.posterPath}',
            fit: BoxFit.cover,
          ),
        );
      },
    );
  }
}
