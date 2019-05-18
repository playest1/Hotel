import 'room.dart';
import 'package:flutter/material.dart';

class Car extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appBar = AppBar(
      iconTheme: IconThemeData(color: Colors.brown),
      backgroundColor: Colors.white,
      // elevation: .5,
      // leading: IconButton(
      //   color: Colors.brown,
      //   icon: Icon(Icons.menu),
      //   onPressed: () {},
      // ),
      title: Text(
        'Car Collections',
        style: TextStyle(
            color: Colors.brown, fontSize: 22.0, fontWeight: FontWeight.bold),
      ),
      actions: <Widget>[
        IconButton(
          color: Colors.red,
          icon: Icon(Icons.local_taxi),
          onPressed: () {},
        )
      ],
    );

    //Create Book Tile Hero
    createTile(Book book) => Hero(
          tag: book.title,
          child: Material(
            elevation: 15.0,
            shadowColor: Colors.grey,
            child: InkWell(
              onTap: () {},
              child: Column(
                children: <Widget>[
                  Container(
                    width: 270.0,
                    height: 240.0,
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage(book.carimage,),
                      ),
                    ),
                  ),
                  SizedBox(height: 8.0),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        book.carname,
                        style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.red),
                      ),
                      Text(
                        book.carprice,
                        style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.brown),
                      ),
                      RaisedButton(
                        color: Colors.black,
                        child: Text('Rent Now', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 17.0),),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );

    //Create the home book grid tiles
    final grid = CustomScrollView(
      primary: false,
      slivers: <Widget>[
        // DecoratedBox(decoration: ShapeDecoration(shape: CircleBorder())),
        SliverPadding(
          padding: EdgeInsets.all(12.0),
          sliver: SliverGrid.count(
            childAspectRatio: 2 / 2,
            crossAxisCount: 1,
            mainAxisSpacing: 20.0,
            crossAxisSpacing: 20.0,
            children: bookData.map((book) => createTile(book)).toList(),
          ),
        )
      ],
    );

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: appBar,
      body: grid,
    );
  }
}
