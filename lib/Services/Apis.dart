import 'package:dio/dio.dart';

class newsServieces{
  final Dio dio;
  newsServieces(this.dio);
  void getGeneralNews() async{
    final response = await dio.get('https://newsapi.org/v2/top-headlines?apiKey=98583a75142f49e5ac3d537b61989171&country=eg&category=general');
    print(response);
  }

  void getSportsNews() async{
  final response = await dio.get('https://newsapi.org/v2/top-headlines?apiKey=98583a75142f49e5ac3d537b61989171&country=eg&category=sports');
  print(response);
  }
  void getBusinessNews() async{
    final response = await dio.get('https://newsapi.org/v2/top-headlines?apiKey=98583a75142f49e5ac3d537b61989171&country=eg&category=business');
    print(response);
  }
  void getEntertainmentNews() async{
    final response = await dio.get('https://newsapi.org/v2/top-headlines?apiKey=98583a75142f49e5ac3d537b61989171&country=eg&category=entertainment');
    print(response);
  }
  void getHealthNews() async{
    final response = await dio.get('https://newsapi.org/v2/top-headlines?apiKey=98583a75142f49e5ac3d537b61989171&country=eg&category=health');
    print(response);
  }
  void getScienceNews() async{
    final response = await dio.get('https://newsapi.org/v2/top-headlines?apiKey=98583a75142f49e5ac3d537b61989171&country=eg&category=science');
    print(response);
  }

  void getTechNews() async{
    final response = await dio.get('https://newsapi.org/v2/top-headlines?apiKey=98583a75142f49e5ac3d537b61989171&country=eg&category=technology');
    print(response);
  }

}