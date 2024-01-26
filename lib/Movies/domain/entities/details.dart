import 'package:equatable/equatable.dart';
import 'package:movie_tv_app/Movies/domain/entities/genres.dart';
import 'package:movie_tv_app/Movies/domain/entities/production_companies.dart';

class Details extends Equatable {
  final String ?backdropPath;
  final String overview;
  final int id;
  final String releaseDate;
  final String title;
  final List<Genres>genres;
  final List<ProductionCompanies>productioncompanies;

  const Details({
    this.backdropPath,
    required this.overview,
    required this.id,
    required this.releaseDate,
    required this.title,
    required this.genres,
    required this.productioncompanies
  });

  @override
  List<Object?> get props =>
      [
        backdropPath,
        overview,
        id,
        releaseDate,
        title,
        genres,
        productioncompanies,
      ];
}