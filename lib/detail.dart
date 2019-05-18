import 'package:hotel_booking/booking_form.dart';

import 'room.dart';
import 'rating_bar.dart';
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

class Detail extends StatelessWidget {
  final Book book;
  Detail(this.book);
  @override
  Widget build(BuildContext context) {
    final appBar = AppBar(
      backgroundColor: Colors.white,
      // elevation: 15,
      title: Text('Design Books'),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.search),
          onPressed: () {},
        )
      ],
    );

    final imageCarousel = Hero(
      tag: book.title,
      child: Material(
          // elevation: 100.0,
          shadowColor: Colors.yellow.shade900,
          child: Carousel(
            boxFit: BoxFit.cover,
            images: [
              AssetImage(book.rooms[0]),
              AssetImage(book.rooms[1]),
              AssetImage(book.rooms[2]),
              AssetImage(book.rooms[3]),
            ],
            dotSize: 5.0,
            dotSpacing: 15.0,
            dotColor: Colors.white,
            indicatorBgPadding: 10.0,
            dotBgColor: Colors.white.withOpacity(0.1),
            borderRadius: true,
          )),
    );

    final slivers = CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          backgroundColor: Colors.white,
          floating: true,
          expandedHeight: 300.0,
          flexibleSpace: FlexibleSpaceBar(
            background: imageCarousel,
            // fit: BoxFit.cover,
          ),
        ),
        SliverList(
          // itemExtent: 140.0,
          delegate: SliverChildListDelegate([
            Container(
              height: 140.0,
              color: Colors.grey[200],
              child: Row(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(20.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        // SizedBox(height: 10.0),
                        Text(
                          book.title,
                          style: TextStyle(
                            fontSize: 22.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        // SizedBox(height: 10.0),
                        Text(
                          book.pages,
                          style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey,
                          ),
                        ),
                        // SizedBox(height: 10.0),
                        RatingBar(
                          rating: book.rating,
                          color: Colors.yellow[700],
                        )
                      ],
                    ),
                  ),
                  SizedBox(width: 80.0),
                  Container(
                    padding: EdgeInsets.only(top: 30.0),
                    alignment: Alignment.topRight,
                    child: Text(
                      book.price,
                      style: TextStyle(
                          fontSize: 22.0,
                          color: Colors.grey[600],
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 5.0),
            Container(
              height: 140.0,
              color: Colors.grey[300],
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding:
                        EdgeInsets.only(top: 18.0, left: 14.0, bottom: 8.0),
                    child: Text(
                      'Room Description',
                      style: TextStyle(
                          fontSize: 19.0, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 10.0, left: 14.0, bottom: 10.0, right: 10.0),
                    child: Text(
                      book.explain,
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.grey[600],
                        letterSpacing: 1.3,
                        wordSpacing: 1.5,
                        height: 1.2,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 5.0),
            Container(
              color: Colors.grey[200],
              padding: EdgeInsets.only(top: 12.0, bottom: 12.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Services',
                    style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.yellow[900]),
                  ),
                  Text(
                    book.services[0],
                    style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.w600,
                      height: 1.3,
                      letterSpacing: 1.4,
                      wordSpacing: 1.4,
                    ),
                  ),
                  Text(
                    book.services[1],
                    style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.w600,
                      height: 1.3,
                      letterSpacing: 1.4,
                      wordSpacing: 1.4,
                    ),
                  ),
                  Text(
                    book.services[2],
                    style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.w600,
                      height: 1.3,
                      letterSpacing: 1.4,
                      wordSpacing: 1.4,
                    ),
                  ),
                  Text(
                    book.services[3],
                    style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.w600,
                      height: 1.3,
                      letterSpacing: 1.4,
                      wordSpacing: 1.4,
                    ),
                  ),
                  Text(
                    book.services[4],
                    style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.w600,
                      height: 1.3,
                      letterSpacing: 1.4,
                      wordSpacing: 1.4,
                    ),
                  ),
                  Text(
                    book.services[5],
                    style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.w600,
                      height: 1.3,
                      letterSpacing: 1.4,
                      wordSpacing: 1.4,
                    ),
                  ),
                  Text(
                    book.services[6],
                    style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.w600,
                      height: 1.3,
                      letterSpacing: 1.4,
                      wordSpacing: 1.4,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 5.0),
            Container(
              color: Colors.grey[300],
              padding: EdgeInsets.only(top: 12.0, bottom: 12.0),
              // height: 140.0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Contacts',
                    style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.green[700]),
                  ),
                  Text(
                    book.contact[0],
                    style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.w600,
                      height: 1.3,
                      letterSpacing: 1.4,
                      wordSpacing: 1.4,
                    ),
                  ),
                  Text(
                    book.contact[1],
                    style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.w600,
                      height: 1.3,
                      letterSpacing: 1.4,
                      wordSpacing: 1.4,
                    ),
                  ),
                  Text(
                    book.contact[2],
                    style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.w600,
                      height: 1.3,
                      letterSpacing: 1.4,
                      wordSpacing: 1.4,
                    ),
                  ),
                  Text(
                    book.contact[3],
                    style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.w600,
                      height: 1.3,
                      letterSpacing: 1.4,
                      wordSpacing: 1.4,
                    ),
                  ),
                  Text(
                    book.contact[4],
                    style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.w600,
                      height: 1.3,
                      letterSpacing: 1.4,
                      wordSpacing: 1.4,
                    ),
                  ),
                  Text(
                    book.contact[5],
                    style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.w600,
                      height: 1.3,
                      letterSpacing: 1.4,
                      wordSpacing: 1.4,
                    ),
                  ),
                  Text(
                    book.contact[6],
                    style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.w600,
                      height: 1.3,
                      letterSpacing: 1.4,
                      wordSpacing: 1.4,
                    ),
                  ),
                  SizedBox(height: 6.0),
                  Image.asset('assets/map.png')
                ],
              ),
            ),
            SizedBox(height: 5.0),
            Container(
              color: Colors.grey[200],
              padding: EdgeInsets.only(
                  top: 10.0, bottom: 17.0, left: 19.0, right: 19.0),
              child: RaisedButton(
                color: Colors.yellow[700],
                padding: EdgeInsets.symmetric(vertical: 10.0),
                elevation: 2.0,
                shape: StadiumBorder(),
                child: Text(
                  'Book Now',
                  style: TextStyle(
                      fontSize: 19.0,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                      letterSpacing: 1.4),
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => BookingForm()));
                },
              ),
            ),
            // Container(
            //   color: Colors.blue,
            //   height: 140.0,
            // ),
          ]),
        )
      ],
    );

    //detail of book image and it's pages
    final topLeft = Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.all(16.0),
          child: Hero(
            tag: book.title,
            child: Material(
              elevation: 15.0,
              shadowColor: Colors.yellow.shade900,
              child: Image(
                image: AssetImage(book.image),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        text('${book.pages} pages', color: Colors.black, size: 12)
      ],
    );

    //detail top right
    final topRight = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        text(
          book.title,
          size: 16,
          isBold: true,
          padding: EdgeInsets.only(top: 16.0),
        ),
        text('by ${book.writer}',
            color: Colors.black54,
            size: 12,
            padding: EdgeInsets.only(top: 16.0)),
        Row(
          children: <Widget>[
            text(
              book.price,
              isBold: true,
              padding: EdgeInsets.only(right: 8.0),
            ),
            RatingBar(rating: book.rating)
          ],
        ),
        SizedBox(height: 32.0),
        Material(
            borderRadius: BorderRadius.circular(20.0),
            shadowColor: Colors.blue.shade200,
            elevation: 5.0,
            color: Colors.transparent,
            child: MaterialButton(
              onPressed: () {},
              minWidth: 160.0,
              color: Colors.blue,
              child: Text(
                'BUY IT NOW',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 13.0,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.5),
              ),
            ))
      ],
    );

    final topContent = Container(
        color: Theme.of(context).primaryColor,
        padding: EdgeInsets.only(bottom: 16.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Flexible(flex: 2, child: topLeft),
            Flexible(flex: 3, child: topRight),
          ],
        ));

    //scrolling text description
    final bottomContent = Container(
      height: 300.0,
      child: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Text(
          book.description,
          style: TextStyle(fontSize: 13.0, height: 1.5),
        ),
      ),
    );

    return Scaffold(
      // appBar: appBar,
      body: slivers,
      // ),
    );
  }

  text(String data,
          {Color color = Colors.black87,
          num size = 14,
          EdgeInsetsGeometry padding = EdgeInsets.zero,
          bool isBold = false}) =>
      Padding(
        padding: padding,
        child: Text(
          data,
          style: TextStyle(
              color: color,
              fontSize: size.toDouble(),
              fontWeight: isBold ? FontWeight.bold : FontWeight.normal),
        ),
      );
}
