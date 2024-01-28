import 'package:dartz/dartz.dart';
import 'package:movie_tv_app/Movies/core/failure/failure.dart';
import 'package:movie_tv_app/Movies/core/usecase/base_usecase.dart';
import 'package:movie_tv_app/Movies/domain/entities/movies.dart';
import 'package:movie_tv_app/Movies/domain/repositry/base_repositry_movies.dart';
class GetPopularMoviesUsecas extends BaseUseCase<List<Movies>,NoParameters>{
  final BaseRepositryMovies baseRepositryMovies;
  GetPopularMoviesUsecas(this.baseRepositryMovies);
  @override
  Future<Either<Failure, List<Movies>>> call(NoParameters parameters) async
  {
    return await baseRepositryMovies.getpopularmovies();
  }
}