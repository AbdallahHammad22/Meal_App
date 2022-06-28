// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:meal_app/screens/categoryscreen.dart';
import 'package:meal_app/screens/filter_screen.dart';

import '../widget/main_drawer.dart';
import 'favorite_screen.dart';

class TapsScreen extends StatefulWidget {
  @override
  State<TapsScreen> createState() => _TapsScreenState();
}

class _TapsScreenState extends State<TapsScreen> {
  final List<Map<String, Object>> _pages = [
    {
      'page': categoryScreen(),
      'title': 'Categories',
    },
    {
      'page': FavoritesScreen(),
      'title': 'Your Favorites',
    },
    {
      'page': FilterScreen(),
      'title': 'Your Filters',
    }
  ];
  int _selectedpageindex = 0;
  void _selectpage(int value) {
    setState(() {
      _selectedpageindex = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_pages[_selectedpageindex]['title'] as String),
      ),
      body: _pages[_selectedpageindex]['page'] as Widget,
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectpage,
        backgroundColor: Color.fromRGBO(20, 50, 50, 1),
        selectedItemColor: Colors.amber,
        unselectedItemColor: Colors.white,
        currentIndex: _selectedpageindex,
        // ignore: prefer_const_literals_to_create_immutables
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            label: 'category',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star),
            label: 'Favorites',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Filters',
          ),
        ],
      ),
      drawer: MainDrawer(),
    );
  }
}
