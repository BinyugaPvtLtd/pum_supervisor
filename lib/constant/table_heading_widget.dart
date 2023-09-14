
import 'package:flutter/material.dart';
import 'package:pum_supervisor/resources/color_manager.dart';
import 'package:pum_supervisor/resources/value_manager.dart';


typedef void OnTap();

class TableHeadingWidget extends StatefulWidget {
  const TableHeadingWidget({Key? key, required this.fields}) : super(key: key);

  final List<Widget> fields;

  @override
  State<TableHeadingWidget> createState() => _TableHeadingWidgetState();
}

class _TableHeadingWidgetState extends State<TableHeadingWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(left:AppPadding.p8,right: AppPadding.p8),
      child: Container(
        decoration: BoxDecoration( color: ColorManager.faintb,
            borderRadius: BorderRadius.circular(13)),

        padding: EdgeInsets.symmetric(horizontal: 0, vertical: 2),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: widget.fields.map((e) {
            return e;
          }).toList(),
        ),
      ),
    );
  }
}
