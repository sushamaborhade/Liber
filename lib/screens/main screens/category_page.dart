import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body:SafeArea(
                  child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Categories',
                        style: TextStyle(
                            fontFamily: 'Langar',
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Theme.of(context).accentColor
                        ),
                      ),
                  ],
                ),
              ),
                Padding(
                  padding: const EdgeInsets.only(top:50.0),
                  child: ListView(
                   children: [
                     CategoriesLayout(imageUrl: 'assets/images/adventure.jpg',categoryName: 'Adventure',),
                     CategoriesLayout(imageUrl: 'assets/images/science_fiction.jpg',categoryName: 'Science Fiction',),
                     CategoriesLayout(imageUrl: 'assets/images/detective.jpg',categoryName: 'Mystery',),
                     CategoriesLayout(imageUrl: 'assets/images/historic.jpg',categoryName: 'Historic',),
                     CategoriesLayout(imageUrl: 'assets/images/fantasy.jpg',categoryName: 'Fantasy',),
                     CategoriesLayout(imageUrl: 'assets/images/crime.jpg',categoryName: 'Crime',),
                     CategoriesLayout(imageUrl: 'assets/images/horror.jpg',categoryName: 'Horror',),
                     CategoriesLayout(imageUrl: 'assets/images/romance1.jpg',categoryName: 'Romance',),
                     CategoriesLayout(imageUrl: 'assets/images/lionking.jpg',categoryName: 'Comic',),
                   ],
            ),
                ),
            ],
          ),
        ) 
        
      ),
    );
  }
}

//-------------------- Category Class ---------------------------//
class CategoriesLayout extends StatelessWidget {

  final String imageUrl;
  final String categoryName;

  CategoriesLayout({ this.imageUrl,this.categoryName});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){},
      child: Container(
        padding:EdgeInsets.symmetric(horizontal: 15),
        child: Container(
          margin: EdgeInsets.only(top: 15,bottom: 5),
          width: MediaQuery.of(context).size.width,
          child: Stack(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(image: AssetImage(imageUrl),fit: BoxFit.fitWidth),
                  boxShadow: [BoxShadow(color: Color(0xFFFE019A),blurRadius: 4,spreadRadius: 0,offset: Offset(2,2))],
                ),

              ),
              Container(
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width,
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.black45,
                ),
                child: Text(
                  categoryName,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 35,
                    letterSpacing: 1,
                    fontFamily: 'Langar',
                  ),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


