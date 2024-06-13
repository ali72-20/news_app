import 'dart:core';
import 'package:dio/dio.dart';
import 'package:news_app/DataCalsses/newsDetails.dart';

class NewsServieces {
  final Dio dio;

  NewsServieces(this.dio);

  Future<List<newsDetails>> getNews({required String categoryName}) async {
    try {
      final response = await dio.get(
          'https://newsapi.org/v2/top-headlines?apiKey=98583a75142f49e5ac3d537b61989171&country=us&category=$categoryName');
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