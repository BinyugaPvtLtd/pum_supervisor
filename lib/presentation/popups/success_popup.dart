import 'package:flutter/material.dart';
import 'package:pum_supervisor/resources/color_manager.dart';
import 'package:pum_supervisor/resources/font_manager.dart';

class SuccessPopup extends StatelessWidget {
  const SuccessPopup({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Material(
        child: Container(
          color: ColorManager.white,
          height: MediaQuery.of(context).size.height / 3.7,
          width: MediaQuery.of(context).size.width / 3.3,
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: ListView(children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Success Message / Error Message',
                    style: TextStyle(
                        fontFamily: FontConstants.fontFamily2,
                        fontWeight: FontWeightManager.bold,
                        fontSize: MediaQuery.of(context).size.width / 60,
                        color: ColorManager.black),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 35,
                  ),
                  Text(
                    'Message Details',
                    style: TextStyle(
                        fontFamily: FontConstants.fontFamily2,
                        fontWeight: FontWeightManager.regular,
                        fontSize: MediaQuery.of(context).size.width / 70,
                        color: ColorManager.black),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height / 23,
                        width: MediaQuery.of(context).size.width / 10,
                        child: TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            style: TextButton.styleFrom(
                                backgroundColor: ColorManager.faintb),
                            child: Text(
                              'Back',
                              style: TextStyle(
                                  fontFamily: FontConstants.fontFamily2,
                                  fontWeight: FontWeightManager.bold,
                                  fontSize:
                                      MediaQuery.of(context).size.width / 70,
                                  color: ColorManager.white),
                            )),
                      )
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
