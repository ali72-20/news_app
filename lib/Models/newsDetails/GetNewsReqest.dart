import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/Models/newsDetails/verticalListView.dart';
import 'package:news_app/Services/NewsServieces.dart';

import '../../DataCalsses/newsDetails.dart';

class GetNewsList extends StatefulWidget {
  const GetNewsList({super.key});

  @override
  State<GetNewsList> createState() => _getNewsListState();
}

class _getNewsListState extends State<GetNewsList> {
  List<newsDetails> news = [];

  @override
  void initState() {
    super.initState();
    getNewsList();
  }

  bool isLoading = true;

  Future<void> getNewsList() async {
    news = await NewsServieces(Dio(), category: 'general').getNews();
    isLoading = false;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return isLoading
        ? const SliverToBoxAdapter(
            child: Center(child: CircularProgressIndicator()),
          )
        : news.isNotEmpty
            ? verticalListView(news: news)
            : const SliverToBoxAdapter(
                child: Center(child: Text("Opps something wrond, try later!!")),
              );
  }
}
