import 'package:flutter/material.dart';

class TitleTextWidget extends StatelessWidget {
  String text1;
  String text2;
  TitleTextWidget({required this.text1, required this.text2});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(text1, style: TextStyle(color: Color(0xff004181))),
        Text(text2, style: TextStyle(color: Color(0xff004181))),
      ],
    );
  }
}
