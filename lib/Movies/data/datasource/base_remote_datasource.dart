import 'package:dio/dio.dart';
import 'package:movie_tv_app/Movies/core/Utiles/api_Constants.dart';
import 'package:movie_tv_app/Movies/core/error/exceptions.dart';
import 'package:movie_tv_app/Movies/core/network/error_message.dart';
import 'package:movie_tv_app/Movies/data/model/details_model.dart';
import 'package:movie_tv_app/Movies/data/model/movies_model.dart';
import 'package:movie_tv_app/Movies/data/model/recommendations_model.dart';
import 'package:movie_tv_app/Movies/domain/usecase/get_details_movies_usecase.dart';
import 'package:movie_tv_app/Movies/domain/usecase/get_recommendations_movies_usecase.dart';
abstract class BaseRemoteDatasource
{
  Future<List<MoviesModel>>getnowplayingmovies();
  Future<List<MoviesModel>>getpopularmovies();
  Future<List<MoviesModel>>gettopratedmovies();
  Future<List<RecommendationsModel>>getrecommendationsmovies(RecommendationsParameters parameters);
  Future<DetailsModel>getdetailsmovies(DetailsParameters parameters);
}
class RemoteDatasource extends BaseRemoteDatasource
{
  @override
  Future<DetailsModel> getdetailsmovies(DetailsParameters parameters) async {
    var response=await Dio().get('${ApiConstant.details(parameters.id )}');
    if(response.statusCode==200)
    {
      return DetailsModel.fromjeson(response.data);
    }
    throw ServierExceptions(errorMeassageModel: ErrorMeassageModel.fromjeson(response.data));

  }
  @override
  Future<List<MoviesModel>> getnowplayingmovies() async {
    var response=await Dio().get('${ApiConstant.nowplaying()}');
    if(response.statusCode==200){
      return List<MoviesModel>.from((response.data['results'] as List).map((e) => MoviesModel.fromjeson(e)));
    }
else{
  throw ServierExceptions(errorMeassageModel: ErrorMeassageModel.fromjeson(response.data));
    }
  }
  @override
  Future<List<MoviesModel>> getpopularmovies()async  {
    var response=await Dio().get('${ApiConstant.popular()}');
    if(response.statusCode==200){
      return List<MoviesModel>.from((response.data['results'] as List).map((e)=>MoviesModel.fromjeson(e)));
    }throw ServierExceptions(errorMeassageModel: ErrorMeassageModel.fromjeson(response.data));
  }
  @override
  Future<List<RecommendationsModel>> getrecommendationsmovies(RecommendationsParameters parameters)async {
    var response=await Dio().get('${ApiConstant.recommendations(parameters.id)}');
    if(response.statusCode==200)
    {
      return List<RecommendationsModel>.from((response.data['results'] as List).map((e) => RecommendationsModel.fromjeson(e)));
    } throw ServierExceptions(errorMeassageModel: ErrorMeassageModel.fromjeson(response.data));
  }
  @override
  Future<List<MoviesModel>> gettopratedmovies() async {
    var response=await Dio().get('${ApiConstant.toprated()}');
    if(response.statusCode==200){
      return List<MoviesModel>.from((response.data['results']as List).map((e)=>MoviesModel.fromjeson(e)));
    }throw ServierExceptions(errorMeassageModel: ErrorMeassageModel.fromjeson(response.data));
  }
}