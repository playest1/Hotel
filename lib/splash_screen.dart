import 'dart:async';

import 'package:flutter/material.dart';
import 'package:hotel_booking/dashboard.dart';
import 'package:hotel_booking/nav_bar.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 5),
        () => Navigator.push(context,
            MaterialPageRoute(builder: (BuildContext context) => NavBar())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(color: Colors.redAccent),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Expanded(
                  flex: 10,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(top: 50.0),
                      ),
                      CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 70.0,
                          child: Icon(
                            Icons.home,
                            color: Colors.red,
                            size: 80.0,
                          )),
                      Padding(
                        padding: EdgeInsets.only(top: 25.0),
                      ),
                      Text(
                        'Welcome To',
                        style: TextStyle(fontSize: 20.0),
                      ),
                      Text(
                        'PLAYEST HOTEL',
                        style: TextStyle(
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ],
                  )),
              Expanded(
                flex: 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    CircularProgressIndicator(),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
