import 'package:get_it/get_it.dart';
import 'package:movie_tv_app/Movies/data/datasource/base_remote_datasource.dart';
import 'package:movie_tv_app/Movies/data/repositry/repositry.dart';
import 'package:movie_tv_app/Movies/domain/repositry/base_repositry_movies.dart';
import 'package:movie_tv_app/Movies/domain/usecase/get_details_movies_usecase.dart';
import 'package:movie_tv_app/Movies/domain/usecase/get_nowplaying_movies_usecase.dart';
import 'package:movie_tv_app/Movies/domain/usecase/get_popular_movies_usecase.dart';
import 'package:movie_tv_app/Movies/domain/usecase/get_recommendations_movies_usecase.dart';
import 'package:movie_tv_app/Movies/domain/usecase/get_toprated_movies_usecase.dart';
import 'package:movie_tv_app/Movies/presentation/controllers/detailsandrecommendations_bloc.dart';
import 'package:movie_tv_app/Movies/presentation/controllers/movies_bloc.dart';
final  sl=GetIt.instance;
 class ServierLocator
 {
void init ()
{
sl.registerFactory(() =>  DetailsandrecommendationsBloc(sl(),sl(),));

 sl.registerFactory(() => MoviesBloc(sl(),sl(),sl()));
 // datasource
 sl.registerLazySingleton<BaseRemoteDatasource>(() =>RemoteDatasource() );
 // repositry
 sl.registerLazySingleton<BaseRepositryMovies>(() => RepositryMovies(sl()));
 //usecase now playing
 sl.registerLazySingleton(() => GetNowPlayingMoviesUsecase(sl()));
 //usecase popular
 sl.registerLazySingleton(() => GetPopularMoviesUsecas(sl()));
 //usecase top rated
 sl.registerLazySingleton(() => GetTopRatedMoviesusecase(sl()));
 //usecase details
 sl.registerLazySingleton(() => GetDetailsMoviesUsecase(sl()));
 //usecase recommendations
 sl.registerLazySingleton(() => GetRecommendationsMoviesUsecase(sl()));

 }
 }