import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/Models/newsDetails/verticalListView.dart';
import 'package:news_app/Services/NewsServieces.dart';



class GetNewsList  extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: NewsServieces(Dio(), category: 'general').getNews(),
        builder: (context, snapshot) {
          return verticalListView(news: snapshot.data ?? []);
        });
  }
}
