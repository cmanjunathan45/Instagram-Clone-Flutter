import 'package:flutter/material.dart';
import 'package:insta_clone_model/insta_list.dart';

class InstaBody extends StatefulWidget {
  @override
  _InstaBodyState createState() => _InstaBodyState();
}

class _InstaBodyState extends State<InstaBody> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [Flexible(child: InstaList())],
    );
  }
}
