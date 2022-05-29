import 'package:flutter/material.dart';

class home extends StatelessWidget {
  // const home({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      body: Container(
        alignment: Alignment.bottomRight,
        height: 200,
        width: 150,
        child: Center(
          child: Text(
            "hello",
            style: TextStyle(color: Colors.white),
          ),
        ),
        decoration: BoxDecoration(
            // color: Colors.black,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.zero),
            border:
                Border(bottom: BorderSide(width: 2, color: Colors.lightBlue))),
      ),
    );
  }
}
