import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app/DataCalsses/CategoryCardData.dart';

class CategoryCard extends StatelessWidget {
  CategoryCard({required this.categorycardData});

  CategorycardData categorycardData;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10,left: 10),
      height: 130,
      width: 210,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        image: DecorationImage(
          image: AssetImage(categorycardData.ImagePath),
          fit: BoxFit.fill,
        ),
      ),
      child: Center(
        child: Text(
          categorycardData.CategoryName,
          style: const TextStyle(
              color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
