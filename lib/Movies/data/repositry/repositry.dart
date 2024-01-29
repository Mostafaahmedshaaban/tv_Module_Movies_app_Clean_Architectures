import 'package:dartz/dartz.dart';
import 'package:movie_tv_app/Movies/core/error/exceptions.dart';
import 'package:movie_tv_app/Movies/core/failure/failure.dart';
import 'package:movie_tv_app/Movies/data/datasource/base_remote_datasource.dart';
import 'package:movie_tv_app/Movies/domain/entities/details.dart';
import 'package:movie_tv_app/Movies/domain/entities/movies.dart';
import 'package:movie_tv_app/Movies/domain/entities/recommendations.dart';
import 'package:movie_tv_app/Movies/domain/repositry/base_repositry_movies.dart';
import 'package:movie_tv_app/Movies/domain/usecase/get_details_movies_usecase.dart';
import 'package:movie_tv_app/Movies/domain/usecase/get_recommendations_movies_usecase.dart';
class RepositryMovies extends BaseRepositryMovies{
  final BaseRemoteDatasource baseRemoteDatasource;
  RepositryMovies(this.baseRemoteDatasource);
  @override
  Future<Either<Failure, Details>> getdetailsmovies(DetailsParameters parameters) async{
  final result=await baseRemoteDatasource.getdetailsmovies(parameters);
  try{
    return  Right(result);
  }on ServierExceptions catch(failure){
    return Left(FailureServier(failure.errorMeassageModel.statusMessage));
  }

  }
  @override
  Future<Either<Failure, List<Movies>>> getnowplayingmovies() async {
    final result=await baseRemoteDatasource.getnowplayingmovies();
    try{
      return Right(result);
    }on ServierExceptions catch(failure)
    {
      return Left(FailureServier(failure.errorMeassageModel.statusMessage));
    }
  }
  @override
  Future<Either<Failure, List<Movies>>> getpopularmovies() async {
    final result=await baseRemoteDatasource.getpopularmovies();
    try{
      return Right(result);
    }on ServierExceptions catch(failure){
      return Left(FailureServier(failure.errorMeassageModel.statusMessage));
    }


  }
  @override
  Future<Either<Failure, List<Recommendations>>> getrecommendationsmovies(RecommendationsParameters parameters) async {
  final result=await baseRemoteDatasource.getrecommendationsmovies(parameters);
  try{
    return Right(result);

  }on ServierExceptions catch(failure){
    return Left(FailureServier(failure.errorMeassageModel.statusMessage));
  }
  }
  @override
  Future<Either<Failure, List<Movies>>> gettopratedmovies()async {
    final result=await baseRemoteDatasource.getpopularmovies();

    try
    {
      return Right(result);
    }
    on ServierExceptions catch(failure)
    {
      return Left(FailureServier(failure.errorMeassageModel.statusMessage));
    }


  }
}