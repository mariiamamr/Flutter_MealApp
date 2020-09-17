import 'package:flutter/material.dart';
import '../dummy_data.dart';

class Recipe extends StatelessWidget {
  static const routeName = '/recipe';
  @override
  Widget build(BuildContext context) {
    final mealId = ModalRoute.of(context).settings.arguments as String;
    final mealItem = DUMMY_MEALS.firstWhere((meal) => meal.id == mealId);
    //final List<String> mealRecipe = mealId['mealRecipe'];
    return Scaffold(
      appBar: AppBar(
        title: Text(mealItem.title),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Column(children: <Widget>[
        Container(
          padding: EdgeInsets.all(10),
          height: 50,
          width: double.infinity,
          child: Text('Ingredients:',
              style: TextStyle(
                  fontSize: 20,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).primaryColor)),
        ),
        Container(
          decoration: BoxDecoration(color: Colors.white),
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.all(10),
          height: 120,
          width: 300,
          child: ListView.builder(
            itemCount: mealItem.ingredients.length,
            itemBuilder: (ctx, index) =>
                Card(child: Text(mealItem.ingredients[index])),
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          height: 50,
          width: double.infinity,
          child: Text('Steps:',
              style: TextStyle(
                  fontSize: 20,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).primaryColor)),
        ),
        Container(
          decoration: BoxDecoration(color: Colors.white),
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.all(10),
          height: 200,
          width: 500,
          child: ListView.builder(
            itemCount: mealItem.ingredients.length,
            itemBuilder: (ctx, index) =>
                Card(child: Text(mealItem.ingredients[index])),
          ),
        ),
      ]),
    );
  }
}
