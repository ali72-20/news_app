import 'package:flutter/material.dart';
import 'package:news_app/DataCalsses/CategoryCardData.dart';
import 'package:news_app/Views/categoryView.dart';

class CategoryCard extends StatelessWidget {
  CategoryCard({required this.categorycardData});

  CategorycardData categorycardData;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) {
              return categoryView(categoryName: categorycardData.CategoryName);
            },
          ),
        );
      },
      child: Container(
        margin: const EdgeInsets.only(right: 16),
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
      ),
    );
  }
}
