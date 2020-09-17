import 'package:flutter/material.dart';
import '../dummy_data.dart';
import '../widgets/meals_item.dart';

class Meals extends StatelessWidget {
  // final String categoryTitle;
  // Meals(this.categoryTitle);

  @override
  Widget build(BuildContext context) {
    //de bsbb el routing el hasal fl main thne make it pushNamed
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
            return MealItem(
                id: categoryMeal[index].id,
                title: categoryMeal[index].title,
                mealImage: categoryMeal[index].imageUrl,
                duration: categoryMeal[index].duration,
                complexity: categoryMeal[index].complexity,
                mealRecipe: categoryMeal[index].ingredients,
                afford: categoryMeal[index].affordability);
          },
          itemCount: categoryMeal.length,
        ));
  }
}
