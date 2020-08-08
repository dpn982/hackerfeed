import 'package:flutter/material.dart';
import 'package:hacker_feed/screens/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hacker Feed',
      theme: ThemeData(
        primaryColor: Colors.white,
        primaryTextTheme: TextTheme(headline6: TextStyle(color: Colors.black)),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}
