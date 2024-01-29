part of 'detailsandrecommendations_bloc.dart';

class DetailsandrecommendationsState extends Equatable {
  final Details? detailsmovies;

  final RequestState detailsState;

  final String errormessagedetails;

  final List<Recommendations> recommendationsmovies;

  final RequestState recommendationsState;

  final String errormessagerecommendations;

  const DetailsandrecommendationsState({
      this.detailsmovies,
      this.detailsState=RequestState.Loading,
      this.errormessagedetails='',
      this.recommendationsmovies=const[],
      this.recommendationsState=RequestState.Loading,
      this.errormessagerecommendations=''
  });
  @override
  List<Object?> get props =>
      [
        detailsmovies,
        detailsState,
        errormessagedetails,
        recommendationsmovies,
        recommendationsState,
        errormessagerecommendations,
      ];

  DetailsandrecommendationsState copyWith({
     Details? detailsmovies,

   RequestState ?detailsState,

   String? errormessagedetails,

   List<Recommendations>? recommendationsmovies,

   RequestState ?recommendationsState,

   String ?errormessagerecommendations
  }){
    return DetailsandrecommendationsState(
        detailsmovies:detailsmovies??this.detailsmovies,
        detailsState:detailsState??this.detailsState,
        errormessagedetails:errormessagedetails??this.errormessagedetails,
        recommendationsmovies:recommendationsmovies??this.recommendationsmovies,
        recommendationsState:recommendationsState??this.recommendationsState,
        errormessagerecommendations:errormessagerecommendations??this.errormessagerecommendations


    );
}


}

