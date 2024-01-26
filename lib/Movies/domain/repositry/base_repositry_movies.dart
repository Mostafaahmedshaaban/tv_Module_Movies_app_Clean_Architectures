import 'package:movie_tv_app/Movies/domain/entities/details.dart';
import 'package:movie_tv_app/Movies/domain/entities/movies.dart';
import 'package:movie_tv_app/Movies/domain/entities/recommendations.dart';

abstract class BaseRepositryMovies
{
  Future<List<Movies>>getnowplayingmovies();

  Future<List<Movies>>getpopularmovies();

  Future<List<Movies>>gettopratedmovies();

  Future<List<Recommendations>>getrecommendationsmovies();

  Future<Details>getdetailsmovies();


}