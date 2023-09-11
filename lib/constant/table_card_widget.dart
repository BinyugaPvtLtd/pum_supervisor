import 'package:flutter/material.dart';

typedef OnTapCallBack = void Function();

class TableCardWidget extends StatelessWidget {
  const TableCardWidget({Key? key, required this.fields, required this.onClick})
      : super(key: key);
  final List<Widget> fields;
  final OnTapCallBack onClick;

  @override
  Widget build(BuildContext context) {
    //bool isBlock = true;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
      child: InkWell(
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        onTap: () {
          onClick();
        },
        child: Material(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          elevation: 4,
          child: Container(
            decoration: BoxDecoration(
              //color: isBlock ? Colors.grey : Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: fields.map((e) {
                return Expanded(flex: 1, child: e);
              }).toList(),
            ),
          ),
        ),
      ),
    );
  }
}
