import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:hotel_booking/googlesignin.dart';

class MyProfile extends StatelessWidget {
  final UserDetails detailsUser;
  MyProfile({Key key, @required this.detailsUser}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    final GoogleSignIn _gSignIn = GoogleSignIn();
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Profile',
          style: TextStyle(
              color: Colors.brown, fontSize: 22.0, fontWeight: FontWeight.bold),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.person),
            color: Colors.red,
            onPressed: () {},
          ),
        ],
        iconTheme: IconThemeData(color: Colors.brown),
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              // Round Image of user
              Center(
                child: Container(
                  height: 200.0,
                  width: 200.0,
                  decoration: BoxDecoration(
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                          color: Colors.brown,
                          offset: Offset(1.0, 6.0),
                          blurRadius: 20.0),
                    ],
                    color: Colors.red,
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      alignment: FractionalOffset.topCenter,
                      image: NetworkImage(detailsUser.photoUrl),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10.0),
              // Name of user
              Container(
                child: Column(
                  children: <Widget>[
                    Text(
                      detailsUser.userName,
                      style: TextStyle(
                          fontSize: 22.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.red),
                    ),
                    Text(
                      detailsUser.userEmail,
                      style: TextStyle(fontSize: 17.0, color: Colors.grey),
                    ),
                  ],
                ),
              ),
              // cards of buttons containing features
              SizedBox(height: 30.0),
              Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      InkWell(
                        child: Container(
                          // color: Colors.brown,
                          height: 100.0,
                          width: 150.0,
                          child: Card(
                              elevation: 3.0,
                              child: Container(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Icon(Icons.bookmark, size: 30.0),
                                    Text(
                                      'My Bookings',
                                      style: TextStyle(
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                ),
                              )),
                        ),
                        onTap: () {},
                      ),
                      InkWell(
                        child: Container(
                          // color: Colors.brown,
                          height: 100.0,
                          width: 150.0,
                          child: Card(
                              elevation: 3.0,
                              child: Container(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Icon(Icons.edit, size: 30.0),
                                    Text(
                                      'Edit Profile',
                                      style: TextStyle(
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                ),
                              )),
                        ),
                        onTap: () {},
                      ),
                    ],
                  ),
                  SizedBox(height: 30.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      InkWell(
                        child: Container(
                          // color: Colors.brown,
                          height: 100.0,
                          width: 150.0,
                          child: Card(
                              elevation: 3.0,
                              child: Container(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Icon(Icons.share, size: 30.0),
                                    Text(
                                      'Share',
                                      style: TextStyle(
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                ),
                              )),
                        ),
                        onTap: () {},
                      ),
                      InkWell(
                        child: Container(
                          // color: Colors.brown,
                          height: 100.0,
                          width: 150.0,
                          child: Card(
                              elevation: 3.0,
                              child: Container(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Icon(Icons.exit_to_app, size: 30.0),
                                    Text(
                                      'SignOut',
                                      style: TextStyle(
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                ),
                              )),
                        ),
                        onTap: () {
                          _gSignIn.signOut();
                          print('sign out');
                          Navigator.pop(context);
                        },
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}