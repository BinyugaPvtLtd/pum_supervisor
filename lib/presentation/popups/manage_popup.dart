import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pum_supervisor/resources/color_manager.dart';
import 'package:pum_supervisor/user_responsive_screen/manage_popup_constant.dart';

import '../../resources/font_manager.dart';

class ManagePopup extends StatefulWidget {
  const ManagePopup({Key? key}) : super(key: key);

  @override
  State<ManagePopup> createState() => _ManagePopupState();
}

class _ManagePopupState extends State<ManagePopup> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Material(
        child: Container(
          color: Colors.white,
          height: MediaQuery.of(context).size.height / 1,
          width: MediaQuery.of(context).size.width / 1.5,
          child: ScrollConfiguration(
            behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
            child: ListView(
                children:[ Padding(
                  padding: const EdgeInsets.all(27),
                  child: Column(
                    children: [
                      ///row 1
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text("Order No: 123456789",
                              style: GoogleFonts.inter(
                                color: ColorManager.navyblue,
                                fontSize: MediaQuery.of(context).size.width / 80,
                                fontWeight: FontWeight.w700,
                              )),
                        ],
                      ),

                      ///row 2, 3 text + 3 container
                      SizedBox(height: MediaQuery.of(context).size.height / 8),
                      Padding(
                        padding:  EdgeInsets.only(left: MediaQuery.of(context).size.width/50),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          //crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "Activities",
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  fontFamily: FontConstants.fontFamily2,
                                  color: ColorManager.black,
                                  fontWeight: FontWeightManager.bold,
                                  fontSize: MediaQuery.of(context).size.width/90),
                            ),
                            SizedBox(width: MediaQuery.of(context).size.width / 7),
                            Text(
                              "Downtime Code",
                              style: TextStyle(
                                  fontFamily: FontConstants.fontFamily2,
                                  color: ColorManager.black,
                                  fontWeight: FontWeightManager.bold,
                                  fontSize: MediaQuery.of(context).size.width/90),
                            ),
                            SizedBox(width: MediaQuery.of(context).size.width / 7),
                            Text(
                              "Downtime",
                              style: TextStyle(
                                  fontFamily: FontConstants.fontFamily2,
                                  color: ColorManager.black,
                                  fontWeight: FontWeightManager.bold,
                                  fontSize: MediaQuery.of(context).size.width/90),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: MediaQuery.of(context).size.height / 30),

                      CustomRowWidget(
                        labelText1: 'Process     ',
                        textController1: TextEditingController(),
                        labelText2: 'Downtime code 1',
                        dropdownValue: 'Option 1',
                        onDropdownChanged: (String? newValue) {
                          print('Dropdown value changed to: $newValue');
                        },
                        labelText3: 'Downtime  1',
                        textController2: TextEditingController(),
                      ),
                      CustomRowWidget(
                        labelText1: 'Contract    \nWelder  ',
                        textController1: TextEditingController(),
                        labelText2: 'Downtime code 2',
                        dropdownValue: 'Option 1',
                        onDropdownChanged: (String? newValue) {
                          print('Dropdown value changed to: $newValue');
                        },
                        labelText3: 'Downtime  2',
                        textController2: TextEditingController(),
                      ),

                      CustomRowWidget(
                        labelText1: 'Helper        ',
                        textController1: TextEditingController(),
                        labelText2: 'Downtime code 3',
                        dropdownValue: 'Option 1',
                        onDropdownChanged: (String? newValue) {
                          print('Dropdown value changed to: $newValue');
                        },
                        labelText3: 'Downtime  3',
                        textController2: TextEditingController(),
                      ),
                      CustomRowWidget(
                        labelText1: 'Permanent',
                        textController1: TextEditingController(),
                        labelText2: 'Downtime code 4',
                        dropdownValue: 'Option 1',
                        onDropdownChanged: (String? newValue) {
                          print('Dropdown value changed to: $newValue');
                        },
                        labelText3: 'Downtime  4',
                        textController2: TextEditingController(),
                      ),
                      CustomRowWidget(
                        labelText1: 'Piece Rate',
                        textController1: TextEditingController(),
                        labelText2: 'Downtime code 5',
                        dropdownValue: 'Option 1',
                        onDropdownChanged: (String? newValue) {
                          print('Dropdown value changed to: $newValue');
                        },
                        labelText3: 'Downtime  5',
                        textController2: TextEditingController(),
                      ),
                      Padding(
                        padding:  EdgeInsets.only(left: MediaQuery.of(context).size.width/48),
                        child: Row(
                          children: [
                            Text('Argon Gas',style: TextStyle(
                                fontSize: MediaQuery.of(context).size.width/100,
                                color: ColorManager.grey),),
                            SizedBox(width: MediaQuery.of(context).size.width / 50),
                            Container(
                              height: MediaQuery.of(context).size.height / 20,
                              width: MediaQuery.of(context).size.width / 10,
                              child: TextField(
                                controller: TextEditingController(),
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
                        ),
                      ),
                      SizedBox(height: MediaQuery.of(context).size.height / 5),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text(
                              'Cancel',
                              style: TextStyle(
                                  color: ColorManager.appbarcolor,
                                  fontFamily: FontConstants.fontFamily2,
                                  fontWeight: FontWeightManager.bold,
                                  fontSize: FontSize.s16),
                            ),
                          ),
                          SizedBox(width: 20),
                          SizedBox(
                            height: 35,
                            width: 150,
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: ColorManager.appbarcolor,
                              ),
                              child: Text(
                                'Save',
                                style: TextStyle(
                                    fontFamily: FontConstants.fontFamily2,
                                    color: ColorManager.white,
                                    fontWeight: FontWeightManager.bold,
                                    fontSize: FontSize.s15),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                ]),
          ),
        ),
      ),
    );
  }
}
