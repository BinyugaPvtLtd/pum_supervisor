import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pum_supervisor/resources/color_manager.dart';
import 'package:pum_supervisor/resources/font_manager.dart';

class EditPopup extends StatelessWidget {
  const EditPopup({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Material(
        child: Container(
          color: ColorManager.white,
          height: MediaQuery.of(context).size.height / 2.5,
          width: MediaQuery.of(context).size.width / 2,
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: ListView(
                children: [Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
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
                                  textAlignVertical: TextAlignVertical.center,
                                  style: TextStyle(fontSize: MediaQuery.of(context).size.width / 90,
                                      fontFamily: FontConstants.fontFamily2,
                                      fontWeight: FontWeightManager.semoBold,
                                      color: ColorManager.black),
                                  decoration: InputDecoration(
                                      labelText: '',
                                      // Set border for enabled state (default)
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                            width: 1, color: Colors.black),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      // Set border for focused state
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                            width: 1, color: Colors.red),
                                        borderRadius: BorderRadius.circular(10),
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
                                  textAlignVertical: TextAlignVertical.center,
                                  style: TextStyle(fontSize: MediaQuery.of(context).size.width / 90,
                                      fontFamily: FontConstants.fontFamily2,
                                      fontWeight: FontWeightManager.semoBold,
                                      color: ColorManager.black),
                                  decoration: InputDecoration(
                                      labelText: '',
                                      // Set border for enabled state (default)
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                            width: 1, color: Colors.black),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      // Set border for focused state
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                            width: 1, color: Colors.red),
                                        borderRadius: BorderRadius.circular(10),
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
                                  textAlignVertical: TextAlignVertical.center,
                                  style: TextStyle(fontSize: MediaQuery.of(context).size.width / 90,
                                  fontFamily: FontConstants.fontFamily2,
                                  fontWeight: FontWeightManager.semoBold,
                                  color: ColorManager.black),
                                  decoration: InputDecoration(
                                      labelText: '',
                                      // Set border for enabled state (default)
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                            width: 1, color: Colors.black),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      // Set border for focused state
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                            width: 1, color: Colors.red),
                                        borderRadius: BorderRadius.circular(10),
                                      )),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),),
                    SizedBox(height: MediaQuery.of(context).size.height / 9,),
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
                                fontSize: MediaQuery.of(context).size.width / 90),
                          ),
                        ),
                        SizedBox(width: 20),
                        SizedBox(
                          height: MediaQuery.of(context).size.height / 20,
                          width: MediaQuery.of(context).size.width / 10,
                          child: TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            style: TextButton.styleFrom(
                              backgroundColor: ColorManager.appbarcolor,
                            ),
                            child: Text(
                              'Save',
                              style: TextStyle(
                                  fontFamily: FontConstants.fontFamily2,
                                  color: ColorManager.white,
                                  fontWeight: FontWeightManager.bold,
                                  fontSize: MediaQuery.of(context).size.width / 90),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                ]),
          ),
        ),
      ),

    );
  }
}
