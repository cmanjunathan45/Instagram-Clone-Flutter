import 'package:flutter/material.dart';

import 'homePage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Instagram",
      theme: ThemeData(
          primaryColor: Colors.black,
          primaryIconTheme: IconThemeData(
            color: Colors.black,
          ),
          textTheme: TextTheme(
            headline6: TextStyle(
              color: Colors.black,
            ),
          ),
          primaryTextTheme: TextTheme(
              headline6: TextStyle(color: Colors.black, fontFamily: "Aveny"))),
      debugShowCheckedModeBanner: false,
      initialRoute: "/home",
      routes: {
        "/home": (context) => Home(),
      },
    );
  }
}
