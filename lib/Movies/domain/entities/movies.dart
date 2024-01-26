import 'package:equatable/equatable.dart';
class Movies extends Equatable {
  final String backdropPath;
  final List<int>genreIds;
  final int id;
  final String overview;
  final String releaseDate;
  final String title;
  final double voteAverage;
  const Movies({
    required this.backdropPath,
    required this.genreIds,
    required this.id,
    required this.overview,
    required this.releaseDate,
    required this.title,
    required this.voteAverage
  });
  @override
  List<Object?> get props =>
      [
        backdropPath,
        genreIds,
        id,
        overview,
        releaseDate,
        title,
        voteAverage,
      ];
}
