import 'package:flutter/material.dart';

class SportActivity extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        elevation: 15.0,
        title: Text(
          'Sporty Activity',
          style: TextStyle(fontSize: 22.0),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.games),
            onPressed: () {},
          )
        ],
        backgroundColor: Colors.black,
      ),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          SizedBox(height: 30.0),
          Container(
            child: Text('The Gym Section', style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold, color: Colors.white),),
          ),
          SizedBox(height: 40.0),
          Container(
            width: double.infinity,
            height: 610.0,
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/sport1.jpg'),
              ),
            ),
          ),
          // SizedBox(height: 20.0),
          // Container(
          //   child: Text('The Gym Section', style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold, color: Colors.white),),
          // ),
        ],
      ),
    );
  }
}
