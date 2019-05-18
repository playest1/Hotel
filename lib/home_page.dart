import 'rating_bar.dart';

import 'room.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  Home({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final appBar = AppBar(
      automaticallyImplyLeading: false,
      iconTheme: IconThemeData(color: Colors.brown),
      backgroundColor: Colors.white,
      // elevation: .5,
      // leading: IconButton(
      //   color: Colors.brown,
      //   icon: Icon(Icons.menu),
      //   onPressed: () {},
      // ),
      title: Text(
        'Hotel Rooms',
        style: TextStyle(
            color: Colors.brown, fontSize: 22.0, fontWeight: FontWeight.bold),
      ),
      actions: <Widget>[
        IconButton(
          color: Colors.red,
          icon: Icon(Icons.search),
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
                  onTap: () {
                    Navigator.pushNamed(context, 'detail/${book.title}');
                  },
                  child: Stack(
                    children: <Widget>[
                      Image(
                        width: double.infinity,
                        image: AssetImage(book.image),
                        fit: BoxFit.cover,
                      ),
                      Container(
                          padding: EdgeInsets.only(left: 10.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                book.title,
                                style: TextStyle(
                                  fontSize: 22.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                book.description,
                                style: TextStyle(
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              RatingBar(rating: book.rating)
                            ],
                          )),
                      Container(
                        alignment: Alignment.bottomRight,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            Text(
                              book.price,
                              style: TextStyle(
                                fontSize: 22.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            RaisedButton(
                              color: Colors.yellow.shade700,
                              shape: CircleBorder(),
                              child: Icon(
                                Icons.navigate_next,
                                color: Colors.white,
                                size: 30.0,
                              ),
                              onPressed: () => Navigator.pushNamed(context, 'detail/${book.title}'),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ))),
        );

    //Create the home book grid tiles
    final grid = CustomScrollView(
      primary: false,
      slivers: <Widget>[
        // DecoratedBox(decoration: ShapeDecoration(shape: CircleBorder())),
        SliverPadding(
          padding: EdgeInsets.all(12.0),
          sliver: SliverGrid.count(
            childAspectRatio: 5 / 3,
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
