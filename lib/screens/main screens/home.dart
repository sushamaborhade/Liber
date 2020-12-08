import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
			appBar: AppBar(title: Text("Liber App"),centerTitle: true,),

      body: _homePageList()
	);
  }

  Widget _homePageList()
	{
		return Container(
			padding: EdgeInsets.all(10),
			child: Column(children: [
				_bookFeaturedList(),
				_categoriesTitle('Categories'),
				_categoriesList(),
				_recentlyAddedTitle('Recently Added'),
				_recentlyAddedList(),
			],),
		);
	}
  Widget _bookFeaturedList() {
		return Expanded(flex:3,
		  child: Container(
				//padding: EdgeInsets.all(5),
				child: ListView.builder(scrollDirection: Axis.horizontal,
		  		itemCount: 5,itemBuilder:(context,index)
		  {
		  	return Container(padding: EdgeInsets.only(left: 5,top: 10,bottom: 10,right: 10),
					child: Row(children: [
					Container(
						width: 110,
						decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
							image: DecorationImage(image: AssetImage("assets/images/reg1.png"),fit: BoxFit.cover),),
					)
				],),
		  	);
		  }),),
		);
	}

	Widget _categoriesTitle(String title) {
		return Expanded(flex:1,child: Container(child: Padding(
			padding: EdgeInsets.symmetric(horizontal: 10.0),
			child: Row(
				mainAxisAlignment: MainAxisAlignment.spaceBetween,
				children: <Widget>[
					Text(title, style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w500,),),
				],
			),
		)));
	}

	Widget _categoriesList() {
		return Expanded(flex: 1,
			child: ListView.builder(scrollDirection: Axis.horizontal,
					itemCount: 4,itemBuilder:(context,index)
					{
						return Padding(
						  padding:  EdgeInsets.symmetric(horizontal: 5,vertical: 10),
						  child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20.0),color: Theme.of(context).accentColor),
						  		child: InkWell(borderRadius: BorderRadius.circular(20.0),onTap: (){},child: Center(child:
									Padding(
									  padding:  EdgeInsets.all(2.0),
									  child: Text("Short stories",style: TextStyle(color: Colors.white,),),
									)),)),
						);
					})
		);
	}

	Widget _recentlyAddedTitle(String title) {
		return Expanded(flex:1,child: Container(child: Padding(
			padding: EdgeInsets.symmetric(horizontal: 10.0),
			child: Row(
				mainAxisAlignment: MainAxisAlignment.spaceBetween,
				children: <Widget>[
					Text(title, style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w500,),),
				],
			),
		)));	}

	Widget _recentlyAddedList() {
		return Expanded(flex:6,
			child:
				Container(padding: EdgeInsets.all(5),
				  child: ListView.builder(
				  	itemCount: 10,itemBuilder:(context,index)
				  	{
				  		return Container(padding: EdgeInsets.only(top:20),
								height: 150,
				  		  child: Row(children: [
				  		      	Expanded(flex:1,child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
												image: DecorationImage(image: AssetImage("assets/images/reg1.png"),fit: BoxFit.cover),),)),
								Expanded(flex:2,child: Container(padding: EdgeInsets.symmetric(vertical: 10,horizontal: 20),
									child: Column(
										crossAxisAlignment: CrossAxisAlignment.start,
										children: [
									Text("The Adventures of Sherlocks",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
									SizedBox(height: 5,),
									Text("Arthur Conan Doyle",style: TextStyle(color: Colors.blue,fontSize: 14),),
											SizedBox(height: 5,),
											Text("The Adventures of Sherlocks by Arthur Conan Doyle is collection of 12 stories",maxLines: 3,style: TextStyle(fontSize: 13,color: Colors.grey),)
								],),)),

							],

				  		  ),
				  		);
				  	}),
				),
		);
	}



}