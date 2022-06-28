// ignore_for_file: prefer_const_constructors, prefer_final_fields, unused_field

import 'package:flutter/material.dart';
import 'package:meal_app/widget/main_drawer.dart';

class FilterScreen extends StatefulWidget {
  static const routeName = '/filters';
  @override
  State<StatefulWidget> createState() {
    return FilterScreenstate();
  }
}

class FilterScreenstate extends State<FilterScreen> {
  bool _glutenfree = false;
  bool _lactosefree = false;
  bool _vegan = false;
  bool _vegetorian = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(20),
            child: Text(
              "Adjust Your Meal Selection .",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                fontFamily: 'RobotoCondensed',
              ),
            ),
          ),
          Expanded(
              child: ListView(
            children: [
              SwitchListTile(
                  title: Text(
                    'Gluten Free',
                    style: TextStyle(
                      fontSize: 22,
                      fontFamily: 'RobotoCondensed',
                    ),
                  ),
                  subtitle: Text("Only include Gluten Free meals "),
                  value: _glutenfree,
                  onChanged: (newvalue) {
                    setState(() {
                      _glutenfree = newvalue;
                    });
                  }),
              SwitchListTile(
                  title: Text(
                    'lactose Free',
                    style: TextStyle(
                      fontSize: 22,
                      fontFamily: 'RobotoCondensed',
                    ),
                  ),
                  subtitle: Text("Only include lactose Free meals "),
                  value: _lactosefree,
                  onChanged: (newvalue) {
                    setState(() {
                      _lactosefree = newvalue;
                    });
                  }),
              SwitchListTile(
                  title: Text(
                    'Vegan ',
                    style: TextStyle(
                      fontSize: 22,
                      fontFamily: 'RobotoCondensed',
                    ),
                  ),
                  subtitle: Text("Only include Vegan meals "),
                  value: _vegan,
                  onChanged: (newvalue) {
                    setState(() {
                      _vegan = newvalue;
                    });
                  }),
              SwitchListTile(
                  title: Text(
                    'Vegetorian ',
                    style: TextStyle(
                      fontSize: 22,
                      fontFamily: 'RobotoCondensed',
                    ),
                  ),
                  subtitle: Text("Only include Vegetorian meals "),
                  value: _vegetorian,
                  onChanged: (newvalue) {
                    setState(() {
                      _vegetorian = newvalue;
                    });
                  }),
            ],
          ))
        ],
      ),
      drawer: MainDrawer(),
    );
  }
}
