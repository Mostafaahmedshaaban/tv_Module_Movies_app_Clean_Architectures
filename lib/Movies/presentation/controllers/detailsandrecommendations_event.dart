part of 'detailsandrecommendations_bloc.dart';

abstract class DetailsandrecommendationsEvent extends Equatable {
  const DetailsandrecommendationsEvent();

}
class DetailsmoviesEvent extends DetailsandrecommendationsEvent{

  final int id;
  const  DetailsmoviesEvent(this.id);
  @override
  // TODO: implement props
  List<Object?> get props => [id];

}
class RecommendationsEvent extends DetailsandrecommendationsEvent{
  final int id;
  const  RecommendationsEvent(this.id);
  @override
  // TODO: implement props
  List<Object?> get props => [id];

}


