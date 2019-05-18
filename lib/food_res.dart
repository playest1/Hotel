import 'room.dart';
import 'package:flutter/material.dart';

class FoodRes extends StatefulWidget {
  FoodRes({Key key}) : super(key: key);
  @override
  FoodResState createState() {
    return new FoodResState();
  }
}

class FoodResState extends State<FoodRes> {
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
        'Food Menu',
        style: TextStyle(
            color: Colors.brown, fontSize: 22.0, fontWeight: FontWeight.bold),
      ),
      actions: <Widget>[
        IconButton(
          color: Colors.red,
          icon: Icon(Icons.restaurant_menu),
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
                    width: 250.0,
                    height: 240.0,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage(book.foodimage),
                      ),
                    ),
                  ),
                  SizedBox(height: 8.0),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            book.foodname,
                            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.red),
                          ),
                          SizedBox(height: 5.0),
                          Text(
                            book.foodprice,
                            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.brown),
                          ),
                          RaisedButton(
                              color: Colors.brown[400],
                              child: Text('Order Now', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 17.0),),
                              onPressed: () {},
                            ),
                        ],
                      ),
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
          padding: EdgeInsets.all(2.0),
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
      body: grid
      );
  }
}
