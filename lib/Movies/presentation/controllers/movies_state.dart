part of 'movies_bloc.dart';

class MoviesState extends Equatable {
  final List<Movies>nowplayingmovies;
  final RequestState nowplayingState;
  final String errorMessagenowplaying;

  final List<Movies>popularmovies;
  final RequestState popularState;
  final String errorMessagepopular;

  final List<Movies>TopRatedmovies;
  final RequestState TopRatedState;
  final String errorMessageTopRated;

  const MoviesState({
    this.TopRatedmovies=const[],
    this.TopRatedState=RequestState.Loading,
    this.errorMessageTopRated='',

    this.popularState=RequestState.Loading,
    this.errorMessagepopular='',
    this.popularmovies=const[],

    this.nowplayingState = RequestState.Loading,
    this.nowplayingmovies = const[],
    this.errorMessagenowplaying = ''
  });

  MoviesState copyWith({
    List<Movies>?nowplayingmovies,
   RequestState ?nowplayingState,
  String ? errorMessagenowplaying,
    List<Movies>?popularmovies,
     RequestState? popularState,
     String? errorMessagepopular,
     List<Movies> ?TopRatedmovies,
     RequestState? TopRatedState,
     String ?errorMessageTopRated
  })
  {
    return MoviesState(
        nowplayingState:nowplayingState??this.nowplayingState,
      errorMessagenowplaying: errorMessagenowplaying?? this.errorMessagenowplaying,
      nowplayingmovies: nowplayingmovies?? this.nowplayingmovies,

        popularState: popularState??this.popularState,
      popularmovies: popularmovies??this.popularmovies,
      errorMessagepopular: errorMessagepopular??this.errorMessagepopular,

      TopRatedmovies: TopRatedmovies??this.TopRatedmovies,

      TopRatedState:TopRatedState??this.TopRatedState,
      errorMessageTopRated: errorMessageTopRated??this.errorMessageTopRated

    );
  }



  @override
  List<Object?> get props => [nowplayingmovies, nowplayingState, errorMessagenowplaying,];

}

