import 'package:flutter/cupertino.dart';

import 'Category_card.dart';

class horizontalListview extends StatelessWidget {
  horizontalListview({super.key});

  List<CategoryCard> CategoryList = [
    CategoryCard(Category: 'General', ImagePath: 'assets/general.avif'),
    CategoryCard(Category: 'Sports', ImagePath: 'assets/sports.avif'),
    CategoryCard(Category: 'Business', ImagePath: 'assets/business.avif'),
    CategoryCard(
        Category: 'Entertainment', ImagePath: 'assets/entertaiment.avif'),
    CategoryCard(Category: 'Health', ImagePath: 'assets/health.avif'),
    CategoryCard(Category: 'Science', ImagePath: 'assets/science.avif'),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 130,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,

        itemCount: CategoryList.length,
        itemBuilder: (context, num) {
          return CategoryList[num];
        },
      ),
    );
  }
}
