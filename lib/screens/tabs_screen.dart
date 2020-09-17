import 'package:flutter/material.dart';
import 'package:meal_app/screens/categories_screen.dart';
import 'categories_screen.dart';
import 'favorite_screen.dart';
import 'meals_screen.dart';

class TabsScreen extends StatefulWidget {
  final List<Meals> favMeall;
  TabsScreen(this.favMeall);
  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
            appBar: AppBar(
              title: Text('Meals'),
              bottom: TabBar(tabs: <Widget>[
                Tab(
                  icon: Icon(Icons.category),
                  text: 'Categort',
                ),
                Tab(icon: Icon(Icons.star), text: 'Favorites')
              ]),
            ),
            body: TabBarView(children: <Widget>[
              CategoriesScreen(),
              FavoriteScreen(widget.favMeall),
            ])));
  }
}
