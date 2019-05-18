import 'package:flutter/material.dart';
import 'package:hotel_booking/detail.dart';
import 'package:hotel_booking/googlesignin.dart';
import 'package:hotel_booking/nav_bar.dart';
import 'package:hotel_booking/room.dart';
import 'auth_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.red),
      debugShowCheckedModeBanner: false,
      title: 'Hotel Booking',
      home: GoogleSignInApp(),
    onGenerateRoute: (settings) => generateRoute(settings),
    );
  }

  generateRoute(RouteSettings settings) {
    final path = settings.name.split('/');
    final title = path[1];

    Book book = bookData.firstWhere((it) => it.title == title);
    return MaterialPageRoute(
      settings: settings,
      builder: (context) => Detail(book),
    );
  }
}

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AuthPage();
  }
}


