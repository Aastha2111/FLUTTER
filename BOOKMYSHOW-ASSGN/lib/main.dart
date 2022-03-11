// JSMJ
// 03/03/22 Lab task
//AASTHA-19CSU003
import 'package:bookmyshow/screen/home.dart';
import 'package:flutter/material.dart';

void main() {
  //Material App -class -support material theming
  //cupertino -ios theme
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    // home: SafeArea(child: Text("hello")),
    home: home(),
  ));
}
