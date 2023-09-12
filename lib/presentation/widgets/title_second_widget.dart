import 'package:flutter/material.dart';

class TitleSecondWidget extends StatelessWidget {
  // String titltext1;
  // String titletext2;
  final String label;
  TitleSecondWidget(
      {
      // required this.titltext1,
      required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      // mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label),
        Container(
          height: 20,
          width: 80,
          child: TextField(
            cursorHeight: 16,
            decoration: InputDecoration(
                labelText: '$label',
                // Set border for enabled state (default)
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(width: 1, color: Colors.black),
                  // borderRadius: BorderRadius.circular(10),
                ),
                // Set border for focused state
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(width: 1, color: Colors.red),
                  // borderRadius: BorderRadius.circular(10),
                )),
          ),
        ),
      ],
    );
  }
}
