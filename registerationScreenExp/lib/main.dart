import 'package:flutter/material.dart';
import 'package:grocery_col_row/registration_screen.dart';

// JSMJ
// aastha-19csu003
void main() {
  //Material App -class -support material theming
  //cupertino -ios theme
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    // home: SafeArea(child: Text("hello")),
    home: FormScreen(),
  ));
}
