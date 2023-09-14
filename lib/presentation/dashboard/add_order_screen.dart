import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pum_supervisor/resources/color_manager.dart';
import 'package:pum_supervisor/resources/value_manager.dart';

import '../../constant/table_heading_widget.dart';
import '../../resources/font_manager.dart';
import '../../resources/string_manager.dart';
import '../../user_responsive_screen/user_appfilled_button.dart';
import '../../user_responsive_screen/user_enum.dart';
import '../../user_responsive_screen/user_responsive_screen.dart';

class AddOrderScreen extends StatefulWidget {
  const AddOrderScreen({super.key});

  @override
  State<AddOrderScreen> createState() => _AddOrderScreenState();
}

class _AddOrderScreenState extends State<AddOrderScreen> {
  List ListItems = ["SHIFT 1", "SHIFT 2", "SHIFT 3", "SHIFT 4"];
  bool checkValue = false;
  String? valueChoose;
  @override
  Widget build(BuildContext context) {
    return UserResponsiveScreen(
      
      appBarChildren: [
        UserAppfilledButton(text: 'Confirm',
          padding:  EdgeInsets.symmetric(
            vertical: MediaQuery.of(context).size.height/38,
            horizontal: MediaQuery.of(context).size.width/40,),
          color: ColorManager.green,

          textStyle: TextStyle(fontWeight: FontWeight.w600,color: Colors.white),
        )
      ],
      appBarSpaceChildren: [
        Padding(
          padding: EdgeInsets.only(left: AppPadding.p8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: ColorManager.faintb, width: 2),
                      borderRadius: BorderRadius.circular(10)
                  ),
                  padding: EdgeInsets.all(2),
                  width: MediaQuery.of(context).size.width / 5,
                  height: AppSize.s30,
                  child: DropdownButton(
                    alignment: Alignment.topLeft,
                    hint: Text("1234456678899",style: TextStyle(fontFamily: FontConstants.fontFamily2,
                        fontWeight: FontWeightManager.bold,
                        color: ColorManager.faintb,
                        fontSize: MediaQuery.of(context).size.width / 80),),
                    value: valueChoose,
                    underline: SizedBox(),
                    isExpanded: true,
                    icon: Icon(Icons.keyboard_arrow_down_outlined),
                    onChanged: (val){
                      setState(() {
                        valueChoose = val as String?;
                      });
                    },
                    items: ListItems.map((ValueItem) {
                      return DropdownMenuItem(value: ValueItem,child: Text(ValueItem,style: TextStyle(
                          fontFamily: FontConstants.fontFamily2,
                          fontWeight: FontWeightManager.bold,
                          color: ColorManager.faintb,
                          fontSize: MediaQuery.of(context).size.width / 80
                      ),),);
                    }).toList(),
                  )
              ),
            ],
          ),
        )
      ],
      appScreen: AppUserScreen.addOrder,
      
      heading: AppString.addorder,
      onBack: () {},
      tableHeading: SizedBox(),
      table: ListView.builder(
          itemCount: 7,
          itemBuilder: (BuildContext, int) {
            return Card(
              child: Container(
                decoration: BoxDecoration(
                  color: ColorManager.sidebar,
                  // borderRadius:
                  //     const BorderRadius.all(Radius.circular(10)),
                  boxShadow: [
                    BoxShadow(
                      color:
                          Colors.black45.withOpacity(0.2), // Shadow color
                      spreadRadius:
                          1, // How far the shadow should spread (positive values spread outwards, negative values spread inwards)
                      blurRadius: 2, // The blur radius of the shadow
                      offset: Offset(
                          0, 2), // The offset of the shadow from the box
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Text(
                                'Operation :',
                                style: TextStyle(
                                    fontFamily: FontConstants.fontFamily2,
                                    color: ColorManager.appbarcolor,
                                    fontWeight: FontWeightManager.semoBold,
//fontWeight: FontWeightManager.bold,
                                    fontSize: FontSize.s16),
                              ),
                              Text(
                                'Welding (10)',
                                style: TextStyle(
                                    fontFamily: FontConstants.fontFamily2,
                                    color: ColorManager.appbarcolor,
                                    fontWeight: FontWeight.w900,
//fontWeight: FontWeightManager.bold,
                                    fontSize: FontSize.s16),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 25),
                            child: Row(
                              children: [
                                Text(
                                  'Item :  ',
                                  style: TextStyle(
                                      fontFamily: FontConstants.fontFamily2,
                                      color: ColorManager.black,
                                      //fontWeight: FontWeightManager.bold,
                                      fontSize: FontSize.s16),
                                ),
                                Text(
                                  '100',
                                  style: TextStyle(
                                      fontFamily: FontConstants.fontFamily2,
                                      color: ColorManager.black,
                                      fontWeight: FontWeightManager.bold,
//fontWeight: FontWeightManager.bold,
                                      fontSize: FontSize.s15),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Yield',
                                style: TextStyle(
                                    fontFamily: FontConstants.fontFamily2,
                                    color: ColorManager.black,
                                    //fontWeight: FontWeightManager.bold,
                                    fontSize: FontSize.s15),
                              ),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height / 60,
                              ),
                              Text(
                                '100',
                                style: TextStyle(
                                    fontFamily: FontConstants.fontFamily2,
                                    color: ColorManager.black,
                                    fontWeight: FontWeightManager.bold,
//fontWeight: FontWeightManager.bold,
                                    fontSize: FontSize.s15),
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'Rework',
                                style: TextStyle(
                                    fontFamily: FontConstants.fontFamily2,
                                    color: ColorManager.black,
                                    //fontWeight: FontWeightManager.bold,
                                    fontSize: FontSize.s15),
                              ),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height / 60,
                              ),
                              Text(
                                '0',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontFamily: FontConstants.fontFamily2,
                                    color: ColorManager.black,
                                    fontWeight: FontWeightManager.bold,
//fontWeight: FontWeightManager.bold,
                                    fontSize: FontSize.s15),
                              ),
                            ],
                          ),

                          //Expanded(child: Text(' ')),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                'Rejection',
                                style: TextStyle(
                                    fontFamily: FontConstants.fontFamily2,
                                    color: ColorManager.black,
                                    fontSize: FontSize.s15),
                              ),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height / 60,
                              ),
                              Text(
                                '20',
                                style: TextStyle(
                                    fontFamily: FontConstants.fontFamily2,
                                    color: ColorManager.black,
                                    fontWeight: FontWeightManager.bold,
                                    fontSize: FontSize.s15),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 35,
                            width: 150,
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    ColorManager.buttongridecolor,
                              ),
                              child: Text(
                                'Edit',
                                style: TextStyle(
                                    fontFamily: FontConstants.fontFamily2,
                                    color: ColorManager.appbarcolor,
                                    fontWeight: FontWeightManager.bold,
                                    fontSize: FontSize.s15),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            );
          }), tableHeadingIsThere: false,
    );
  }
}
