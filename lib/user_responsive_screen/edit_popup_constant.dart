import 'package:flutter/material.dart';

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
      height: MediaQuery.of(context).size.height/ 15,
     width: MediaQuery.of(context).size.width/ 1.7,
     // constraints: BoxConstraints(maxWidth: double.infinity), // Added maxWidth constraint
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        mainAxisSize: MainAxisSize.min, // Set to MainAxisSize.min
        children: [
          Text(labelText1),
          SizedBox(width: MediaQuery.of(context).size.width / 60,),
          Container(
            height: MediaQuery.of(context).size.height / 20,
            width: MediaQuery.of(context).size.width / 12,
            child: TextField(
              controller: textController1,
              decoration: InputDecoration(
                  labelText: '',
                  // Set border for enabled state (default)
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                        width: 1, color: Colors.black),
                    //borderRadius: BorderRadius.circular(15),
                  ),
                  // Set border for focused state
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                        width: 1, color: Colors.red),
                    //borderRadius: BorderRadius.circular(15),
                  )),
            ),
          ),
          SizedBox(width: MediaQuery.of(context).size.width / 30,),
          Text(labelText2),
          SizedBox(width: MediaQuery.of(context).size.width / 60,),
          Container(
            height: MediaQuery.of(context).size.height/20,
            //width: MediaQuery.of(context).size.width / 100,
            child: DropdownButton<String>(
              value: dropdownValue,
              onChanged: onDropdownChanged,
              items: <String>['Option 1', 'Option 2', 'Option 3']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
          ),
          SizedBox(width: MediaQuery.of(context).size.width / 30,),
          Text(labelText3),
          SizedBox(width: MediaQuery.of(context).size.width / 60,),
          Container(
            height: MediaQuery.of(context).size.height / 20,
            width: MediaQuery.of(context).size.width / 12,
            child: TextField(
              controller: textController2,
              decoration: InputDecoration(
                  labelText: '',
                  // Set border for enabled state (default)
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                        width: 1, color: Colors.black),
                   // borderRadius: BorderRadius.circular(15),
                  ),
                  // Set border for focused state
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                        width: 1, color: Colors.red),
                    //borderRadius: BorderRadius.circular(15),
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
