import 'package:flutter/material.dart';

class CustomRowWidget extends StatelessWidget {
  final String labelText1;
  final TextEditingController textController1;
  final String labelText2;
  // final String? dropdownValue;
  // final ValueChanged<String?> onDropdownChanged;
  final String labelText3;
  final TextEditingController textController2;
  final List<String> items;
  final String selectedItem;
  final ValueChanged<String?>? onChanged;

  CustomRowWidget({
    required this.labelText1,
    required this.textController1,
    required this.labelText2,
    // this.dropdownValue,
    // required this.onDropdownChanged,
    required this.onChanged,
    required this.labelText3,
    required this.textController2,
    required this.items,
    required this.selectedItem,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 15,
      width: MediaQuery.of(context).size.width / 1.8,
      // constraints: BoxConstraints(maxWidth: double.infinity), // Added maxWidth constraint
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.min, // Set to MainAxisSize.min
        children: [
          Text(labelText1),
          //SizedBox(width: 10),
          Container(
            height: MediaQuery.of(context).size.height / 20,
            width: MediaQuery.of(context).size.width / 25,
            child: TextField(
              controller: textController1,
              decoration: InputDecoration(
                  labelText: '',
                  // Set border for enabled state (default)
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(width: 1, color: Colors.black),
                    //borderRadius: BorderRadius.circular(15),
                  ),
                  // Set border for focused state
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(width: 1, color: Colors.red),
                    //borderRadius: BorderRadius.circular(15),
                  )),
            ),
          ),
          SizedBox(width: 10),
          Text(labelText2),
          //SizedBox(width: 10),
          ///drop down
          Container(
            height: MediaQuery.of(context).size.width / 50,
            width: MediaQuery.of(context).size.height / 5,
            padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width / 80),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey), // Border decoration
              borderRadius: BorderRadius.circular(2.0), // Rounded corners
            ),
            child: DropdownButtonHideUnderline(
              child: DropdownButton<String>(
                value: selectedItem,
                onChanged: onChanged,
                items: items.map((String item) {
                  return DropdownMenuItem<String>(
                    value: item,
                    child: Text(item),
                  );
                }).toList(),
              ),
            ),
          ),
          Text(labelText3),
          SizedBox(width: 10),
          Container(
            height: MediaQuery.of(context).size.height / 20,
            width: MediaQuery.of(context).size.width / 25,
            child: TextField(
              controller: textController2,
              decoration: InputDecoration(
                  labelText: '',
                  // Set border for enabled state (default)
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(width: 1, color: Colors.black),
                    // borderRadius: BorderRadius.circular(15),
                  ),
                  // Set border for focused state
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(width: 1, color: Colors.red),
                    //borderRadius: BorderRadius.circular(15),
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
