import 'package:flutter/material.dart';

class OutputBox extends StatelessWidget {
  String data;
  OutputBox({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 50,
        width: 300,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
              child: Align(
            child: Text(data),
            alignment: Alignment.center,
          )),
        ),
        decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            color: Colors.blue.shade100,
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            border: Border.all(color: Colors.black)),
      ),
    );
  }
}
