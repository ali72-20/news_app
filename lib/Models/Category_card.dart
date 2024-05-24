import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  CategoryCard({required this.Category, required this.ImagePath});

  String Category;
  String ImagePath;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10,left: 10),
      height: 130,
      width: 210,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        image: DecorationImage(
          image: AssetImage(ImagePath),
          fit: BoxFit.fill,
        ),
      ),
      child: Center(
        child: Text(
          '$Category',
          style: const TextStyle(
              color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
