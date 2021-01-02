import 'package:flutter/material.dart';
import 'package:online_book_app/screens/main screens/nav_bar.dart';

class Confirm extends StatefulWidget {
  @override
  _ConfirmState createState() => _ConfirmState();
}

class _ConfirmState extends State<Confirm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/checked.png', width: 200, height: 200),
            SizedBox(height: 30.0),
            Text(
              'Account Created',
              style: TextStyle(
                color: Theme.of(context).accentColor,
                fontWeight: FontWeight.w900,
                fontSize: 30.0,
              ),
            ),
            Text(
              'Successfully',
              style: TextStyle(
                color: Theme.of(context).accentColor,
                fontWeight: FontWeight.w900,
                fontSize: 30.0,
              ),
            ),
            SizedBox(height: 50.0),
            MaterialButton(
              minWidth: MediaQuery.of(context).size.width - 70,
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => NavBar(),
                    ),
                    (route) => false,
                  );
                },
                color: Theme.of(context).primaryColor,
                elevation: 20,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text(
                    'Continue',
                    style: TextStyle(color: Colors.white, fontSize: 20.0),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
