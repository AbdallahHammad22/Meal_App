// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:meal_app/dummy_data.dart';

class mealdetailsscreen extends StatelessWidget {
  static const routeName = 'meal_detail';

  Widget buildSectionTitle(BuildContext, String text) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Text(
        text,
        style: TextStyle(
          color: Color.fromRGBO(20, 50, 50, 1),
          fontWeight: FontWeight.bold,
          fontSize: 20,
          fontFamily: 'RobotoCondensed',
        ),
      ),
    );
  }

  Widget buildcontainer(Widget child) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(10)),
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      height: 200,
      width: 300,
      child: child,
    );
  }

  @override
  Widget build(BuildContext context) {
    final mealId = ModalRoute.of(context)?.settings.arguments as String;
    final selectedmeal = DUMMY_MEALS.firstWhere((meal) => meal.id == mealId);
    return Scaffold(
      appBar: AppBar(title: Text(selectedmeal.title)),
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
            height: 300,
            width: double.infinity,
            child: Image.network(
              selectedmeal.imageUrl,
              fit: BoxFit.cover,
            ),
          ),
          buildSectionTitle(BuildContext, ' Ingredients'),
          buildcontainer(
            ListView.builder(
              itemBuilder: (context, index) => Card(
                color: Colors.amber,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                  child: Text(selectedmeal.ingredients[index]),
                ),
              ),
              itemCount: selectedmeal.ingredients.length,
            ),
          ),
          buildSectionTitle(BuildContext, 'Steps'),
          buildcontainer(
            ListView.builder(
              itemBuilder: (context, index) => Column(
                children: [
                  ListTile(
                    title: Text(selectedmeal.steps[index]),
                    leading: CircleAvatar(
                      child: Text('#${index + 1}'),
                    ),
                  ),
                  Divider()
                ],
              ),
              itemCount: selectedmeal.steps.length,
            ),
          )
        ]),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pop(mealId);
        },
        child: Icon(Icons.delete),
      ),
    );
  }
}
