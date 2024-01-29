import 'dart:async';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_tv_app/Movies/core/Utiles/enums.dart';
import 'package:movie_tv_app/Movies/core/usecase/base_usecase.dart';
import 'package:movie_tv_app/Movies/domain/entities/movies.dart';
import 'package:movie_tv_app/Movies/domain/usecase/get_nowplaying_movies_usecase.dart';
import 'package:movie_tv_app/Movies/domain/usecase/get_popular_movies_usecase.dart';
import 'package:movie_tv_app/Movies/domain/usecase/get_toprated_movies_usecase.dart';
part 'movies_event.dart';
part 'movies_state.dart';
class MoviesBloc extends Bloc<MoviesEvent, MoviesState> {
final GetNowPlayingMoviesUsecase getNowPlayingMoviesUsecase;
final GetPopularMoviesUsecas getPopularMoviesUsecas;
final GetTopRatedMoviesusecase getTopRatedMoviesusecase;

  MoviesBloc(this.getNowPlayingMoviesUsecase,this.getPopularMoviesUsecas,this.getTopRatedMoviesusecase) : super(MoviesState())
  {
on<GetNowPlayingEvent>(getnowplayingMethod);
on<GetPopularEvent>(getpopularMethod);
on<GetTopRatedEvent>(getTopRatedMethod);

  }
FutureOr<void >getnowplayingMethod( GetNowPlayingEvent event,Emitter<MoviesState>emit)async {
    final result=await getNowPlayingMoviesUsecase(NoParameters() );
    result.fold((l) => emit(state.copyWith(
        nowplayingState:RequestState.Error ,
        errorMessagenowplaying: l.message
    )), (r) => emit(state.copyWith(nowplayingmovies: r,nowplayingState: RequestState.Loaded)));
  }

FutureOr<void>getpopularMethod(GetPopularEvent event,Emitter<MoviesState>emit)async {
    final result=await getPopularMoviesUsecas( const NoParameters());
    result.fold((l) => emit(state.copyWith
      (
      popularState: RequestState.Error,
      errorMessagepopular: l.message
    )), (r) => emit(state.copyWith(popularmovies: r,popularState: RequestState.Loaded)));
  }


  FutureOr<void>getTopRatedMethod(GetTopRatedEvent event, Emitter<MoviesState>emit)async{
    final result=await getTopRatedMoviesusecase(NoParameters());

    result.fold((l) => emit(state.copyWith(
      TopRatedState: RequestState.Error,
      errorMessageTopRated: l.message
    )), (r) =>
    emit(state.copyWith(TopRatedState: RequestState.Loaded,TopRatedmovies: r))
    );

  }





}
