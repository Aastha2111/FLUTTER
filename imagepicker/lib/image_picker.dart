import 'dart:io';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  File? image;

  Future pickImage() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.gallery);

      if (image == null) return;

      final imageTemp = File(image.path);

      setState(() => this.image = imageTemp);
    } on PlatformException catch (e) {
      print('Failed to pick image: $e');
    }
  }

  Future pickImageC() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.camera);

      if (image == null) return;

      final imageTemp = File(image.path);

      setState(() => this.image = imageTemp);
    } on PlatformException catch (e) {
      print('Failed to pick image: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Image Selector"),
        ),
        body: Center(
          child: FittedBox(
            child: Column(
              children: [
                FittedBox(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      MaterialButton(
                          color: Colors.pink,
                          child: const Text("Pick Image from Gallery",
                              style: TextStyle(
                                  color: Colors.white70,
                                  fontWeight: FontWeight.bold)),
                          onPressed: () {
                            pickImage();
                          }),
                      SizedBox(
                        height: 20,
                        width: 20,
                      ),
                      MaterialButton(
                          color: Colors.pink,
                          child: const Text("Pick Image from Camera",
                              style: TextStyle(
                                  color: Colors.white70,
                                  fontWeight: FontWeight.bold)),
                          onPressed: () {
                            pickImageC();
                          }),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
                Text("Aastha 19CSU003"),
                Container(
                  height: 400,
                  width: 400,
                  child: image != null
                      ? Image.file(image!)
                      : Text("Pick Your Image"),
                )
              ],
            ),
          ),
        ));
  }
}
