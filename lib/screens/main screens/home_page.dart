import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
// ignore: deprecated_member_use
import 'package:collection/iterable_zip.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> promotion = [
    'assets/images/harry.jpg',
    'assets/images/hunger_games.jpg',
    'assets/images/lord_of_the_rings.jpg',
    'assets/images/narnia.jpg',
    'assets/images/sherlok.png',
    'assets/images/romance.jpg',
  ];

  List<String> gridImage = [
    'assets/images/p1.jpg',
    'assets/images/p2.jpg',
    'assets/images/p3.jpg',
    'assets/images/p4.jpg',
    'assets/images/p5.jpg',
    'assets/images/p6.jpg',
    'assets/images/p7.jpg',
    'assets/images/p8.jpg',
    'assets/images/p9.jpg',
    'assets/images/p10.jpg'
  ];

  List<String> name = [
    'Romeo and Juliet',
    'The Adventures of Sherlock Homes',
    "Alice's Adventures in Wonderland",
    'Pride & Prejudice',
    'All in the mind',
    'The Most Dangerous Game',
    'The Art Of War',
    'Dracula',
    'The Secret Garden',
    'Tales of Space and Time'
  ];

  //----------------------Product list--------------------------------------//

  Widget product(String image, String name){
    return GestureDetector(
      onTap: (){},
      child: Card(
        elevation: 20.0,
        shadowColor: Colors.white70,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 200,
              width: MediaQuery.of(context).size.width / 2.2,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(image),
              ),
            ),
            SizedBox(height: 8.0,),
            Padding(
              padding: const EdgeInsets.only(left:8.0, right:8.0),
              child: Center(
                child: Text(
                  name,
                  style: TextStyle(fontSize: 18.0, color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          shrinkWrap: true,
          children: [
            Padding(
                padding: const EdgeInsets.only(
                    top: 10.0, left: 10, right: 10, bottom: 10.0),
                child: CarouselSlider.builder(
                    itemCount: 6,
                    itemBuilder: (BuildContext context, int itemIndex) =>
                        Container(
                          height: 300.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            border: Border.all(
                                color: Colors.yellow[900], width: 4.0),
                            image: DecorationImage(
                              image: AssetImage(promotion[itemIndex]),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                    options: CarouselOptions(
                      aspectRatio: 16 / 9,
                      viewportFraction: 1.0,
                      initialPage: 0,
                      autoPlay: true,
                      enableInfiniteScroll: true,
                      enlargeCenterPage: true,
                    )
                  )
                ),
              SizedBox(height:20),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  'Popular Books',
                  style: TextStyle(
                    color: Theme.of(context).accentColor,
                    fontSize: 20.0
                  ),
                ),
              ),
              
            Padding(
              padding: const EdgeInsets.only(top:10.0),
              child: GridView.count(
                primary: false,
                crossAxisCount: 2,
                shrinkWrap: true,
                padding: const EdgeInsets.all(20.0),
                crossAxisSpacing: 5,
                mainAxisSpacing: 5,
                childAspectRatio: 4.5/9.0,
                children: IterableZip([gridImage, name]).map((item) => product(item[0], item[1])).toList(),
                ),
            )  
          ],
        ),
      ),
    );
  }
}
