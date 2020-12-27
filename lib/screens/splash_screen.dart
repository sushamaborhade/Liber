import 'package:flutter/material.dart';
import 'dart:async';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> with SingleTickerProviderStateMixin {

  AnimationController controller;
  Animation animation;
  bool newuser;
  SharedPreferences localStorage;
  
  // ignore: non_constant_identifier_names
  void check_if_already_login() async{
    localStorage = await SharedPreferences.getInstance();
    newuser = (localStorage.getBool('login') ?? true);
    if(newuser == false){
      Navigator.pushNamed(context, '/mainscreen');
    }
    else{
      Navigator.pushNamed(context, '/reg');
    }
  }

  @override
  void initState(){
    super.initState();
    Timer(Duration(seconds: 7), finished);

    controller=AnimationController(
      duration: Duration(seconds: 2),
      vsync: this,
    );

    animation=ColorTween(begin: Colors.white,end: Colors.black).animate(controller);

    controller.forward();

    controller.addListener(() {
      setState(() {
        print(controller.value);
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  void finished(){
    check_if_already_login();

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: animation.value,
        body: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration:BoxDecoration(
                    borderRadius: BorderRadius.circular(90),
                    boxShadow: [BoxShadow(color: Colors.red,blurRadius: 40.0)],
                  ),
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/images/book_reading.jpg'),
                    radius: 80,
                    foregroundColor: Colors.cyan,
                  ),
                ),

                SizedBox(height: 80,),

                TypewriterAnimatedTextKit(
                    text: ['LIBER'],
                    textStyle: TextStyle(
                      fontSize: 80,
                      fontFamily: 'Comic',
                      letterSpacing: 5,
                      color: Color(0xFF4AF626),
                    ),
                ),

                SizedBox(height: 5,),

                Text(
                  'An online platform for reading books.',
                  style: TextStyle(
                    fontFamily: 'Langar',
                    fontSize: 20,
                    color: Color(0xFFFF00FF),
                  ),
                ),
              ],
            ),
          ),
        ),
    );
  }
}
