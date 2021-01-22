import 'package:flutter/material.dart';

class Stories extends StatefulWidget {
  @override
  _StoriesState createState() => _StoriesState();
}

class _StoriesState extends State<Stories> {
  final stories = Expanded(
    child: ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 5,
      itemBuilder: (context, index) => Stack(
        alignment: Alignment.bottomRight,
        children: [
          Container(
            width: 60.0,
            height: 60.0,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                fit: BoxFit.fill,
                image: NetworkImage(
                    "https://instagram.fixm2-1.fna.fbcdn.net/v/t51.2885-19/s150x150/46579214_1978053062489126_309147532603162624_n.jpg?_nc_ht=instagram.fixm2-1.fna.fbcdn.net&_nc_ohc=MJgSHqbtAO0AX9XlTBJ&tp=1&oh=4d38b28fd1c2916e8dfb38e3a2abcfd0&oe=6031CAA8"),
              ),
            ),
            margin: EdgeInsets.symmetric(
              horizontal: 10.0,
            ),
          ),
          index == 0
              ? Positioned(
                  right: 10.0,
                  child: CircleAvatar(
                    radius: 10.0,
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                      backgroundColor: Colors.blueAccent,
                      radius: 8.0,
                      child: Icon(
                        Icons.add,
                        size: 14.0,
                        color: Colors.white,
                      ),
                    ),
                  ))
              : Container(),
        ],
      ),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: [
          stories,
        ],
      ),
    );
  }
}
