import 'package:flutter/material.dart';
import 'package:sportapp/UI/home_page/home_page.dart';
import 'package:sportapp/UI/values/values.dart';

class HomeNavigation extends StatefulWidget {
  const HomeNavigation();

  @override
  _HomeNavigationState createState() => _HomeNavigationState();
}

class _HomeNavigationState extends State<HomeNavigation> {
  int currentIndex = 0;
  final screens = [
    HomePage(),
    HomePage(),
    HomePage(),
    HomePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        children: screens,
        index: currentIndex,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        backgroundColor: MyColors.black,
        selectedItemColor: MyColors.white,
        unselectedItemColor: Colors.white70,
        onTap: (index) => setState(() => currentIndex = index),
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.star_border), label: 'Favourites'),
          BottomNavigationBarItem(
              icon: Icon(Icons.play_circle_fill), label: 'Watch'),
          BottomNavigationBarItem(
              icon: Icon(Icons.text_snippet_rounded), label: 'News'),
        ],
      ),
    );
  }
}
