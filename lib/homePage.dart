import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:insta_clone_model/insta_body.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final topBar = AppBar(
    backgroundColor: Color(0xfff8faf8),
    centerTitle: true,
    elevation: 1.0,
    leading: Icon(FontAwesomeIcons.solidPlusSquare),
    title: SizedBox(
      //height: 20.0,
      child: Text(
        "Instagram",
        style: TextStyle(
          fontFamily: "Insta",
          fontSize: 28.0,
        ),
      ), //Image.asset("assets/images/insta_logo.png"),
    ),
    actions: [
      Padding(
        padding: EdgeInsets.only(
          right: 12.0,
        ),
        child: Icon(Icons.send),
      ),
    ],
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: topBar,
      body: InstaBody(),
      bottomNavigationBar: new Container(
        height: 60.0,
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              iconSize: 20.0,
              icon: Icon(FontAwesomeIcons.home),
              onPressed: () {},
            ),
            IconButton(
              iconSize: 20.0,
              icon: Icon(FontAwesomeIcons.search),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(FontAwesomeIcons.instagram),
              onPressed: () {},
            ),
            IconButton(
              iconSize: 20.0,
              icon: Icon(FontAwesomeIcons.heart),
              onPressed: () {},
            ),
            IconButton(
              iconSize: 25.0,
              icon: Icon(Icons.person_outline_rounded),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
