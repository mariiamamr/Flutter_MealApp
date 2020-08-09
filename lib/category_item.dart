import 'package:flutter/material.dart';
import './meals_item.dart';

class CategoryItem extends StatelessWidget {
  final String id;
  final String titles;
  final Color colors;
  CategoryItem(this.id, this.titles, this.colors);

  void selectMeal(BuildContext ctx) {
    // Navigator.of(ctx).push(MaterialPageRoute(builder: (_) {
    //   return Meals(titles);
    // }));
    Navigator.of(ctx).pushNamed(
      '/category-meal',
      arguments: {'id': id, 'title': titles},
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectMeal(context), //bab3at context lel function
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        padding: EdgeInsets.all(25),
        child: Text(titles),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: colors,
        ),
      ),
    );
  }
}
