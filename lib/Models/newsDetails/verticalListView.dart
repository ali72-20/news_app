import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app/Services/Apis.dart';

import '../../DataCalsses/newsDetails.dart';
import 'newsTile.dart';

class virticalListView extends StatefulWidget {
  const virticalListView({super.key});

  @override
  State<virticalListView> createState() => _virticalListViewState();
}

class _virticalListViewState extends State<virticalListView> {
  @override
  List<newsDetails> news = [];

  void initState() {
    super.initState();
    getNews();
  }

  bool isLoading = true;

  Future<void> getNews() async {
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
        : SliverList(
            delegate: SliverChildBuilderDelegate(
              childCount: news.length,
              (context, index) {
                return newsTile(news_details: news[index]);
              },
            ),
          );
  }
}
