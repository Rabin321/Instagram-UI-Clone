import 'package:flutter/material.dart';

import 'Home.dart';

void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Instagram",
      debugShowCheckedModeBanner: false,
     
      theme: ThemeData(
        primaryColor: Colors.black,
        primaryIconTheme: IconThemeData(color: Colors.black),
        primaryTextTheme: TextTheme(headline6: TextStyle(color: Colors.black, fontFamily: "Aveny")),
        textTheme: TextTheme(headline6: TextStyle(color: Colors.black) )
      ),
    home: new Home(),
      
    );
  }
}