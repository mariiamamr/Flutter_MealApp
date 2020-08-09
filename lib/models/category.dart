import 'package:flutter/material.dart';

class Category {
  final String id;
  final String title;
  final Color color;
  //once the object created can't be changed it's color
  const Category(
      {@required this.id, @required this.title, this.color = Colors.orange});
}
