import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/LIstVIews/verticalListView.dart';

import '../../Services&APIs/NewsServieces.dart';
import '../Message.dart';

class GetNewsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: NewsServieces(Dio(), category: 'general').getNews(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return verticalListView(news: snapshot.data!);
        } else if (snapshot.hasError) {
          return Message(message: "Oops some this went wrong, try later");
        } else {
          return const SliverToBoxAdapter(
            child: Center(
              child: CircularProgressIndicator(),
            ),
          );
        }
      },
    );
  }
}
