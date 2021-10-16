import 'package:flutter/material.dart';
import 'package:sportapp/UI/News/News.dart';
import 'package:sportapp/UI/Watch/Watch.dart';
import 'package:sportapp/UI/favourites/Matches.dart';
import 'package:sportapp/UI/favourites/Teams.dart';
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
    FavouriteMatch(),
    Watch(),
    News(),
    
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
        selectedItemColor: MyColors.yellow900,
        unselectedItemColor: Colors.white70,
        onTap: (index) => setState(() => currentIndex = index),
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.sports_volleyball), label: 'Scores'),
          BottomNavigationBarItem(
              icon: Icon(Icons.star_border), label: 'Favourites'),
          BottomNavigationBarItem(
              icon: Icon(Icons.videocam),label: 'Watch'),
          BottomNavigationBarItem(
              icon: Icon(Icons.text_snippet_outlined), label: 'News'),
               BottomNavigationBarItem(
              icon: Icon(Icons.refresh_outlined), label: 'Refresh'),
        ],
      ),
    );
  }
}
