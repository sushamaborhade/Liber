import 'package:flutter/material.dart';
import 'screens/splash_screen.dart';
import 'screens/registration.dart';
import 'screens/login.dart';
import 'screens/signup.dart';
import 'screens/confirmation_page.dart';

import 'screens/main screens/nav_bar.dart';
import 'screens/main screens/settings/about.dart';
import 'screens/main screens/settings/downloads.dart';
void main(){
  runApp(myApp());
}

// ignore: camel_case_types
class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/reg': (context) => RegPage(),
        '/signup': (context) => SignUp(),
        '/login': (context) => LogIn(),
        '/confirm': (context) => Confirm(),
        '/nav': (context) => NavBar(),
        '/download': (context) => Downloads(),
        '/about': (context) => About(),
      },
      title: 'LIBER',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.black,
        accentColor: Colors.white,
        brightness: Brightness.dark,
      ),
      home:Splash (),
    );
  }
}