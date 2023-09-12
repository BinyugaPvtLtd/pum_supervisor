import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pum_supervisor/resources/color_manager.dart';
import 'package:pum_supervisor/resources/value_manager.dart';
import 'package:pum_supervisor/user_responsive_screen/edit_popup_constant.dart';

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
                    Text("Opration:Boring(234)",
                        style: GoogleFonts.inter(
                          color: ColorManager.navyblue,
                          fontSize: MediaQuery.of(context).size.width / 85,
                          fontWeight: FontWeight.w700,
                        )),
                  ],
                ),

                ///row 2, 3 text + 3 container
                Padding(
                  padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height / 20,
                    left: MediaQuery.of(context).size.height / 30,
                  ),

                  ///row 2, 3 text + 3 container
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("Pending Qty",
                              textAlign: TextAlign.start,
                              style: GoogleFonts.inter(
                                color: ColorManager.black,
                                fontSize:
                                    MediaQuery.of(context).size.width / 100,
                                fontWeight: FontWeight.w400,
                              )),
                          Container(
                            height: MediaQuery.of(context).size.height / 18,
                            width: MediaQuery.of(context).size.width / 15,
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
                        width: MediaQuery.of(context).size.width / 50,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text("Rework",
                              style: GoogleFonts.inter(
                                color: ColorManager.black,
                                fontSize:
                                    MediaQuery.of(context).size.width / 100,
                                fontWeight: FontWeight.w400,
                              )),
                          Container(
                            height: MediaQuery.of(context).size.height / 18,
                            width: MediaQuery.of(context).size.width / 15,
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
                        width: MediaQuery.of(context).size.width / 50,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text("Rejection",
                              style: GoogleFonts.inter(
                                color: ColorManager.black,
                                fontSize:
                                    MediaQuery.of(context).size.width / 100,
                                fontWeight: FontWeight.w400,
                              )),
                          Container(
                            height: MediaQuery.of(context).size.height / 18,
                            width: MediaQuery.of(context).size.width / 15,
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
                ),
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
                    Text("Opration:Boring(234)",
                        style: GoogleFonts.inter(
                          color: ColorManager.navyblue,
                          fontSize: MediaQuery.of(context).size.width / 85,
                          fontWeight: FontWeight.w700,
                        )),
                  ],
                ),
                // CustomRowWidget(
                //   labelText: 'Label 1',
                //   textController: TextEditingController(),
                //   dropdownValue: 'Option 1',
                //   onDropdownChanged: (String? newValue) {
                //     if (newValue != null) {
                //       // Handle dropdown changes here
                //       print(newValue);
                //     }
                //   },
                // ),
                CustomRowWidget(
                  labelText1: 'Label 1',
                  textController1: TextEditingController(),
                  labelText2: 'Label 2',
                  dropdownValue: 'Option 1',
                  onDropdownChanged: (String? newValue) {
                    print('Dropdown value changed to: $newValue');
                  },
                  labelText3: 'Label 3',
                  textController2: TextEditingController(),
                ),
                CustomRowWidget(
                  labelText1: 'Label 1',
                  textController1: TextEditingController(),
                  labelText2: 'Label 2',
                  dropdownValue: 'Option 1',
                  onDropdownChanged: (String? newValue) {
                    print('Dropdown value changed to: $newValue');
                  },
                  labelText3: 'Label 3',
                  textController2: TextEditingController(),
                ),
                SizedBox(height: 10,),
                CustomRowWidget(
                  labelText1: 'Label 1',
                  textController1: TextEditingController(),
                  labelText2: 'Label 2',
                  dropdownValue: 'Option 1',
                  onDropdownChanged: (String? newValue) {
                    print('Dropdown value changed to: $newValue');
                  },
                  labelText3: 'Label 3',
                  textController2: TextEditingController(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
