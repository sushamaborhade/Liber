import 'package:flutter/material.dart';

class RegPage extends StatefulWidget {
  @override
  _RegPageState createState() => _RegPageState();
}

class _RegPageState extends State<RegPage> {
  
     int currentPage=0;

  List <String> items= [
      'assets/images/reg1.png',
      'assets/images/reg2.png',
      'assets/images/reg3.png',
      'assets/images/reg4.png'
  ];
//---------------Page Dots------------------//
  Widget dotStyle(int index){
    return AnimatedContainer(
      duration: Duration(milliseconds: 200),
      margin: EdgeInsets.only(right : 5),
      height: 6,
      width: currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
        color: Theme.of(context).accentColor,
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {

     var size= MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: PageView.builder(
                onPageChanged: (index){
                  setState(() {
                    currentPage= index;
                  });
                },
                itemCount: items.length,
                itemBuilder: (context, index) => Slider(
                  size: size, 
                  image: items[index],
                  )
                )
              ),
            Expanded(
              flex: 2,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      items.length, 
                      (index) => dotStyle(index),
                      ),
                  ),
                  Spacer(flex:3),
                  SizedBox(
                    width: size.width - 70,
                      child: MaterialButton(
                        onPressed: (){
                          Navigator.pushNamed(context, '/login');
                        },
                        color: Theme.of(context).primaryColor,
                        splashColor: Theme.of(context).accentColor,
                        elevation: 20,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Text(
                            'Continue',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0
                            ),
                            ),
                        )
                        ),
                  ),
                  Spacer()
                ],
              )
              ),
          ],
        ),
      ),
    );
  }
}

//-----------------------------Slider---------------------//
class Slider extends StatelessWidget {
  const Slider({
    Key key,
    @required this.size,
    @required this.image,
  }) : super(key: key);

  final Size size;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'LIB',
                  style: TextStyle(
                    fontSize: 30.0,
                    color: Theme.of(context).primaryColor,
                    fontWeight: FontWeight.bold
                  ),
                  ),
                  Text(
                  'ER',
                  style: TextStyle(
                    fontSize: 30.0,
                    color: Theme.of(context).accentColor,
                    fontWeight: FontWeight.bold
                  ),
                  ),
              ],
           ),
        ),
        Image.asset(
          image,
          // width: size.width - 50,
          // height: size.height - 350 ,
          ),
      ],
    );
  }
}