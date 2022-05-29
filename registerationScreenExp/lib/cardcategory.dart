import 'package:flutter/material.dart';

class cardcategory extends StatelessWidget {
  // const ({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // gradient: LinearGradient(
        //         colors: [Colors.blue, Colors.black38, Colors.blueAccent],
        //         begin: Alignment.topLeft,
        //         end: Alignment.bottomRight)),
        backgroundColor: Colors.purple,
        leading: Icon(Icons.arrow_back),
        title: Center(
          child: Text(
            "categories",
            style: TextStyle(color: Colors.white),
          ),
        ),
        actions: [
          Icon(
            Icons.search_outlined,
            color: Colors.white,
          ),
        ],
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 2,
            child: Row(
              children: <Widget>[
                Card(
                    child: Column(children: <Widget>[
                  Image.network(
                      "https://media.istockphoto.com/photos/fruit-pile-isolated-on-white-picture-id481194973?k=20&m=481194973&s=612x612&w=0&h=JeV2ZIxrFHse7W5KxLqVNDaALr41gB_VsVBopjtkC3U="),
                  Text("vegtable")
                ])),
                Card(
                    child: Column(children: <Widget>[
                  Image.network(
                      "https://media.istockphoto.com/photos/fruit-pile-isolated-on-white-picture-id481194973?k=20&m=481194973&s=612x612&w=0&h=JeV2ZIxrFHse7W5KxLqVNDaALr41gB_VsVBopjtkC3U="),
                  Text("vegtable")
                ])),
                Card(
                    child: Column(children: <Widget>[
                  Image.network(
                      "https://media.istockphoto.com/photos/fruit-pile-isolated-on-white-picture-id481194973?k=20&m=481194973&s=612x612&w=0&h=JeV2ZIxrFHse7W5KxLqVNDaALr41gB_VsVBopjtkC3U="),
                  Text("vegtable")
                ])),
              ],
            ),
          )
        ],
      ),
    );
  }
}
