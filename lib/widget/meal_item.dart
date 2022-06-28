// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:meal_app/models/meal.dart';
import 'package:meal_app/screens/mealdetails.dart';

class MealItem extends StatelessWidget {
  final String id;
  final String title;
  final String imageUrl;

  final int duration;
  final Complexity complexity;
  final Affordability affordability;

  const MealItem(
      {required this.id,
      required this.title,
      required this.imageUrl,
      required this.duration,
      required this.complexity,
      required this.affordability});

  String get complexityText {
    switch (complexity) {
      case Complexity.Simple:
        return 'simple';
        // ignore: dead_code
        break;
      case Complexity.Challenging:
        return 'Challenging';
        // ignore: dead_code
        break;
      case Complexity.Hard:
        return 'Hard';
        // ignore: dead_code
        break;
      default:
        return 'UnKnown';
        // ignore: dead_code
        break;
    }
  }

  String get affordabilityText {
    switch (affordability) {
      case Affordability.Affordable:
        return 'Affordable';
        // ignore: dead_code
        break;
      case Affordability.Pricey:
        return 'Pricey';
        // ignore: dead_code
        break;
      case Affordability.Luxurious:
        return 'Luxurious';
        // ignore: dead_code
        break;
      default:
        return 'UnKnown';
        // ignore: dead_code
        break;
    }
  }

  void selectMeal(BuildContext ctx) {
    Navigator.of(ctx)
        .pushNamed(
          mealdetailsscreen.routeName,
          arguments: id,
        )
        .then((value) => print(value));
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectMeal(context),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        elevation: 4,
        margin: EdgeInsets.all(10),
        child: Column(children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                ),
                child: Image.network(
                  imageUrl,
                  height: 200,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                bottom: 20,
                right: 10,
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                  width: 220,
                  color: Colors.black54,
                  child: Text(
                    title,
                    style: TextStyle(fontSize: 26, color: Colors.white),
                    softWrap: true,
                    overflow: TextOverflow.fade,
                  ),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  children: [
                    Icon(Icons.schedule),
                    SizedBox(
                      width: 6,
                    ),
                    Text('$duration min'),
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.work),
                    SizedBox(
                      width: 6,
                    ),
                    Text('$complexityText'),
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.attach_money),
                    SizedBox(
                      width: 6,
                    ),
                    Text('$affordabilityText'),
                  ],
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
