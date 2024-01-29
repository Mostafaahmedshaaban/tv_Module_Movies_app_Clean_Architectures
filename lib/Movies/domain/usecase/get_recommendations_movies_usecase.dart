import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:movie_tv_app/Movies/core/failure/failure.dart';
import 'package:movie_tv_app/Movies/core/usecase/base_usecase.dart';
import 'package:movie_tv_app/Movies/domain/entities/recommendations.dart';
import 'package:movie_tv_app/Movies/domain/repositry/base_repositry_movies.dart';
class GetRecommendationsMoviesUsecase extends BaseUseCase<List<Recommendations>,RecommendationsParameters>{
 final BaseRepositryMovies baseRepositryMovies;
 GetRecommendationsMoviesUsecase(this.baseRepositryMovies);
  @override
  Future<Either<Failure, List<Recommendations>>> call(RecommendationsParameters parameters)async {
    return await  baseRepositryMovies.getrecommendationsmovies(parameters);
  }
}
class RecommendationsParameters extends Equatable {
  final int id;
  RecommendationsParameters(this.id);
  @override
  List<Object?> get props => [id];
}