import 'package:flutter/material.dart';
import 'package:online_book_app/screens/main%20screens/explore.dart';
import 'package:online_book_app/screens/main%20screens/home.dart';
import 'package:online_book_app/screens/main%20screens/settings.dart';
class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  PageController pageController;
  int page=0;
  @override
  void initState() {
    super.initState();
    pageController = PageController(initialPage: 0);
  }

  @override
  void dispose() {
    super.dispose();
    pageController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: _bottomNavBarWithItem(),
       body:_onTabScreens()
    );
  }
  Widget _bottomNavBarWithItem()
  {
    return BottomNavigationBar(
      elevation: 20,
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home),title: Text("Home")),
        BottomNavigationBarItem(icon: Icon(Icons.explore),title: Text("Explore")),
        BottomNavigationBarItem(icon: Icon(Icons.settings),title: Text("Settings"))
      ],
      currentIndex:page ,
      onTap: onTabTapped,
    );
  }
  Widget _onTabScreens()
  {
  return PageView(
  controller: pageController,
  onPageChanged: onPageChanged,
  children: [
  HomePage(),
  ExplorePage(),
  SettingsPage()
  ],
  );
}
  void onTabTapped(int page){
    pageController.jumpToPage(page);
  }

  void onPageChanged(int page) {
    setState(() {
      this.page=page;
    });
  }
}
