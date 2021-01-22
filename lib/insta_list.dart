import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:insta_clone_model/insta_stories.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:video_player/video_player.dart';

class InstaList extends StatefulWidget {
  @override
  _InstaListState createState() => _InstaListState();
}

class _InstaListState extends State<InstaList> {
  bool heart = false;
  bool heartLike = false;
  bool bookmark = true;
  @override
  Widget build(BuildContext context) {
    var dev_size = MediaQuery.of(context).size;
    return ListView.builder(
      itemCount: 9,
      itemBuilder: (context, index) => index == 0
          ? SizedBox(
              height: dev_size.height * 0.12,
              child: Stories(),
            )
          : Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(
                    10.0,
                    16.0,
                    8.0,
                    16.0,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 30.0,
                            height: 30.0,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                fit: BoxFit.fill,
                                image: NetworkImage(
                                    "https://instagram.fixm2-1.fna.fbcdn.net/v/t51.2885-19/s150x150/46579214_1978053062489126_309147532603162624_n.jpg?_nc_ht=instagram.fixm2-1.fna.fbcdn.net&_nc_ohc=MJgSHqbtAO0AX9XlTBJ&tp=1&oh=4d38b28fd1c2916e8dfb38e3a2abcfd0&oe=6031CAA8"),
                              ),
                            ),
                            margin: EdgeInsets.symmetric(
                              horizontal: 8.0,
                            ),
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Text(
                            "manjunathan_c",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                      IconButton(
                        icon: Icon(Icons.more_vert),
                        onPressed: () {},
                      )
                    ],
                  ),
                ),
                Flexible(
                  fit: FlexFit.loose,
                  child: InkWell(
                    child: Image.network(
                      "https://instagram.fixm2-1.fna.fbcdn.net/v/t51.2885-15/e35/47173282_271999800148654_5654151928293062152_n.jpg?_nc_ht=instagram.fixm2-1.fna.fbcdn.net&_nc_cat=110&_nc_ohc=YhgFEx0HLqEAX_HJ9Gr&tp=1&oh=dbbfc9b9f319ac01d948342d6bbd600b&oe=6033BD73",
                      fit: BoxFit.cover,
                    ),
                    onDoubleTap: () {
                      setState(() {
                        heart = true;
                      });
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 10.0,
                    right: 10.0,
                  ),
                  child: Divider(
                    height: 30.0,
                    color: Colors.black12,
                    thickness: 0,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          icon: heart
                              ? Icon(
                                  FontAwesomeIcons.solidHeart,
                                  color: Colors.red,
                                )
                              : Icon(
                                  FontAwesomeIcons.heart,
                                ),
                          onPressed: () {
                            setState(() {
                              heart = !heart;
                            });
                          },
                          iconSize: 20.0,
                          color: Colors.black,
                        ),
                        IconButton(
                          icon: Icon(FontAwesomeIcons.comment),
                          onPressed: () {},
                          iconSize: 20.0,
                          //color: Colors.black,
                        ),
                        IconButton(
                          icon: Icon(FontAwesomeIcons.paperPlane),
                          onPressed: () {},
                          iconSize: 20.0,
                          color: Colors.black,
                        ),
                      ],
                    ),
                    IconButton(
                      icon: bookmark
                          ? Icon(FontAwesomeIcons.bookmark)
                          : Icon(FontAwesomeIcons.solidBookmark),
                      onPressed: () {
                        setState(() {
                          bookmark = !bookmark;
                        });
                      },
                      iconSize: 20.0,
                      color: Colors.black,
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text(
                    "Liked by manjunathan_c and 32 others",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text(
                            "manjunathan_c",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Text(
                            "hi",
                            style: TextStyle(
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ],
                      ),
                      IconButton(
                        icon: heartLike
                            ? Icon(
                                FontAwesomeIcons.solidHeart,
                                color: Colors.red,
                              )
                            : Icon(
                                FontAwesomeIcons.heart,
                              ),
                        onPressed: () {
                          setState(() {
                            heartLike = !heartLike;
                          });
                        },
                        iconSize: 10.0,
                        color: Colors.black,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8.0,
                  ),
                  child: Text(
                    "View all 2 comments",
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          width: 30.0,
                          height: 30.0,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              fit: BoxFit.fill,
                              image: NetworkImage(
                                  "https://instagram.fixm2-1.fna.fbcdn.net/v/t51.2885-19/s150x150/46579214_1978053062489126_309147532603162624_n.jpg?_nc_ht=instagram.fixm2-1.fna.fbcdn.net&_nc_ohc=MJgSHqbtAO0AX9XlTBJ&tp=1&oh=4d38b28fd1c2916e8dfb38e3a2abcfd0&oe=6031CAA8"),
                            ),
                          ),
                          margin: EdgeInsets.symmetric(
                            horizontal: 8.0,
                          ),
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Container(
                          width: 150.0,
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: "Add a comment...",
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ],
                    ),
                    //Text("Hi"),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text(
                    "November 20,2018",
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 10.0,
                    ),
                  ),
                ),
              ],
            ),
    );
  }
}
