import 'package:flutter/material.dart';
import '../../resources/color_manager.dart';
import '../../resources/font_manager.dart';
import '../../resources/string_manager.dart';
import '../../resources/value_manager.dart';
import 'login_supervisor.dart';

class ThankyouscreenSupervisor extends StatefulWidget {
  const ThankyouscreenSupervisor({Key? key}) : super(key: key);

  @override
  State<ThankyouscreenSupervisor> createState() =>
      _ThankyouscreenSupervisorState();
}

class _ThankyouscreenSupervisorState extends State<ThankyouscreenSupervisor> {
  FocusNode fieldOne = FocusNode();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor:ColorManager.navyblue,
        flexibleSpace: Padding(
          padding: const EdgeInsets.only(top: 5, left: 15),
          child: Row(
            children: [Image.asset('images/ummasons_logo.png',),],
          ),
        ),
      ),
      backgroundColor: ColorManager.navyblue,
      body: Center(
        child: Container(
          //color: Color.fromARGB(255, 211, 206, 206),
          height: AppSize.s500,
          width: AppSize.s500,
          decoration: BoxDecoration(
            color: ColorManager.white,
            borderRadius: const BorderRadius.all(Radius.circular(10)),
          ),
          child: Padding(
            padding: const EdgeInsets.only(
                left: AppPadding.p75,
                right: AppPadding.p75,
                top: AppPadding.p55),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        AppString.thanku,
                        style: TextStyle(
                          fontFamily: FontConstants.fontFamily1,
                          fontSize: FontSize.s36,
                          fontWeight: FontWeightManager.bold,
                          color: ColorManager.navyblue,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: AppSize.s60),
                  Row(
                    children: [
                      Text(
                        AppString.thankusubtitle1,
                        style: TextStyle(
                            fontFamily: FontConstants.fontFamily2,
                            color: ColorManager.faintgrey,
                            fontWeight: FontWeightManager.regular,
                            fontSize: FontSize.s14),
                      )
                    ],
                  ),
                  SizedBox(
                    height: AppSize.s25,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      // focusNode: fieldOne,
                      Text(
                        'Please Contact your admin for a new \npassword',
                        style: TextStyle(
                            fontFamily: FontConstants.fontFamily2,
                            fontSize: FontSize.s14,
                            color: ColorManager.grey,
                            fontWeight: FontWeightManager.bold),
                      )
                    ],
                  ),
                  SizedBox(
                    height: AppSize.s100,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: AppSize.s36,
                        width: AppSize.s210,
                        child: ElevatedButton(
                          autofocus: true,
                          focusNode: fieldOne,
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                  const LoginScreenSupervisor()),
                            );
                          },
                          child: Text(
                            'Done',
                            style: TextStyle(
                                fontFamily: FontConstants.fontFamily2,
                                fontWeight: FontWeightManager.regular,
                                color: ColorManager.white,
                                fontSize: FontSize.s16),
                          ),
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50),
                              ),
                              elevation: 2,
                              backgroundColor: ColorManager.appbarcolor),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
