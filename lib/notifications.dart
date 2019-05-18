import 'package:flutter/material.dart';

class MyNotification extends StatefulWidget {
  MyNotification({Key key}) : super(key: key);

  @override
  MyNotificationState createState() {
    return new MyNotificationState();
  }
}

class MyNotificationState extends State<MyNotification> {
  final List<Category> _categories = [
    Category(
        'New Feature',
        'Learn how to order for food from your \n app with a simple swipe',
        Icons.new_releases),
    Category(
        'Don\'t miss the biggest SALE',
        'Last days of the biggest sale of the year. \n Update your account and get 50% discount',
        Icons.trending_up),
    Category(
        'You need to Upgrade',
        'Your room payment services is \n about to expire, please upgrade to enjoy',
        Icons.update),
    Category(
        'Welcome to Playest Hotel',
        'Thank you for patronising Playest \n Hotel. Our goal is truly hospitable',
        Icons.help_outline),
    Category(
        'New Feature',
        'Learn how to order for food from your \n app with a simple swipe',
        Icons.new_releases),
    Category(
        'New Feature',
        'Learn how to order for food from your \n app with a simple swipe',
        Icons.new_releases),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Notification',
          style: TextStyle(
              color: Colors.brown, fontSize: 22.0, fontWeight: FontWeight.bold),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.settings),
            color: Colors.red,
            onPressed: () {},
          ),
        ],
        iconTheme: IconThemeData(color: Colors.brown),
        backgroundColor: Colors.white,
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return FlatButton(
            padding: EdgeInsets.all(4.0),
            child: Container(
              height: 100.0,
              // width: 50.0,
              child: Card(
                elevation: 5.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(7.0)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: <Widget>[
                      Container(
                        child: Container(
                            height: 30.0,
                            width: 30.0,
                            color: Colors.brown,
                            child: Icon(
                              _categories[index].icon,
                              color: Colors.white,
                            )),
                      ),
                      SizedBox(width: 12.0),
                      Container(
                          child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            _categories[index].name,
                            style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.w500,
                                color: Colors.brown),
                          ),
                          SizedBox(height: 5.0),
                          Text(
                            _categories[index].description,
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.grey),
                          ),
                        ],
                      ))
                    ],
                  ),
                ),
              ),
            ),
            onPressed: () {},
          );
        },
        itemCount: 6,
      ),
    );
  }
}

class Category {
  String name;
  String description;
  IconData icon;

  Category(this.name, this.description, this.icon);
}
