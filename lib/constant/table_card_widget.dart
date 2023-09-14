import 'package:flutter/material.dart';
import 'package:pum_supervisor/resources/color_manager.dart';

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
      child: Material(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        elevation: 4,
        child: Container(
          decoration: BoxDecoration(
            //color: isBlock ? Colors.grey : Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 20),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: fields.map((e) {
              return Expanded(child: e);
            }).toList(),
          ),
        ),
      ),
    );
  }
}

class ConfirmedTabelCardWidget extends StatelessWidget {
  const ConfirmedTabelCardWidget({Key? key, required this.fields, required this.onClick})
      : super(key: key);
  final List<Widget> fields;
  final OnTapCallBack onClick;

  @override
  Widget build(BuildContext context) {
    //bool isBlock = true;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
      child: Material(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        elevation: 4,
        child: Container(
          decoration: BoxDecoration(
            color:Colors.green.shade50,
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 20),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: fields.map((e) {
              return Expanded(child: e);
            }).toList(),
          ),
        ),
      ),
    );
  }
}
