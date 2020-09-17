import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:meal_app/screens/tabs_screen.dart';
import 'screens/meals_screen.dart';
import 'screens/meals_details_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DeliMeals',
      theme: ThemeData(
          primarySwatch: Colors.pink,
          accentColor: Colors.purple,
          fontFamily: 'Raleway',
          textTheme: ThemeData.light().textTheme.copyWith(
                body1: TextStyle(color: Color.fromRGBO(20, 51, 51, 1)),
              )),
      //home: MyHomePage(),
      routes: {
        //routes table
        '/': (ctx) => MyHomePage(),
        '/category-meal': (ctx) => Meals(),
        Recipe.routeName: (ctx) => Recipe(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Meals> _favMeals;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabsScreen(_favMeals),
    );
  }
}
