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
          height: MediaQuery.of(context).size.height / 3.5,
          width: MediaQuery.of(context).size.width / 3.3,
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: ListView(
              children: [Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Success Message / Error Message',
                    style: TextStyle(fontFamily: FontConstants.fontFamily2,
                        fontWeight: FontWeightManager.bold,
                        fontSize: MediaQuery.of(context).size.width / 80,
                        color: ColorManager.black),),
                  SizedBox(height: MediaQuery.of(context).size.height / 35,),
                  Text('Message Details',
                    style: TextStyle(fontFamily: FontConstants.fontFamily2,
                        fontWeight: FontWeightManager.regular,
                        fontSize: MediaQuery.of(context).size.width / 100,
                        color: ColorManager.black),),
                  SizedBox(height: MediaQuery.of(context).size.height / 15,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height / 23,
                        width: MediaQuery.of(context).size.width / 13,
                        child: ElevatedButton(onPressed: (){
                          Navigator.pop(context);
                        },
                            style: ElevatedButton.styleFrom(shape: StadiumBorder(),backgroundColor: ColorManager.faintb),
                            child: Text('Back',style: TextStyle(fontFamily: FontConstants.fontFamily2,
                            fontWeight: FontWeightManager.bold,
                            fontSize: MediaQuery.of(context).size.width / 90,
                            color: ColorManager.white),)),
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
