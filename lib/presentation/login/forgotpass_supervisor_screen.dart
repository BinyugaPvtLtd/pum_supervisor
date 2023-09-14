import 'package:flutter/material.dart';
import 'package:pum_supervisor/presentation/login/thankyou_supervisor_screen.dart';
import '../../resources/color_manager.dart';
import '../../resources/font_manager.dart';
import '../../resources/string_manager.dart';
import '../../resources/value_manager.dart';

class ForgetScreenSupervisor extends StatefulWidget {
  const ForgetScreenSupervisor({Key? key}) : super(key: key);

  @override
  State<ForgetScreenSupervisor> createState() => _ForgetScreenSupervisorState();
}

class _ForgetScreenSupervisorState extends State<ForgetScreenSupervisor> {
  FocusNode fieldOne = FocusNode();
  FocusNode fieldTow = FocusNode();
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
          child: SingleChildScrollView(
            child: Container(
              //color: Color.fromARGB(255, 211, 206, 206),
              height: AppSize.s500,
              width: AppSize.s500,
              decoration: BoxDecoration(
                color: ColorManager.faintgreybg,
                borderRadius: const BorderRadius.all(Radius.circular(10)),
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                    left: AppPadding.p50,
                    right: AppPadding.p50,
                    top: AppPadding.p30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Forget \nPassword ?',
                      style: TextStyle(
                        fontFamily: FontConstants.fontFamily1,
                        fontSize: FontSize.s36,
                        fontWeight: FontWeightManager.bold,
                        color: ColorManager.navyblue,
                      ),
                    ),
                    const SizedBox(
                      height: AppSize.s50,
                    ),
                    Form(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            AppString.email,
                            style: TextStyle(
                                fontFamily: FontConstants.fontFamily2,
                                color: ColorManager.faintgrey,
                                fontWeight: FontWeightManager.medium,
                                fontSize: FontSize.s15_25),
                          ),
                          const SizedBox(
                            height: AppSize.s10,
                          ),
                          TextFormField(
                            // controller: _adminemailController,
                              keyboardType: TextInputType.emailAddress,
                              textInputAction: TextInputAction.next,
                              decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Colors.white,
                                  prefixIcon: Icon(
                                    Icons.alternate_email_outlined,
                                    color: ColorManager.lightblue,
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: ColorManager.lightblue,
                                          width: 2.0),
                                      borderRadius: BorderRadius.circular(16)
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: ColorManager.grey, width: 2.0),
                                      borderRadius: BorderRadius.circular(16)

                                  )),
                              validator: (value) {
                                final bool emailValid = RegExp(
                                    r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                    .hasMatch(value!);

                                if (value!.isEmpty) {
                                  return AppString.Enteremail;
                                } else if (!emailValid) {
                                  return AppString.Entervalidemail;
                                }
                              }),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: AppSize.s16,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(right: AppPadding.p20),
                          child: Text.rich(TextSpan(
                              text: AppString.forgotsubtitle11,
                              style: TextStyle(
                                  fontSize: FontSize.s11,
                                  fontFamily: FontConstants.fontFamily2,
                                  fontWeight: FontWeightManager.regular,
                                  color: ColorManager.faintgrey),
                              children: <InlineSpan>[
                                TextSpan(
                                  text: AppString.request,
                                  style: TextStyle(
                                      fontSize: FontSize.s11,
                                      fontFamily: FontConstants.fontFamily2,
                                      fontWeight: FontWeightManager.bold,
                                      color: ColorManager.grey),
                                )
                              ])),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: AppSize.s80,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: AppSize.s80),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: AppSize.s36,
                            width: AppSize.s210,
                            child: ElevatedButton(
                              focusNode: fieldTow,
                              onPressed: () {
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          ThankyouscreenSupervisor()),
                                );
                              },
                              child: Text(
                                'Request',
                                style: TextStyle(
                                    fontFamily: FontConstants.fontFamily2,
                                    fontWeight: FontWeightManager.bold,
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
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
