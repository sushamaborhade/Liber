import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
	  child: Text(
	  'Home Page',
	  style: TextStyle(
	  fontSize : 22.0,
	  ),
	  ),
	  ),
	);
  }
}
