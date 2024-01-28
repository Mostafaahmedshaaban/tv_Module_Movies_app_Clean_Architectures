import 'package:movie_tv_app/Movies/domain/entities/production_companies.dart';
class ProductioncompaniesModel extends ProductionCompanies{
  ProductioncompaniesModel({required super.name,super.LogoPath});
factory ProductioncompaniesModel.fromjeson(jeson){
  return ProductioncompaniesModel(name:jeson['name'],
      LogoPath: jeson['logo_path']??'/ygMQtjsKX7BZkCQhQZY82lgnCUO.png');
}
}