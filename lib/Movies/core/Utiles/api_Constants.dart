class ApiConstant {
  static const  String baseurl='https://api.themoviedb.org/3';
  static const String apiKey='?api_key=716291692a14e3d4457c078067e71786';
  static  String nowplaying()=>'$baseurl/movie/now_playing$apiKey';
  static String popular()=>'$baseurl/movie/popular$apiKey';
  static String toprated()=>'$baseurl/movie/top_rated$apiKey';
  static String details( int movieId)=>'$baseurl/movie/$movieId$apiKey';
  static String recommendations(int movieId)=>'$baseurl/movie/$movieId/recommendations$apiKey';
}
//https://api.themoviedb.org/3/movie/572802?api_key=716291692a14e3d4457c078067e71786