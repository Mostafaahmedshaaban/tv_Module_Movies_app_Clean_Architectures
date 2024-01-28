import 'package:movie_tv_app/Movies/domain/entities/genres.dart';
class GenresModel extends Genres
{
const  GenresModel({required super.id, required super.name});
factory GenresModel.fromjeson(jeson){
  return GenresModel(id: jeson['id'], name: jeson['name']);
}
}