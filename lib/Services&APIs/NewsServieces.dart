import 'package:dio/dio.dart';
import 'package:news_app/DataCalsses/newsDetails.dart';

class NewsServieces {
  final Dio dio;
  String category;

  NewsServieces(this.dio, {required this.category});

  Future<List<newsDetails>> getNews() async {
    try {
      final response = await dio.get(
          'https://newsapi.org/v2/top-headlines?apiKey=98583a75142f49e5ac3d537b61989171&country=us&category=general');
      Map<String, dynamic> jasonData = response.data;
      List<dynamic> articles = jasonData["articles"];
      List<newsDetails> articleList = [];
      for (var art in articles) {
        articleList.add(new newsDetails(image: art["urlToImage"],
            title: art["title"],
            desceprtion: art["description"]));
      }
      return articleList;
    }
    catch (e){
      return [];
    }
  }
}