import 'package:flutter/material.dart';

class TextBox extends StatelessWidget {
  late String label;
  late IconData icon;
  late TextEditingController tc;
  late Function fn;
  TextBox({Key? key, required this.label, required this.icon, required this.tc})
      : super(key: key);
  setFunction(Function fn) {
    this.fn = fn;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: TextField(
        onChanged: (String value) {
          print("Value is $value");
          !fn(int.parse(value));
        },
        keyboardType: TextInputType.number,
        controller: tc,
        decoration: InputDecoration(
          suffixIcon: Icon(icon),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          label: Text(label),
          hintText: "Type $label",
        ),
      ),
    );
  }
}
