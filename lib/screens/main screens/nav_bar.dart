import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'home_page.dart';
import 'search_page.dart';
import 'category_page.dart';
import 'profile_page.dart';

class NavBar extends StatefulWidget {
  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {

  int pageIndex=0;

  final HomePage homepage= HomePage();
  final SearchPage searchpage= new SearchPage();
  final Categories category= new Categories();
  final ProfilePage profilepage= new ProfilePage();

  Widget showPage= new HomePage();

  Widget pageChooser(int page){
    switch (page) {
      case 0: 
        return homepage; 
        break;
      case 1: 
        return searchpage; 
        break;
      case 2:
       return category;
        break;
      case 3:
       return profilepage;
        break;
      default: 
        return Container(
          color: Colors.white,
          child: Center(
            child: Text(
              'No Page found...',
              style: TextStyle(
                fontSize: 35.0
              ),
              ),
          ),
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        index: 0,
        color: Theme.of(context).primaryColor,
        backgroundColor: Colors.transparent,
        buttonBackgroundColor: Theme.of(context).primaryColor,
        height: 50.0,
        items: <Widget>[
          Icon(Icons.home, size: 30, color: Colors.white,),
          Icon(Icons.search, size: 30, color: Colors.white,),
          Icon(Icons.category, size: 30, color: Colors.white,),
          Icon(Icons.person, size: 30, color: Colors.white,),
        ],
        onTap: (int tappedIndex) {
          setState(() {
            showPage= pageChooser(tappedIndex);
          });
        },
      ),
      body: showPage,
    );
  }
}