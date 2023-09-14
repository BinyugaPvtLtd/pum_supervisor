import 'package:flutter/material.dart';
import 'package:pum_supervisor/resources/color_manager.dart';
import 'package:pum_supervisor/user_responsive_screen/user_enum.dart';
import 'package:pum_supervisor/user_responsive_screen/user_side_bar.dart';


typedef void OnUserClickBack();
class UserResponsiveScreen extends StatelessWidget {
  UserResponsiveScreen({Key? key,
    required this.appBarChildren,
    required this.appBarSpaceChildren,
    required this.appScreen,
    required this.tableHeadingIsThere,
    required this.heading,
    required this.onBack,
    required this.table,
    required this.tableHeading}) : super(key: key);
  final List<Widget> appBarChildren;
  final List<Widget> appBarSpaceChildren;
  final AppUserScreen appScreen;
  final bool tableHeadingIsThere;
  final String heading;
  final OnUserClickBack onBack;
  final Widget table;
  final Widget tableHeading;
  @override
  Widget build(BuildContext context) {
    if (MediaQuery.of(context).size.width > 870) {
      return Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Row(
            children: [
              Expanded(
                  flex: 1,
                  child: Container(
                    //color: Colors.green,
                   // color: Color(0xff1E56A0),
                    height: MediaQuery.of(context).size.height,
                    child: ListView(
                      physics: NeverScrollableScrollPhysics(),
                      children: [
                        MediaQuery.of(context).size.width > 780
                            ? Container(
                          color: ColorManager.white,
                          child: Padding(
                            padding: EdgeInsets.all(
                                MediaQuery.of(context).size.height /
                                    80),
                            child: Image.asset(
                              "images/ummasons_logo.png",
                              // width: double.minPositive,
                              // width: MediaQuery.of(context).size.width / 2,
                            ),
                          ),
                        )
                            : const SizedBox(height: 40,),
                        Container(
                          height:MediaQuery.of(context).size.height- 50,
                          decoration: BoxDecoration(
                            //color: ColorManager.primary,
                            //borderRadius: BorderRadius.only(topRight: Radius.circular(10),topLeft: Radius.circular(20))
                          ),
                          // height: MediaQuery.of(context).size.height - 100,
                          child: UserSideBar(
                              heading: heading,
                              //screen: appUserScreen,
                              onBackButtonTapped: () {
                                onBack();
                              }, screen: appScreen,),
                        )
                      ],
                    ),
                  )
              ),
              Expanded(
                  flex: 5,
                  child: Container(
                    height: MediaQuery.of(context).size.height,
                    child: Stack(
                      children: [
                        Container(
                         //color: Colors.blue,
                          height: 220,
                          width: MediaQuery.of(context).size.width,
                          child: ScrollConfiguration(
                            behavior: ScrollConfiguration.of(context).copyWith(scrollbars: true),
                            child: ListView(
                            physics: NeverScrollableScrollPhysics(),
                              children: [
                                Container(
                                  //color: Colors.redAccent,
                                  height: 120,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: appBarChildren,
                                  ),
                                ),
                                Container(
                                  // color: Colors.blue,
                                  height: 60,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: appBarSpaceChildren,
                                  ),
                                ),
                                if(tableHeadingIsThere)
                                  Container(
                                    // color: Colors.greenAccent,
                                    child: tableHeading,
                                  ),

                              ],
                            ),
                          ),
                        ),
                        Container(
                          // color: Colors.pink,
                          margin: EdgeInsets.only(top: 225),
                          child: table,
                        ),
                      ],
                    ),
                  )),
            ],
          ),
        ),
      );
    }
    // else if (MediaQuery.of(context).size.width > 700) {
    //   return Scaffold(
    //     body: Container(
    //       height: MediaQuery.of(context).size.height,
    //       // color: Colors.orangeAccent,
    //       child: Stack(
    //         children: [
    //           Container(
    //             // color: Colors.brown,
    //
    //             height: 220,
    //             child: ScrollConfiguration(
    //               behavior: ScrollConfiguration.of(context)
    //                   .copyWith(scrollbars: false),
    //               child: ListView(
    //                 scrollDirection: Axis.horizontal,
    //                 physics: NeverScrollableScrollPhysics(),
    //                 children: [
    //                   Container(
    //                     // color: Colors.cyan,
    //                     height: 120,
    //                     child: Row(
    //                       mainAxisAlignment: MainAxisAlignment.end,
    //                       children: appBarChildren,
    //                     ),
    //                   ),
    //                   Container(
    //                      //color: Colors.green,
    //                     height: 60,
    //                     child: Row(
    //                       mainAxisAlignment: MainAxisAlignment.start,
    //                       children: appBarSpaceChildren,
    //                     ),
    //                   ),
    //                   Container(
    //                     // color: Colors.pinkAccent,
    //                     child: tableHeading,
    //                   ),
    //                 ],
    //               ),
    //             ),
    //           ),
    //           Container(
    //             // color: Colors.redAccent,
    //             margin: EdgeInsets.only(top: 225),
    //             child: table,
    //           ),
    //         ],
    //       ),
    //     ),
    //   );
    // }
    else if (MediaQuery.of(context).size.width > 450) {
      return Scaffold(
        body: Container(
          //color: Colors.lightGreen,
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: [
              Container(
                // color: Colors.red,
                child: ScrollConfiguration(
                  behavior: ScrollConfiguration.of(context)
                      .copyWith(scrollbars: false),
                  child: ListView(
                    physics: NeverScrollableScrollPhysics(),
                    children: [
                      Container(
                        // color: Colors.greenAccent,
                        child: tableHeading,
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 60),
                // color: Colors.greenAccent,
                child: table,
              ),
            ],
          ),
        ),
      );
    } else {
      return Scaffold(
        body: Center(),
      );
    }
  }
}
