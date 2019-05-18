import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hotel_booking/food_res.dart';
import 'package:hotel_booking/home_page.dart';
import 'package:hotel_booking/notifications.dart';
import 'package:hotel_booking/profile.dart';

class NavBar extends StatefulWidget {
  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  final Key keyOne = PageStorageKey('pageOne');
  final Key keyTwo = PageStorageKey('pageTwo');
  final Key keyThree = PageStorageKey('pageThree');
  final Key keyFour = PageStorageKey('pageFour');
  int currentTab = 0;
  Home one;
  FoodRes two;
  MyNotification three;
  MyProfile four;
  List<Widget> pages;
  Widget currentPage;

  final PageStorageBucket bucket = PageStorageBucket();

  @override
  void initState() {
    super.initState();
    one = Home(key: keyOne);
    two = FoodRes(key: keyTwo);
    three = MyNotification(key: keyThree);
    four = MyProfile(key: keyFour);
    pages = [one, two, three, four];
    currentPage = one;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(child: currentPage, bucket: bucket),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: currentTab,
        onTap: (int index) {
          setState(() {
            currentTab = index;
            currentPage = pages[index];
          });
        },
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.hotel), title: Text('Rooms')),
          BottomNavigationBarItem(
              icon: Icon(Icons.restaurant_menu), title: Text('Food')),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications), title: Text('Notices')),
          BottomNavigationBarItem(
              icon: Icon(Icons.person), title: Text('Profile')),
        ],
      ),
    );
  }
}



