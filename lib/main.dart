import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/Services/NewsServieces.dart';

import 'Views/HomeView.dart';

void main() {
  runApp(const NewsApp());
}


class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeView(),
    );
  }
}
