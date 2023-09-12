import 'package:flutter/material.dart';

class TableFormWidget extends StatelessWidget {
  String texttitle;
  String texttitle2;
  String texttitle3;
  final List<String> items;
  final String selectedItem;

  final ValueChanged<String?>? onChanged;
  TableFormWidget({
    required this.texttitle,
    required this.texttitle2,
    required this.texttitle3,
    required this.items,
    required this.selectedItem,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: MediaQuery.of(context).size.height / 30,
        // left: MediaQuery.of(context).size.height / 70,
      ),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(texttitle,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xff000000),
                )),
            SizedBox(
              width: MediaQuery.of(context).size.height / 20,
            ),

            ///textfield
            Container(
              height: MediaQuery.of(context).size.width / 50,
              width: MediaQuery.of(context).size.height / 5,
              child: TextField(
                textAlignVertical: TextAlignVertical.center,
                textAlign: TextAlign.left,
                cursorHeight: 16,
                autofocus: true,
                decoration: InputDecoration(
                    labelText: '',
                    // Set border for enabled state (default)
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(width: 1, color: Colors.black),
                      // borderRadius: BorderRadius.circular(10),
                    ),
                    // Set border for focused state
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(width: 1, color: Colors.red),
                      // borderRadius: BorderRadius.circular(10),
                    )),
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.height / 10,
            ),
            Text(texttitle2,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xff000000),
                )),
            SizedBox(
              width: MediaQuery.of(context).size.height / 90,
            ),

            ///dropdown

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
            SizedBox(
              width: MediaQuery.of(context).size.height / 8,
            ),
            Text(texttitle3,
                style: TextStyle(
                  color: Color(0xff000000),
                )),
            SizedBox(
              width: MediaQuery.of(context).size.height / 90,
            ),

            ///textfield
            Container(
              height: MediaQuery.of(context).size.width / 50,
              width: MediaQuery.of(context).size.height / 5,
              child: TextField(
                cursorHeight: 16,
                autofocus: true,
                decoration: InputDecoration(
                    labelText: '',
                    // Set border for enabled state (default)
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(width: 1, color: Colors.black),
                      // borderRadius: BorderRadius.circular(10),
                    ),
                    // Set border for focused state
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(width: 1, color: Colors.red),
                      // borderRadius: BorderRadius.circular(10),
                    )),
              ),
            ),
          ]),
    );
  }
}
