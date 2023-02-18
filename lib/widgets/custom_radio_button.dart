import 'package:flutter/material.dart';

class CustomRB extends StatefulWidget {
  const CustomRB({super.key, required this.index, required this.text});
  final int index;
  final String text;

  @override
  State<CustomRB> createState() => _CustomRBState();
}

class _CustomRBState extends State<CustomRB> {
  // Widget CustomRadioButton(String text, int index) {}
  int value = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 90,
      child: OutlinedButton.icon(
        onPressed: () {
          setState(() {
            value == widget.index;
          });
        },
        icon: Icon(Icons.looks_one),
        label: Text(widget.text),
        style: OutlinedButton.styleFrom(
            foregroundColor: Colors.white,
            backgroundColor: Color.fromARGB(35, 255, 255, 255),
            side: BorderSide(color: Colors.white, width: (value == widget.index) ? 2 : 5)),
      ),
    );
  }
}
