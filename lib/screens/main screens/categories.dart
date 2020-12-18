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
        backgroundColor: Colors.black54,
        appBar: AppBar(
          title: Row(
            children: [
              IconButton(icon: Icon(Icons.arrow_back,color: Colors.cyanAccent,), onPressed: null),
              SizedBox(width: 50,),
              Text('Categories',
                style: TextStyle(
                    fontFamily: 'Langar',
                    fontSize: 25,
                    color: Colors.cyanAccent
                ),
              ),
            ],
          ),
          backgroundColor: Colors.black,
        ),
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
          child: ListView(
               children: [
                 CategoriesLayout(imageUrl: 'assets/images/horror.jpg',categoryName: 'Horror',),
                 CategoriesLayout(imageUrl: 'assets/images/lionking.jpg',categoryName: 'Comic',),
                 CategoriesLayout(imageUrl: 'assets/images/historic.jpg',categoryName: 'Historic',),
                 CategoriesLayout(imageUrl: 'assets/images/adventure.jpg',categoryName: 'Adventure',),
                 CategoriesLayout(imageUrl: 'assets/images/biography.jpg',categoryName: 'Biographies',),
                 CategoriesLayout(imageUrl: 'assets/images/detective.jpg',categoryName: 'Mystery',),
                 CategoriesLayout(imageUrl: 'assets/images/chemestry.jpg',categoryName: 'Science',),
                 CategoriesLayout(imageUrl: 'assets/images/personality.jpg',categoryName: 'Self-Development',),
                 CategoriesLayout(imageUrl: 'assets/images/cooking.jpg',categoryName: 'Cookbooks',),
               ],
          ),
        ),
      ),
    );
  }
}

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


