import 'package:dartz/dartz.dart';
import 'package:movie_tv_app/Movies/core/failure/failure.dart';
import 'package:movie_tv_app/Movies/domain/entities/details.dart';
import 'package:movie_tv_app/Movies/domain/entities/movies.dart';
import 'package:movie_tv_app/Movies/domain/entities/recommendations.dart';
import 'package:movie_tv_app/Movies/domain/usecase/get_details_movies_usecase.dart';
import 'package:movie_tv_app/Movies/domain/usecase/get_recommendations_movies_usecase.dart';

abstract class BaseRepositryMovies
{
  Future<Either<Failure,List<Movies>>>getnowplayingmovies();

  Future<Either<Failure,List<Movies>>>getpopularmovies();

  Future<Either<Failure,List<Movies>>>gettopratedmovies();

  Future<Either<Failure,List<Recommendations>>>getrecommendationsmovies(RecommendationsParameters parameters);

  Future<Either<Failure,Details>>getdetailsmovies(DetailsParameters parameters);
}