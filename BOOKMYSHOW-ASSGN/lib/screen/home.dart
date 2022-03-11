import 'package:bookmyshow/screen/mainSection.dart';
import 'package:flutter/material.dart';

class home extends StatelessWidget {
  const home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: _getappbar(),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              _topbar(),
              mainsection(),
            ],
          ),
        ),
      ),
    );
  }

  _getappbar() {
    return PreferredSize(
      //?? alternate to align the content on appbar verticle center??

      preferredSize: Size.fromHeight(70.0),
      child: AppBar(
        backgroundColor: Colors.black,
        elevation: 2,
        // appBar content ko vertically center ????????
        leading: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Icon(
            Icons.menu,
            color: Colors.white,
          ),
        ),
        title: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Row(
            children: <Widget>[
              _getButton("NOW SHOWING", Color(0xFFFE335C)),
              _getButton(
                  "COMING SOON",
                  Color(
                      0xFF4A4C5B)) //0x-> to show hexadecimal //FF for mentioning opacity
            ],
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8, top: 20),
            child: Icon(Icons.location_on, color: Colors.white),
          )
        ],
      ),
    );
  }

  _getButton(String s, Color c) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: c, // background
        onPrimary: Colors.white, // foreground
      ),
      // style: raisedButtonStyle,
      onPressed: () {},
      child: Text(s),
    );
  }

  _topbar() {
    return Container(
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: Colors.white,
          offset: Offset(0.0, 1.0), //(x,y)
          blurRadius: 0.2,
        ),
      ]),
      height: 60,
      child: Align(
        // to align the child in conatiner at center
        alignment: Alignment.center,
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      Icons.translate,
                    ),
                    SizedBox(
                      // preffer to give sizebox() if we want to give the space only in between 2 widget
                      //avoid giving the padding on this situation

                      width: 9,
                    ),
                    Text("All languages"),
                  ]),
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: VerticalDivider(
                  width: 20,
                  thickness: 1,
                  indent: 20,
                  endIndent: 0,
                  color: Colors.grey,
                ),
              ),
              Row(mainAxisAlignment: MainAxisAlignment.center,
                  // so that jab padding kre toh position khraab na ho
                  children: <Widget>[
                    Icon(
                      Icons.chair,
                      color: Color(0xFFFE335C),
                    ),
                    SizedBox(
                      width: 9,
                    ),
                    Text("Cinemas")
                  ]),
            ]),
      ),
    );
  }
}
