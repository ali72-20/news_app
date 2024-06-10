import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app/DataCalsses/newsDetails.dart';

import '../../LIstVIews/verticalListView.dart';
import '../../Services&APIs/NewsServieces.dart';
import '../Message.dart';

class GetNewsList extends StatefulWidget {
  const GetNewsList({super.key});

  @override
  State<GetNewsList> createState() => _GetNewsListState();
}

class _GetNewsListState extends State<GetNewsList> {
  var future;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    future = NewsServieces(Dio(), category: 'general').getNews();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<newsDetails>>(
      future: future,
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
