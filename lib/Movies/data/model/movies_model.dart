import 'package:movie_tv_app/Movies/domain/entities/movies.dart';

class MoviesModel extends Movies{
  MoviesModel({
    required super.backdropPath,
    required super.genreIds,
    required super.id,
    required super.overview,
    required super.releaseDate,
    required super.title,
    required super.voteAverage
  });

  factory MoviesModel.fromjeson(jeson){
    return MoviesModel(
        backdropPath: jeson['backdrop_path'],
        genreIds: List<int>.from(jeson['genre_ids'].map((e) => e)),
        id: jeson['id'],
        overview: jeson['overview'],
        releaseDate: jeson['release_date'],
        title: jeson['title'],
        voteAverage: jeson['vote_average']
    );
  }
}