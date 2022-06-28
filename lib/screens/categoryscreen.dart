// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:meal_app/dummy_data.dart';

import 'package:meal_app/widget/category_item.dart';

class categoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView(
        padding: EdgeInsets.all(25),
        children: DUMMY_CATEGORIES
            .map(
              (catDate) =>
                  CategoryItem(catDate.id, catDate.title, catDate.color),
            )
            .toList(),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3 / 2,
          mainAxisSpacing: 20,
          crossAxisSpacing: 20,
        ),
      ),
    );
  }
}
