import 'package:flutter/material.dart';
import 'meals_screen.dart';

class FavoriteScreen extends StatelessWidget {
  final List<Meals> favMeal;
  FavoriteScreen(this.favMeal);
  @override
  Widget build(BuildContext context) {
    //Grid is scrollable by default
    return Container(
      alignment: Alignment.center,
      child: Text(
        'No Favorites Yet!',
        style: TextStyle(
            fontWeight: FontWeight.bold, color: Theme.of(context).primaryColor),
      ),
    );
  }
}
