import 'package:flutter/material.dart';

class MySlider extends StatelessWidget {
  late Function fn;
  int value;
  MySlider({required this.fn, required this.value});

  @override
  Widget build(BuildContext context) {
    print("Value Received from parent $value");
    return Slider(
      value: value.toDouble(),
      onChanged: (double value) {
        fn(value.round().toInt());
      },
      min: 1,
      max: 12,
    );
  }
}
