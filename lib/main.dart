import 'package:flutter/material.dart';
import 'package:movie_tv_app/Movies/core/services/services_locator.dart';
void main()
{
  ServierLocator().init();
  runApp(const TVMovies());
}
class  TVMovies extends StatelessWidget {
  const TVMovies ({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: Scaffold(),);
  }
}

