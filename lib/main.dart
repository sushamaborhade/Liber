import 'package:flutter/material.dart';
import 'package:online_book_app/screens/confirmation_page.dart';
import 'package:online_book_app/screens/login.dart';
import 'package:online_book_app/screens/main%20screens/home.dart';
import 'package:online_book_app/screens/registration.dart';
import 'package:online_book_app/screens/signup.dart';
import 'package:online_book_app/screens/splash_screen.dart';

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
        '/home': (context) => HomePage(),
      },
      title: 'LIBER',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.deepPurple,
        accentColor: Colors.blue,
      ),
      home:Splash (),
    );
  }
}