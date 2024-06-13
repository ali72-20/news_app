import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Models/newsDetails/GetNewsReqest.dart';

class categoryView extends StatefulWidget {
  categoryView({super.key, required this.categoryName});
  String categoryName;
  @override
  State<categoryView> createState() => _categoryViewState();
}

class _categoryViewState extends State<categoryView> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.categoryName,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: RefreshIndicator(
        onRefresh: () async{
          await Future.delayed(Duration(seconds: 2));
            setState(() {
              GetNewsList(name: widget.categoryName);
            });
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: CustomScrollView(
            physics: const BouncingScrollPhysics(),
            slivers: [GetNewsList(name: widget.categoryName)],
          ),
        ),
      ),
    );
  }
}
