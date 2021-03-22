import 'package:flutter/material.dart';

import '../dummy_data.dart';
import '../widgets/category_item.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: const EdgeInsets.all(20),
      children: DUMMY_CATEGORIES
          .map((catData) =>
              CategoryItem(catData.id, catData.title, catData.color, catData.bgCategory))
          .toList(),
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200, //max size d'un sur X
        childAspectRatio: 1.5, // ratio x(200) * 1.5 = y(300)
        crossAxisSpacing: 20, // le gap pour cross
        mainAxisSpacing: 20, // le gap pour main
      ),
    );
  }
}
