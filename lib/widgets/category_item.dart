import 'package:flutter/material.dart';
import '../screens/meals_screen.dart';

class CategoryItem extends StatelessWidget {
  final String id;
  final String titles;
  final Color colors;
  CategoryItem(this.id, this.titles, this.colors);

  void selectMeal(BuildContext ctx) {
    // Navigator.of(ctx).push(MaterialPageRoute(builder: (_) {
    //   return Meals(titles); //which page to be built
    // }));
    Navigator.of(ctx).pushNamed(
      '/category-meal',
      arguments: {'id': id, 'title': titles},
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      //for tapping
      onTap: () => selectMeal(context), //bab3at context lel function
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        padding: EdgeInsets.all(25),
        child: Text(
          titles,
          style: Theme.of(context).textTheme.title,
        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            gradient: LinearGradient(
                colors: [colors.withOpacity(0.7), colors],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight)),
      ),
    );
  }
}
