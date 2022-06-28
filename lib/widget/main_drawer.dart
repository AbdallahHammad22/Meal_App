// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:meal_app/screens/categoryscreen.dart';
import 'package:meal_app/screens/filter_screen.dart';
import 'package:meal_app/widget/category_meals_screen.dart';

class MainDrawer extends StatelessWidget {
  Widget buildListTile(String title, IconData icon, Function tap) {
    return ListTile(
      leading: Icon(
        icon,
        size: 26,
      ),
      title: Text(
        title,
        style: TextStyle(
          fontSize: 24,
          fontFamily: 'RobotoCondensed',
          fontWeight: FontWeight.bold,
        ),
      ),
      onTap: () {},
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(children: [
        Container(
          height: 120,
          width: double.infinity,
          padding: EdgeInsets.all(20),
          color: Colors.amber,
          child: Text(
            'Cooking Up!',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w900,
              color: Colors.pink,
            ),
          ),
          alignment: Alignment.centerLeft,
        ),
        SizedBox(
          height: 20,
        ),
        buildListTile(
          'Meal',
          Icons.restaurant,
          () {
            Navigator.of(context)
                .pushReplacementNamed(CategoryMealsScreen.routeName);
          },
        ),
        buildListTile('Filters', Icons.settings, () {
          Navigator.of(context)
              .pushReplacementNamed(CategoryMealsScreen.routeName);
        }),
      ]),
    );
  }
}
