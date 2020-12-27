import 'package:flutter/material.dart';
import 'Items/search_item.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

List<SearchItem> searchList = loadsearchItems();
List<SearchItem> filteredSearch = loadsearchItems();

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    //---------------------------------------- filtered data -----------------------------//
    void filteredData(value) {
      setState(() {
        filteredSearch = searchList.where(
            (item) => item.title.toLowerCase().contains(value.toLowerCase()));
      });
    }
//---------------------------- List view design ---------------------------------//
    Widget items(String image, String name, String author) {
      return Padding(
        padding: const EdgeInsets.only(top: 10.0, left: 15.0, right: 15.0),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  width: 90.0,
                  height: 120.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      border: Border.all(color: Colors.yellow[900], width: 2),
                      image: DecorationImage(
                        image: AssetImage(image),
                        fit: BoxFit.fill,
                      )),
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        name,
                        style: TextStyle(
                          color: Theme.of(context).accentColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        author,
                        style: TextStyle(
                          color: Theme.of(context).accentColor,
                          fontSize: 15.0,
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      );
    }

    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            //--------------------------- List of Books ----------------------------//
            Padding(
              padding: const EdgeInsets.only(top: 100.0),
              child: ListView.builder(
                itemCount: filteredSearch.length,
                itemBuilder: (context, index) {
                  SearchItem item = filteredSearch[index];
                  return items(item.image, item.title, item.author);
                },
              ),
            ),
            //------------------------------ Search Bar ----------------------------//
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextField(
                  onSubmitted: (value) {
                    debugPrint(value);
                    filteredData(value);
                  },
                  autofocus: true,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.transparent,
                    prefixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0)),
                    hintText: 'Search',
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
