import 'dart:async';

import 'package:flutter/material.dart';

import '../resources/color_manager.dart';
import '../resources/font_manager.dart';

class CustomRowWidget extends StatelessWidget {
  final String labelText1;
  final TextEditingController textController1;
  final String labelText2;
  final String? dropdownValue;
  final ValueChanged<String?> onDropdownChanged;
  final String labelText3;
  final TextEditingController textController2;

  CustomRowWidget({
    required this.labelText1,
    required this.textController1,
    required this.labelText2,
    this.dropdownValue,
    required this.onDropdownChanged,

    required this.labelText3,
    required this.textController2,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Colors.grey,
      height: MediaQuery.of(context).size.height / 15,
      width: MediaQuery.of(context).size.width / 1.7,

      // constraints: BoxConstraints(maxWidth: double.infinity), // Added maxWidth constraint
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //mainAxisSize: MainAxisSize.min, // Set to MainAxisSize.min
        children: [
          Column(
            children: [
              Row(
                children: [
                  Text(labelText1,textAlign:TextAlign.start,style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width/100,
                      color: ColorManager.grey),),
                  SizedBox(width: MediaQuery.of(context).size.width / 50),
                  Container(
                    height: MediaQuery.of(context).size.height / 20,
                    width: MediaQuery.of(context).size.width / 10,
                    child: TextField(
                      controller: textController1,
                      decoration: InputDecoration(
                          labelText: '',
                          // Set border for enabled state (default)
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                const BorderSide(width: 1, color: Colors.black),
                            //borderRadius: BorderRadius.circular(15),
                          ),
                          // Set border for focused state
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                const BorderSide(width: 1, color: Colors.red),
                            //borderRadius: BorderRadius.circular(15),
                          )),
                    ),
                  ),
                ],
              )
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(labelText2,style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width/100,
                      color: ColorManager.grey),),
                  SizedBox(width: MediaQuery.of(context).size.width / 50),
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: ColorManager.black, width: 1),
                        //borderRadius: BorderRadius.circular(10)
                    ),
                    height: MediaQuery.of(context).size.height / 25,
                    width: MediaQuery.of(context).size.width / 11,
                    child: DropdownButton<String>(
                      value: dropdownValue,
                      underline: SizedBox(),
                      isExpanded: true,
                      icon: Icon(Icons.keyboard_arrow_down_outlined,),
                      //iconSize: 15,
                      onChanged: onDropdownChanged,
                      items: <String>['Option 1', 'Option 2', 'Option 3']
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value,style: TextStyle(fontFamily: FontConstants.fontFamily2,
                              fontWeight: FontWeightManager.bold,
                              color: ColorManager.black,
                              fontSize: MediaQuery.of(context).size.width / 110),),
                        );
                      }).toList(),
                    ),
                  ),
                ],
              )
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(labelText3,style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width/100,
                      color: ColorManager.grey),),
                  SizedBox(width: MediaQuery.of(context).size.width / 50),
                  Container(
                    height: MediaQuery.of(context).size.height / 20,
                    width: MediaQuery.of(context).size.width / 10,
                    child: TextField(
                      controller: textController2,
                      decoration: InputDecoration(
                          //labelText: '',
                          // Set border for enabled state (default)
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                const BorderSide(width: 1, color: Colors.black),
                            // borderRadius: BorderRadius.circular(15),
                          ),
                          // Set border for focused state
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                const BorderSide(width: 1, color: Colors.red),
                            //borderRadius: BorderRadius.circular(15),
                          )),
                    ),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
