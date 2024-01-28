import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable{
  final String message;
 const  Failure(this.message);
  @override
  // TODO: implement props
  List<Object?> get props => [message];
}
class FailureServier extends Failure{
 const FailureServier(super.message);
}