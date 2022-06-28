// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:meal_app/screens/categoryscreen.dart';
import 'package:meal_app/screens/filter_screen.dart';
import 'package:meal_app/screens/mealdetails.dart';
import 'package:meal_app/screens/taps_screen.dart';

import 'package:meal_app/widget/category_meals_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.pink,
          accentColor: Colors.amber,
          canvasColor: Color.fromRGBO(255, 254, 229, 1),
        ),
        // home: categoryScreen(),
        routes: {
          '/': (context) => TapsScreen(),
          CategoryMealsScreen.routeName: (context) => CategoryMealsScreen(),
          mealdetailsscreen.routeName: (context) => mealdetailsscreen(),
          FilterScreen.routeName: (context) => FilterScreen(),
        });
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Meal_App'),
      ),
    );
  }
}
