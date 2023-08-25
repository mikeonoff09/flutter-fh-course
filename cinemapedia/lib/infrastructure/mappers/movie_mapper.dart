import 'package:cinemapedia/domain/entities/movie.dart';
import 'package:cinemapedia/infrastructure/models/movie_from_movie_db.dart';

class MovieMapper {
  static Movie movieDBToEntity(MovieMovieDB moviedb) => Movie(
        adult: moviedb.adult,
        backdropPath: moviedb.backdropPath.isNotEmpty
            ? 'https://image.tmdb.org/t/p/w500/${moviedb.backdropPath}'
            : 'https://d3aa3603f5de3f81cb9fdaa5c591a84d5723e3cb.hosting4cdn.com/wp-content/uploads/2020/11/404-poster-not-found-CG17701-1.png',
        genreIds: moviedb.genreIds.map((e) => e.toString()).toList(),
        id: moviedb.id,
        originalLanguage: moviedb.originalLanguage,
        originalTitle: moviedb.originalTitle,
        overview: moviedb.overview,
        popularity: moviedb.popularity,
        posterPath: moviedb.posterPath.isNotEmpty
            ? 'https://image.tmdb.org/t/p/w500/${moviedb.posterPath}'
            : '',
        releaseDate: moviedb.releaseDate,
        title: moviedb.title,
        video: moviedb.video,
        voteAverage: moviedb.voteAverage,
        voteCount: moviedb.voteCount,
      );
}
