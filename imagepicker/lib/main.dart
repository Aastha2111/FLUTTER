import 'package:flutter/material.dart';
import 'package:simplebox/image_picker.dart';

//astha-19csu003
//JSMJ
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Center(
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.pink,
        ),
        home: const MyHomePage(title: ''),
      ),
    );
  }
}
