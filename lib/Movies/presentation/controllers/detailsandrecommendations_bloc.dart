import 'dart:async';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_tv_app/Movies/core/Utiles/enums.dart';
import 'package:movie_tv_app/Movies/domain/entities/details.dart';
import 'package:movie_tv_app/Movies/domain/entities/recommendations.dart';
import 'package:movie_tv_app/Movies/domain/usecase/get_details_movies_usecase.dart';
import 'package:movie_tv_app/Movies/domain/usecase/get_recommendations_movies_usecase.dart';
part 'detailsandrecommendations_event.dart';
part 'detailsandrecommendations_state.dart';
class DetailsandrecommendationsBloc extends Bloc<DetailsandrecommendationsEvent, DetailsandrecommendationsState> {
  GetDetailsMoviesUsecase getDetailsMoviesUsecase;
  GetRecommendationsMoviesUsecase getRecommendationsMoviesUsecase;
  DetailsandrecommendationsBloc(this.getDetailsMoviesUsecase,this.getRecommendationsMoviesUsecase) : super(DetailsandrecommendationsState())
  {
on<DetailsmoviesEvent>(getdetailsmethod);
on<RecommendationsEvent>(getrecommendationsmethod);
  }
FutureOr<void >getdetailsmethod(DetailsmoviesEvent event, Emitter<DetailsandrecommendationsState>emit)async{
    final result=await getDetailsMoviesUsecase(DetailsParameters(event.id));

    result.fold((l) => emit(state.copyWith
      (
      detailsState: RequestState.Error,
      errormessagedetails: l.message
    )), (r) => emit(state.copyWith(detailsmovies: r,detailsState: RequestState.Loaded)));
}
  FutureOr<void >getrecommendationsmethod(RecommendationsEvent event, Emitter<DetailsandrecommendationsState>emit)async{
    final result=await getRecommendationsMoviesUsecase(RecommendationsParameters(event.id));

    result.fold((l) => emit(state.copyWith
      (
        recommendationsState: RequestState.Error,
        errormessagerecommendations: l.message
    )), (r) => emit(state.copyWith(recommendationsmovies: r,recommendationsState: RequestState.Loaded)));
  }}
