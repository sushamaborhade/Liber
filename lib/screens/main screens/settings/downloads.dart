import 'package:flutter/material.dart';

class Downloads extends StatefulWidget {
  @override
  _DownloadsState createState() => _DownloadsState();
}

class _DownloadsState extends State<Downloads> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'No Downloads',
          style: TextStyle(
            color: Colors.grey,
            fontSize:20.0
          ),
          ),
      ),
    );
  }
}