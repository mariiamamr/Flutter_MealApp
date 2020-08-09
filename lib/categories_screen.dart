import 'package:flutter/material.dart';
import './dummy_data.dart';
import './category_item.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //Grid is scrollable by default
    return GridView(
        padding: const EdgeInsets.all(15),
        children: DUMMY_CATEGORIES
            .map(
              (data) => CategoryItem(data.id, data.title, data.color),
            )
            .toList(),
        gridDelegate:
            //max width for every grid item
            SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200,
                childAspectRatio: 1.5,
                crossAxisSpacing: 20,
                mainAxisSpacing:
                    20) //height/width i mean heigh kam bnsba lel height ),
        );
  }
}
