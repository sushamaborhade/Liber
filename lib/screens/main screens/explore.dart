import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ExplorePage extends StatefulWidget {
  @override
  _ExplorePageState createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Explore"),centerTitle: true,),
      body: _exploreList()
    );
  }
  Widget _exploreList()
  {
    return Container(child: ListView.builder(itemCount: 12,itemBuilder: (context,index)
    {
      return Padding(
        padding: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
        child: Column(children: [
          titleSection(),
          SizedBox(height: 10,),
          bookListSection()
        ],),);
    }),);
  }

  Widget titleSection()
  {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(child: Text("Short Stories",style: TextStyle(fontSize: 17.0,fontWeight: FontWeight.w500),
          maxLines: 1,overflow: TextOverflow.ellipsis,),),
        GestureDetector(child: Text("See All",style: TextStyle(fontSize: 17.0,fontWeight: FontWeight.w400,
            color: Theme.of(context).accentColor)),)
      ],);
  }

  Widget bookListSection()
  {
    return Container(height: 160,
      //padding: EdgeInsets.all(5),
      child: ListView.builder(scrollDirection: Axis.horizontal,
          itemCount: 5,itemBuilder:(context,index)
          {
            return Container(padding: EdgeInsets.only(left: 2,top: 10,bottom: 10,right: 10),
              child: Row(children: [
                Container(
                  width: 110,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(image: AssetImage("assets/images/reg1.png"),fit: BoxFit.cover),),
                )
              ],),
            );
          }),);
  }
}
