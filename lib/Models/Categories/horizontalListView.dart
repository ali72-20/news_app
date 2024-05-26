import 'package:flutter/cupertino.dart';
import 'package:news_app/DataCalsses/CategoryCardData.dart';
import 'package:news_app/Models/Categories/Category_card.dart';

class horizontalListview extends StatelessWidget {
  horizontalListview({super.key});

  List<CategorycardData> CategoryList = [
    CategorycardData(CategoryName: 'General', ImagePath: 'assets/general.avif'),
    CategorycardData(CategoryName: 'Sports', ImagePath: 'assets/sports.avif'),
    CategorycardData(CategoryName: 'Business', ImagePath: 'assets/business.avif'),
    CategorycardData(
        CategoryName: 'Entertainment', ImagePath: 'assets/entertaiment.avif'),
    CategorycardData(CategoryName: 'Health', ImagePath: 'assets/health.avif'),
    CategorycardData(CategoryName: 'Science', ImagePath: 'assets/science.avif'),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 130,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.only(bottom: 16, top: 8),
        scrollDirection: Axis.horizontal,
        itemCount: CategoryList.length,
        itemBuilder: (context, index) {
          return CategoryCard(categorycardData: CategoryList[index]);
        },
      ),
    );
  }
}
