import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pum_supervisor/presentation/dashboard/add_order_screen.dart';
import 'package:pum_supervisor/presentation/dashboard/confirmed_order_screen.dart';
import 'package:pum_supervisor/presentation/dashboard/dashboardscreen.dart';
import 'package:pum_supervisor/resources/color_manager.dart';
import 'package:pum_supervisor/resources/font_manager.dart';
import 'package:pum_supervisor/resources/string_manager.dart';
import 'package:pum_supervisor/user_responsive_screen/user_enum.dart';

typedef OnUserBackButtonTapped();
class UserSideBar extends StatefulWidget {
  UserSideBar({super.key,
    required this.heading,
    required this.screen,
    required this.onBackButtonTapped,});
  final String heading;
  final OnUserBackButtonTapped onBackButtonTapped;
  final AppUserScreen screen;
  @override
  State<UserSideBar> createState() => _UserSideBarState();
}

class _UserSideBarState extends State<UserSideBar> {
  late AppUserScreen grpValue;
  bool expanded = false;
  bool click = true;
  bool pressed = false;
  @override
  void initState() {
    grpValue = widget.screen;
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const NeverScrollableScrollPhysics(),
      children: [
        ///sidebar head
        Container(
          //color: Colors.red,
          height: MediaQuery.of(context).size.width / 13,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                flex: 2,
                child: Padding(
                  padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.width / 40,
                    left: MediaQuery.of(context).size.width / 80,
                  ),
                  child: Text(
                    widget.heading,
                    style: GoogleFonts.montserrat(
                        color: ColorManager.faintblue,
                        fontWeight: FontWeightManager.bold,
                        // fontSize: AppSize.s36)
                        fontSize: MediaQuery.of(context).size.width / 64.1),
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          decoration: BoxDecoration(
            color: ColorManager.faintb,
            // border: Border.all(width: 5, color: Colors.red),
            //borderRadius: BorderRadius.only(topRight: Radius.circular(30)),
          ),
          height: MediaQuery.of(context).size.height / 0.2,
          padding: EdgeInsets.only(left: 10, top: 20, bottom: 20, right: 20),
          // color: ColorManager.primary,
          child: ListView(
            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ///dashboard
                  OPSideBarElement(
                    value: AppUserScreen.addItem,
                    groupValue: grpValue,
                    label: AppString.pendingorder,
                    onClick: (AppUserScreen appScreen) {
                      //setState(() {
                      if (grpValue != appScreen) {
                        grpValue = appScreen;
                        Navigator.pushReplacement(
                          context,
                          PageRouteBuilder(
                              transitionsBuilder: (_,
                                  Animation<double> animation,
                                  __,
                                  Widget child) {
                                return FadeTransition(
                                    opacity: animation, child: child);
                              },
                              pageBuilder: (BuildContext context, _, __) =>
                                  DashboardScreen()),
                        );
                      }
                      //});
                    },
                  ),

                  /// Confirmed Orders
                  OPSideBarElement(
                    //assetPath: "images/inventory_logo.png",
                    // Icon(
                    //   Icons.settings,
                    //   color: Colors.black,
                    // ),
                    // color: Colors.white,
                    value: AppUserScreen.confirmedOrders,
                    groupValue: grpValue,
                    label: AppString.confirmorder,
                    onClick: (AppUserScreen appScreen) {
                      //click = !click;

                      // setState(() {
                      if (grpValue != appScreen) {
                        grpValue = appScreen;
                        Navigator.pushReplacement(
                          context,
                          PageRouteBuilder(
                              transitionsBuilder: (_,
                                  Animation<double> animation,
                                  __,
                                  Widget child) {
                                return FadeTransition(
                                    opacity: animation, child: child);
                              },
                              pageBuilder: (BuildContext context, _, __) =>
                                  ConfirmedOrder()),
                        );
                      }
                      // });
                    },
                  ),
                  /// Add Order
                  OPSideBarElement(
                    //assetPath: "images/inventory_logo.png",
                    // Icon(
                    //   Icons.settings,
                    //   color: Colors.black,
                    // ),
                    // color: Colors.white,
                    value: AppUserScreen.addOrder,
                    groupValue: grpValue,
                    label: AppString.addorder,
                    onClick: (AppUserScreen appScreen) {
                      //click = !click;

                      // setState(() {
                      if (grpValue != appScreen) {
                        grpValue = appScreen;
                        Navigator.pushReplacement(
                          context,
                          PageRouteBuilder(
                              transitionsBuilder: (_,
                                  Animation<double> animation,
                                  __,
                                  Widget child) {
                                return FadeTransition(
                                    opacity: animation, child: child);
                              },
                              pageBuilder: (BuildContext context, _, __) =>
                                  AddOrderScreen()),
                        );
                      }
                      // });
                    },
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height / 2.8),

                  OPSideBarElement(
                    value: AppUserScreen.logout,
                    groupValue: grpValue,
                    label: 'Logout',
                    onClick: (AppUserScreen appScreen) async {
                      // final SharedPreferences
                      // sharedPreferences =
                      // await SharedPreferences.getInstance();
                      // sharedPreferences.setString(
                      //     'adminEmail', '');
                      // sharedPreferences.remove(
                      //     'adminEmail');
                      // _auth.signOut();
                      // // setState(() {
                      // if (grpValue != appScreen) {
                      //   loginData.setBool('login', true);
                      //   grpValue = appScreen;
                      //
                      //   Navigator.pushReplacement(
                      //     context,
                      //     PageRouteBuilder(
                      //         transitionsBuilder: (_,
                      //             Animation<double> animation,
                      //             __,
                      //             Widget child) {
                      //           return FadeTransition(
                      //               opacity: animation, child: child);
                      //         },
                      //         pageBuilder: (BuildContext context, _, __) =>
                      //             LoginScreenWeb()),
                      //   );
                      // }
                      // });
                    },
                  ),
                ],
              ),
              Container(
                // color: Colors.purpleAccent,
                height: MediaQuery.of(context).size.height - 180 > 460
                    ? MediaQuery.of(context).size.height - 180 - 200
                    : MediaQuery.of(context).size.height - 180 - 100,

                ///sidebar container add text
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          left: 10, top: 20, bottom: 20, right: 20),
                      child: Container(
                        padding: EdgeInsets.only(
                            left: 5, top: 5, bottom: 5, right: 5),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(flex: 1, child: Container()),
                            const SizedBox(
                              width: 10,
                            ),
                            Expanded(flex: 2, child: Container()
                              // Text("",
                              //     style: Theme.of(context)
                              //         .textTheme
                              //         .subtitle1
                              //         ?.copyWith(
                              //             color: Colors.red,
                              //             fontSize: MediaQuery.of(context)
                              //                     .size
                              //                     .width /
                              //                 80,
                              //             fontWeight: FontWeight.w700)
                              // ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    ///dashboard
                    expanded
                        ? OPSideBarElement(
                      // assetPath: "images/material_logo.png",
                      // Icon(
                      //   Icons.settings,
                      //   color: Colors.black,
                      // ),

                      value: AppUserScreen.material,
                      groupValue: grpValue,
                      label: "Text",
                      onClick: (AppUserScreen appScreen) {
                        // setState(() {
                        //   if (grpValue != appScreen) {
                        //     grpValue = appScreen;
                        //     Navigator.pushReplacement(
                        //       context,
                        //       PageRouteBuilder(
                        //           transitionsBuilder: (_,
                        //               Animation<double> animation,
                        //               __,
                        //               Widget child) {
                        //             return FadeTransition(
                        //                 opacity: animation, child: child);
                        //           },
                        //           pageBuilder:
                        //               (BuildContext context, _, __) =>
                        //                   const MaterialScreen()),
                        //     );
                        //   }
                        // });
                      },
                    )
                        : const SizedBox(
                      height: 1,
                    ),

                    ///user management
                    expanded
                        ? OPSideBarElement(
                      // assetPath: "images/storage_logo.png",
                      // Icon(
                      //   Icons.settings,
                      //   color: Colors.black,
                      // ),

                      value: AppUserScreen.storage,
                      groupValue: grpValue,
                      label: "Storage",
                      onClick: (AppUserScreen appScreen) {
                        // setState(() {
                        //   if (grpValue != appScreen) {
                        //     grpValue = appScreen;
                        //     Navigator.pushReplacement(
                        //       context,
                        //       PageRouteBuilder(
                        //           transitionsBuilder: (_,
                        //               Animation<double> animation,
                        //               __,
                        //               Widget child) {
                        //             return FadeTransition(
                        //                 opacity: animation, child: child);
                        //           },
                        //           pageBuilder:
                        //               (BuildContext context, _, __) =>
                        //                   StorageMasterScreen()),
                        //     );
                        //   }
                        // });
                      },
                    )
                        : const SizedBox(
                      height: 1,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
typedef OnTapSideBarElement(AppUserScreen appScreen);
class OPSideBarElement extends StatelessWidget {
   OPSideBarElement({super.key,
  required this.value,
    required this.groupValue,
    // required this.assetPath,
    required this.label,
    required this.onClick,
  });
   final AppUserScreen value;
   final AppUserScreen groupValue;
   final String label;
   final OnTapSideBarElement onClick;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 5, top: 20, bottom: 10, right: 10),
      child: GestureDetector(
        onTap: () {
          onClick(value);
        },
        child: Container(
          ///sidebar data border
          padding: const EdgeInsets.only(left: 5, top: 5, bottom: 5, right: 5),
          decoration: BoxDecoration(
            border: groupValue == value
                ? Border.all(color: ColorManager.white, width: 2)
                : const Border.symmetric(),
            //borderRadius: const BorderRadius.all(Radius.circular(15)),
          ),
          ///sidebar data
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ///sidebar icon
              // Expanded(
              //     flex: 1,
              //     child: SizedBox(
              //       // height: 35, width: 35,
              //         child: Icon(
              //           color: ColorManager.white,
              //           size: MediaQuery.of(context).size.width / 60,
              //         ))),
              const SizedBox(
                width: 1,
              ),
              ///sidebar text
              Expanded(
                flex: 2,
                child: Text(label,
                    style: GoogleFonts.inter(
                        color: ColorManager.white,
                        fontSize: MediaQuery.of(context).size.width / 100,
                        fontWeight: FontWeight.w700)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

