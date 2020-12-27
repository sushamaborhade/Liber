import 'package:flutter/material.dart';

class About extends StatefulWidget {
  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(top:50.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                // Card(
                //   elevation: 20,
                //   child: Padding(
                //     padding: const EdgeInsets.all(8.0),
                //     child: Image.asset('assets/images/logo1.png'),
                //   ),
                //   ),
  //------------------------------------TITLE-------------------------------//
                SizedBox(height: 20.0,),
                Text(
                  'LIBER',
                  style:TextStyle(
                    fontSize: 30.0,
                    color: Theme.of(context).accentColor,
                    fontWeight: FontWeight.bold,
                  ),
                  ),

  //--------------------------------------Version------------------------------//
                SizedBox(height: 10.0,),
                Text(
                  'VERSION: 0.0.1',
                  style:TextStyle(
                    fontSize: 15.0,
                    color: Colors.white60
                  ),
                  ),

  //-----------------------------------Copyright----------------------------------//
                SizedBox(height: 10.0,),
                Text(
                  "\u00a9 2020, LIBER Repo's Contributors",
                  style:TextStyle(
                    fontSize: 15.0,
                    color: Colors.white60,
                    fontWeight: FontWeight.bold,
                  ),
                  ),
  //-------------------------------------- Short Description ----------------------------//
                SizedBox(height: 20.0,),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    "A simple Flutter Book app. Books are free to download and is the best place to start "
                    "reading them online. Books will be listed with a brief description and have an astonishing "
                    "view for books to be viewed by user.",
                    style:TextStyle(
                      fontSize: 17.0,
                      color: Colors.white70,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      
    );
  }
}