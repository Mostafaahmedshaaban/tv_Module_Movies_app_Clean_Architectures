import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:movie_tv_app/Movies/core/failure/failure.dart';
import 'package:movie_tv_app/Movies/core/usecase/base_usecase.dart';
import 'package:movie_tv_app/Movies/domain/entities/details.dart';
import 'package:movie_tv_app/Movies/domain/repositry/base_repositry_movies.dart';

class GetDetailsMoviesUsecase extends BaseUseCase<Details,DetailsParameters>  {
  final BaseRepositryMovies baseRepositryMovies;
  GetDetailsMoviesUsecase(this.baseRepositryMovies);

  @override
  Future<Either<Failure, Details>> call(DetailsParameters parameters) async{
    return await baseRepositryMovies.getdetailsmovies(parameters);
  }
}
class DetailsParameters extends Equatable {
  final int id;

  DetailsParameters(this.id);

  @override
  List<Object> get props => [id];
}