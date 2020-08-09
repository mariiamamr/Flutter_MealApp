import 'package:flutter/material.dart';
import './dummy_data.dart';

class Meals extends StatelessWidget {
  // final String categoryTitle;
  // Meals(this.categoryTitle);

  @override
  Widget build(BuildContext context) {
    final routesArg =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    final String categoryId = routesArg['id'];
    final String categoryTitle = routesArg['title'];
    final categoryMeal = DUMMY_MEALS.where((meal) {
      return meal.categories.contains(categoryId);
    }).toList();

    return Scaffold(
        appBar: AppBar(
          title: Text(categoryTitle),
          backgroundColor: Theme.of(context).primaryColor,
        ),
        body: ListView.builder(
          itemBuilder: (ctx, index) {
            return Text(categoryMeal[index].title);
          },
          itemCount: categoryMeal.length,
        ));
  }
}
