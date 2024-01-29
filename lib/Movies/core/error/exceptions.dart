import 'package:movie_tv_app/Movies/core/network/error_message.dart';

class ServierExceptions implements Exception
{
final  ErrorMeassageModel errorMeassageModel;
 const  ServierExceptions({required this.errorMeassageModel});
}