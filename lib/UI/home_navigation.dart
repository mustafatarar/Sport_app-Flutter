import 'package:flutter/material.dart';
import 'package:sportapp/UI/home_page/home_page.dart';
import 'package:sportapp/UI/values/values.dart';
import 'package:flutter/cupertino.dart';

/*class HomeNavigation extends StatefulWidget {
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
}*/

class HomeNavigation extends StatelessWidget {
  @override
  final screens = [
    HomePage(),
    HomePage(),
    HomePage(),
    HomePage(),
  ];
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
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
        tabBuilder: (context, index) {
          switch (index) {
            case 0:
              return CupertinoTabView(
                builder: (context) {
                  return CupertinoPageScaffold(
                    child: screens[0],
                  );
                },
              );
            case 1:
              return CupertinoTabView(
                builder: (context) {
                  return CupertinoPageScaffold(
                    child: screens[1],
                  );
                },
              );
            case 2:
              return CupertinoTabView(
                builder: (context) {
                  return CupertinoPageScaffold(
                    child: screens[2],
                  );
                },
              );
            case 3:
              return CupertinoTabView(
                builder: (context) {
                  return CupertinoPageScaffold(
                    child: screens[3],
                  );
                },
              );
            default:
              return CupertinoTabView(
                builder: (context) {
                  return CupertinoPageScaffold(
                    child: screens[0],
                  );
                },
              );
          }
        });
  }
}
