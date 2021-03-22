import 'package:flutter/material.dart';

import '../screens/category_meals_screen.dart';

class CategoryItem extends StatelessWidget {
  final String id;
  final String title;
  final Color color;
  final String bgCategory;

  CategoryItem(this.id, this.title, this.color, this.bgCategory);

  void selectCategory(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(CategoryMealsScreen.routeName,
        arguments: {'id': id, 'title': title});
  }

  @override
  Widget build(BuildContext context) {
    print(bgCategory);
    return InkWell(
      onTap: () => selectCategory(context),
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        padding: const EdgeInsets.all(15),
        // const donc pas recréer a chaque fois ! optimisation

        // child: Text(
        //   title,
        //   style: Theme.of(context).textTheme.headline6,
        // ),
        child: Center(

          child: Container(
            // width: 300,
            color: Colors.black54,
            padding: const EdgeInsets.all(10),
            child: Text(
              title,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: Colors.white,
              ),
              softWrap: true,
              overflow: TextOverflow.fade,
            ),
          ),
        ),

        decoration: BoxDecoration(

          border: Border.all(width: 2.0, color: Colors.black12
          ),
          
          image: DecorationImage(
            image: AssetImage("assets/images/$bgCategory"),
            fit: BoxFit.cover,
          ),
          gradient: LinearGradient(
            colors: [
              color.withOpacity(0.7),
              color,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}
