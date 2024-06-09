import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app/DataCalsses/newsDetails.dart';

import 'newsTile.dart';

class verticalListView extends StatelessWidget {

  verticalListView({super.key, required this.news});
  List<newsDetails> news;
  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: news.length,
            (context, index) {
          return newsTile(news_details: news[index]);
        },
      ),
    );
  }
}
