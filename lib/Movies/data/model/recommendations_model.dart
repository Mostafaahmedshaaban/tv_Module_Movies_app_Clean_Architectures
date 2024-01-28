import 'package:movie_tv_app/Movies/domain/entities/recommendations.dart';
class RecommendationsModel extends Recommendations
{
  RecommendationsModel({required super.id,super.backdropPath});
  factory RecommendationsModel.fromjeson(jeson){
    return RecommendationsModel(
      id: jeson['id'],
        backdropPath:jeson['backdrop_path']??'/7lTnXOy0iNtBAdRP3TZvaKJ77F6.jpg'
    );
  }
}