import 'package:equatable/equatable.dart';
class ProductionCompanies extends Equatable {
  final String ? LogoPath;
  final String name;
  const ProductionCompanies({required this.name, this.LogoPath});
  @override
  List<Object?> get props => [LogoPath, name];
}