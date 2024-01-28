import 'package:movie_tv_app/Movies/data/model/genres_model.dart';
import 'package:movie_tv_app/Movies/data/model/production_companies_model.dart';
import 'package:movie_tv_app/Movies/domain/entities/details.dart';
class DetailsModel extends Details{
  DetailsModel({super.backdropPath,
    required super.overview,
    required super.id,
    required super.releaseDate,
    required super.title,
    required super.genres,
    required super.productioncompanies
  });
  factory DetailsModel.fromjeson(jeson){
    return DetailsModel(
        backdropPath:jeson['backdrop_path'],
        overview: jeson['overview'],
        id:jeson['id'],
        releaseDate: jeson['release_date'],
        title: jeson['title'],
        genres: List<GenresModel>.from(jeson['genres'].map((e)=>GenresModel.fromjeson(e)),),
    productioncompanies: List<ProductioncompaniesModel>.from(jeson['production_companies'].map((e)=>ProductioncompaniesModel.fromjeson(e)))
    );
        
  }



}