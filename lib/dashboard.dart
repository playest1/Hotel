import 'package:flutter/material.dart';
import 'package:hotel_booking/car.dart';
import 'package:hotel_booking/food_res.dart';
import 'package:hotel_booking/home_page.dart';
import 'package:hotel_booking/sport.dart';

class DashBoard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Text(
          'PLAYEST HOTEL',
          style: TextStyle(color: Colors.black, fontSize: 15.0),
        ),
        leading: IconButton(
          icon: Icon(
            Icons.touch_app, size: 20.0,
            color: Colors.black,
          ),
          onPressed: () {},
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(height: 30.0),
          Container(
            // padding: EdgeInsets.only(left: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Icon(
                  Icons.dashboard,
                  size: 30.0,
                ),
                Text(
                  'Dashboard',
                  style: TextStyle(
                    fontSize: 36.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 30.0),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: FlatButton(
                          child: Container(
                padding: EdgeInsets.only(left: 30.0),
                height: 50.0,
                color: Colors.yellow[500],
                child: Row(
                  children: <Widget>[
                    Icon(Icons.hotel),
                    SizedBox(width: 20.0),
                    Text('Room Bookings', style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w500),),
                    SizedBox(width: 60.0),
                    Icon(Icons.arrow_right)
                  ],
                ),
              ), onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => Home()));
              },
            ),
          ),
          SizedBox(height: 20.0),
          Expanded(
            child: CustomScrollView(
              primary: false,
              slivers: <Widget>[
                // DecoratedBox(decoration: ShapeDecoration(shape: CircleBorder())),
                SliverPadding(
                  padding: EdgeInsets.all(12.0),
                  sliver: SliverGrid.count(
                    childAspectRatio: 5 / 3,
                    crossAxisCount: 2,
                    mainAxisSpacing: 20.0,
                    crossAxisSpacing: 20.0,
                    children: <Widget>[
                      Card(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            FlatButton(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Icon(Icons.restaurant),
                                  SizedBox(height: 8.0),
                                  Text('Food \n Reservation'),
                                ],
                              ),
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => FoodRes()));
                              },
                            ),
                          ],
                        ),
                      ),
                      Card(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            FlatButton(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Icon(Icons.games),
                                  SizedBox(height: 8.0),
                                  Text('Sport \n Activity'),
                                ],
                              ),
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => SportActivity()));
                              },
                            ),
                          ],
                        ),
                      ),
                      Card(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            FlatButton(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Icon(Icons.fastfood),
                                  SizedBox(height: 8.0),
                                  Text('Food order \n in the room'),
                                ],
                              ),
                              onPressed: () {},
                            ),
                          ],
                        ),
                      ),
                      Card(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            FlatButton(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Icon(Icons.pool),
                                  SizedBox(height: 8.0),
                                  Text('Pool Bar \n Reservation'),
                                ],
                              ),
                              onPressed: () {},
                            ),
                          ],
                        ),
                      ),
                      Card(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            FlatButton(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Icon(Icons.local_taxi),
                                  SizedBox(height: 8.0),
                                  Text('Rent a Car'),
                                ],
                              ),
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => Car()));
                              },
                            ),
                          ],
                        ),
                      ),
                      Card(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            FlatButton(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Icon(Icons.my_location),
                                  SizedBox(height: 8.0),
                                  Text('Tour Guides'),
                                ],
                              ),
                              onPressed: () {},
                            ),
                          ],
                        ),
                      ),
                      Card(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            FlatButton(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Icon(Icons.local_bar),
                                  SizedBox(height: 8.0),
                                  Text('Bar \n Reservation'),
                                ],
                              ),
                              onPressed: () {},
                            ),
                          ],
                        ),
                      ),
                      Card(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            FlatButton(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Icon(Icons.chat),
                                  SizedBox(height: 8.0),
                                  Text('Chat with \n Conclerge'),
                                ],
                              ),
                              onPressed: () {},
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
