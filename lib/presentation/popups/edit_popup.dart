import 'package:flutter/material.dart';

class EditPopup extends StatefulWidget {
  const EditPopup({Key? key}) : super(key: key);

  @override
  State<EditPopup> createState() => _EditPopupState();
}

class _EditPopupState extends State<EditPopup> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Material(
        child: Container(
          color: Colors.white,
          height: MediaQuery.of(context).size.height / 1.2,
          width: MediaQuery.of(context).size.width / 1.5,
          child: Padding(
            padding: EdgeInsets.all(
              MediaQuery.of(context).size.height / 80,
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("Order No: 123456789",
                        style: TextStyle(color: Color(0xff004181))),
                    Text("Opration:Boring(234)",
                        style: TextStyle(color: Color(0xff004181))),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height / 50,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        children: [
                          Text("Pending Qty"),
                          Container(
                            height: 35,
                            width: 55,
                            child: TextField(
                              decoration: InputDecoration(
                                  labelText: '',
                                  // Set border for enabled state (default)
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                        width: 1, color: Colors.black),
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  // Set border for focused state
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                        width: 1, color: Colors.red),
                                    borderRadius: BorderRadius.circular(15),
                                  )),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.height / 50,
                      ),
                      Column(
                        children: [
                          Text("Rework"),
                          Container(
                            height: 35,
                            width: 55,
                            child: TextField(
                              decoration: InputDecoration(
                                  labelText: '',
                                  // Set border for enabled state (default)
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                        width: 1, color: Colors.black),
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  // Set border for focused state
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                        width: 1, color: Colors.red),
                                    borderRadius: BorderRadius.circular(15),
                                  )),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.height / 50,
                      ),
                      Column(
                        children: [
                          Text("Rejection"),
                          Container(
                            height: 35,
                            width: 55,
                            child: TextField(
                              decoration: InputDecoration(
                                  labelText: '',
                                  // Set border for enabled state (default)
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                        width: 1, color: Colors.black),
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  // Set border for focused state
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                        width: 1, color: Colors.red),
                                    borderRadius: BorderRadius.circular(15),
                                  )),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
