import 'package:flutter/material.dart';

class TableSubHeadingWidget extends StatelessWidget {
  String heading1;
  String heading2;
  String heading3;
  TableSubHeadingWidget(
      {required this.heading1, required this.heading2, required this.heading3});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: MediaQuery.of(context).size.height / 15,
        // left: MediaQuery.of(context).size.height / 70,
      ),
      child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
        Text(heading1,
            style: TextStyle(
                color: Color(0xff000000), fontWeight: FontWeight.bold)),
        SizedBox(
          width: MediaQuery.of(context).size.height / 3,
        ),
        Text(heading2,
            style: TextStyle(
                color: Color(0xff000000), fontWeight: FontWeight.bold)),
        SizedBox(
          width: MediaQuery.of(context).size.height / 3,
        ),
        Text(heading3,
            style: TextStyle(
                color: Color(0xff000000), fontWeight: FontWeight.bold)),
      ]),
    );
  }
}
