import 'package:flutter/material.dart';
import 'package:sportapp/UI/home_page/home_page.dart';
import 'package:sportapp/UI/values/values.dart';
import 'package:flutter/cupertino.dart';

final screens = [
  HomePage(),
  HomePage(),
  HomePage(),
  HomePage(),
];

class TabNavigator extends StatelessWidget {
  TabNavigator({this.navigatorKey, this.tabItem});
  final GlobalKey<NavigatorState> navigatorKey;
  final String tabItem;

  @override
  Widget build(BuildContext context) {
    Widget child;
    if (tabItem == "home")
      child = screens[0];
    else if (tabItem == "favourites")
      child = screens[1];
    else if (tabItem == "watch")
      child = screens[2];
    else if (tabItem == "news") child = screens[3];

    return Navigator(
      key: navigatorKey,
      onGenerateRoute: (routeSettings) {
        return MaterialPageRoute(builder: (context) => child);
      },
    );
  }
}

class HomeNavigation extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => HomeNavigationState();
}

class HomeNavigationState extends State<HomeNavigation> {
  String _currentPage = "home";
  List<String> pageKeys = ["home", "favourites", "watch", "news"];
  Map<String, GlobalKey<NavigatorState>> _navigatorKeys = {
    "home": GlobalKey<NavigatorState>(),
    "favourites": GlobalKey<NavigatorState>(),
    "watch": GlobalKey<NavigatorState>(),
    "news": GlobalKey<NavigatorState>(),
  };
  int _selectedIndex = 0;

  void _selectTab(String tabItem, int index) {
    if (tabItem == _currentPage) {
      _navigatorKeys[tabItem].currentState.popUntil((route) => route.isFirst);
    } else {
      setState(() {
        _currentPage = pageKeys[index];
        _selectedIndex = index;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        final isFirstRouteInCurrentTab =
            !await _navigatorKeys[_currentPage].currentState.maybePop();
        if (isFirstRouteInCurrentTab) {
          if (_currentPage != "home") {
            _selectTab("home", 0);

            return false;
          }
        }
        // let system handle back button if we're on the first route
        return isFirstRouteInCurrentTab;
      },
      child: Scaffold(
        body: Stack(children: <Widget>[
          _buildOffstageNavigator("home"),
          _buildOffstageNavigator("favourites"),
          _buildOffstageNavigator("watch"),
          _buildOffstageNavigator("news"),
        ]),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.black54,
          selectedItemColor: Colors.white,
          onTap: (int index) {
            _selectTab(pageKeys[index], index);
          },
          currentIndex: _selectedIndex,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.star_border), label: 'Favourites'),
            BottomNavigationBarItem(
                icon: Icon(Icons.play_circle_fill), label: 'Watch'),
            BottomNavigationBarItem(
                icon: Icon(Icons.text_snippet_rounded), label: 'News'),
          ],
          type: BottomNavigationBarType.fixed,
        ),
      ),
    );
  }

  Widget _buildOffstageNavigator(String tabItem) {
    return Offstage(
      offstage: _currentPage != tabItem,
      child: TabNavigator(
        navigatorKey: _navigatorKeys[tabItem],
        tabItem: tabItem,
      ),
    );
  }
}

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

/*
class HomeNavigation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
          backgroundColor: Colors.black54,
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
*/
/*
enum TabItem { home, favourites, watch, news }

Map<TabItem, String> tabName = {
  TabItem.home: 'Home',
  TabItem.favourites: 'Favourites',
  TabItem.watch: 'Watch',
  TabItem.news: 'News',
};

Map<TabItem, MaterialColor> activeTabColor = {
  TabItem.home: Colors.white,
  TabItem.favourites: Colors.white,
  TabItem.watch: Colors.white,
  TabItem.news: Colors.white,
};
Map<TabItem, IconData> tabIcons = {
  TabItem.home: Icons.home,
  TabItem.favourites: Icons.star_border,
  TabItem.watch: Icons.play_circle_fill,
  TabItem.news: Icons.text_snippet_rounded,
};

class BottomNavigation extends StatelessWidget {
  BottomNavigation({this.currentTab, this.onSelectTab});
  final TabItem currentTab;
  final ValueChanged<TabItem> onSelectTab;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      items: [
        _buildItem(tabItem: TabItem.home),
        _buildItem(tabItem: TabItem.favourites),
        _buildItem(tabItem: TabItem.watch),
        _buildItem(tabItem: TabItem.news),
      ],
      onTap: (index) => onSelectTab(
        TabItem.values[index],
      ),
    );
  }

  BottomNavigationBarItem _buildItem({TabItem tabItem}) {
    String text = tabName[tabItem];
    IconData icon = Icons.layers;
    return BottomNavigationBarItem(
      icon: Icon(
        tabItem == TabItem.home
            ? tabIcons[0]
            : tabItem == TabItem.favourites
                ? tabIcons[1]
                : tabItem == TabItem.watch
                    ? tabIcons[2]
                    : tabItem == TabItem.news
                        ? tabIcons[3]
                        : tabIcons[0],
        color: _colorTabMatching(item: tabItem),
      ),
      title: Text(
        text,
        style: TextStyle(
          color: _colorTabMatching(item: tabItem),
        ),
      ),
    );
  }

  Color _colorTabMatching({TabItem item}) {
    return currentTab == item ? activeTabColor[item] : Colors.grey;
  }
}


class TabNavigatorRoutes {
  static const String root = '/';
  static const String detail = '/detail';
}*/
