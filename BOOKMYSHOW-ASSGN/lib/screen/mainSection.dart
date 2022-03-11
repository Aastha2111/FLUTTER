import 'dart:ui';

import 'package:bookmyshow/models/m_poster.dart';
import 'package:bookmyshow/repo/poster_operation.dart';
import 'package:flutter/material.dart';

class mainsection extends StatelessWidget {
  // const mainsection({Key? key}) : super(key: key);

  List<m_poster> posts = [];
  //view ke constructor mei operation ka instance call kro to get data [vo ek hi object call hoga har time -due TO SINGLETON]
  //jab mainsection ka const call hoga toh data bhi aa jaye
  mainsection() {
    poster_operation opr =
        poster_operation.getInstance(); //????? static kyu krna cha rha hai?
    posts = opr.getposter();
  }

  @override
  Widget build(BuildContext context) {
    // String name = "DDLJ";
    // String lang = "hindi";
    // String votes = "2930";
    // String like_perc = "12";
    // String m_type = "U"; // ? while printing only string???
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: _card(),
        ),
      ),

      // child: ListView.builder(
      // itemBuilder:()),
    );
  }

  List<Widget> _card() {
    List<Widget> lst = posts.map((post) {
      return Padding(
        padding: const EdgeInsets.only(top: 8.0, right: 8.0, left: 8.0),
        child: Card(
          elevation: 2,
          child: Column(
            //?? errror - whe use expanded and flex
            children: <Widget>[
              Container(
                //movie poster
                child: Stack(
                  children: <Widget>[
                    Image.network(
                      post.m_URL,
                      // "https://i.ebayimg.com/images/g/lVMAAOSwhQheYrmk/s-l300.jpg",
                      // "https://prakashgowda.files.wordpress.com/2017/05/hindi-medium-movie-poster.jpg",
                      // "https://d2kektcjb0ajja.cloudfront.net/images/posts/feature_images/000/000/072/large-1466557422-feature.jpg?1466557422",
                      fit: BoxFit.fitWidth,
                    ),
                    Positioned(
                      bottom: 20,
                      right: 15,
                      child: Container(
                        height: 75,
                        width: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            color: Colors.black45),
                        child: Padding(
                          padding: const EdgeInsets.all(9.0),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Row(
                                  children: [
                                    Icon(
                                      Icons.favorite,
                                      color: Colors.red,
                                      size: 20,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(2.0),
                                      child: Text(
                                        post.like_perc + "%",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w700,
                                            fontSize: 22),
                                      ),
                                    ),
                                  ],
                                ),
                                Text(
                                  post.votes + " votes",
                                  // overflow: TextOverflow.ellipsis, // to skip the content that overflows
                                  style: TextStyle(
                                      fontWeight: FontWeight.w100,
                                      fontSize: 15,
                                      color: Colors.white),
                                )
                              ]),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 25,
                      left: 15,
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.white, width: 2),
                            shape: BoxShape.circle,
                            color: Colors.black45),
                        child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Align(
                              // way to align widget in center //alternate to the mainAxisAlignment
                              alignment: Alignment.center,
                              child: Container(
                                child: Text(
                                  post.m_type,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            )),
                      ),
                    ),
                    Positioned(
                      top: 0,
                      left: 0,
                      child: Container(
                        height: 35,
                        width: 60,
                        child: Align(
                          //best way to align child in center
                          alignment: Alignment.center,
                          child: Text(
                            "New",
                            // textAlign: TextAlign.center, //?? ye text  center mei nhi ho rha
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        decoration: BoxDecoration(
                          color: Colors.green,
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.only(
                              // only assgining some corner radius
                              topRight: Radius.circular(2),
                              bottomRight: Radius.circular(2),
                              bottomLeft: Radius.circular(2)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black38,
                              offset: Offset(0.0, 1.0), //(x,y)
                              blurRadius: 1.0,
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                //movie info
                child: Padding(
                  padding: const EdgeInsets.only(
                      bottom: 8.0, top: 8.0, right: 19.0, left: 12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(bottom: 8),
                              child: Text(
                                post.m_name,
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  post.m_lang,
                                  style: TextStyle(fontWeight: FontWeight.w200),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Container(
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        top: 3, bottom: 3, right: 6, left: 6),
                                    child: Text(
                                      "2D",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w200),
                                    ),
                                  ),
                                  decoration: BoxDecoration(
                                    shape: BoxShape.rectangle,
                                    border: Border.all(
                                        color: Colors.grey, width: 0.9),
                                    borderRadius: BorderRadius.circular(2),
                                  ),
                                ),
                                SizedBox(
                                  //???? this box is used to shift the lang in left
                                  width: 35,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: Text("BOOK"),
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xFFFE335C),
                          onPrimary: Colors.white,
                          // shadowColor: Colors.red,
                          elevation: 1,
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      );
    }).toList();
    return lst;
  }
}
