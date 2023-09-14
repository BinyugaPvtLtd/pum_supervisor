import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pum_supervisor/constant/table_card_widget.dart';
import 'package:pum_supervisor/constant/table_heading_widget.dart';
import 'package:pum_supervisor/presentation/popups/edit_popup.dart';
import 'package:pum_supervisor/presentation/popups/success_popup.dart';
import 'package:pum_supervisor/resources/color_manager.dart';
import 'package:pum_supervisor/resources/font_manager.dart';
import 'package:pum_supervisor/resources/string_manager.dart';
import 'package:pum_supervisor/resources/value_manager.dart';
import 'package:pum_supervisor/user_responsive_screen/user_appfilled_button.dart';
import 'package:pum_supervisor/user_responsive_screen/user_enum.dart';
import 'package:pum_supervisor/user_responsive_screen/user_responsive_screen.dart';


class DashboardScreen extends StatefulWidget {
  DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  bool checkValue = false;
  bool checkValue1 = false;
  String? valueChoose;
  List ListItems =["SHIFT 1", "SHIFT 2", "SHIFT 3", "SHIFT 4"];
  TextEditingController datecontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return UserResponsiveScreen(
      appBarChildren: [],
      appBarSpaceChildren: [  Padding(
        padding: EdgeInsets.only(left: AppPadding.p8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: MediaQuery.of(context).size.width / 8,
              height: MediaQuery.of(context).size.height / 23,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                    color: ColorManager.faintb,
                    width: 2),
              ),
              padding: EdgeInsets.all(2),
              child:
              TextField(
                textAlign: TextAlign.center,
                // textAlignVertical: TextAlignVertical.center,
                controller: datecontroller,
                decoration:  InputDecoration(
                  //contentPadding: EdgeInsets.only(top: 10,bottom: 10),
                  border: InputBorder.none,
                  hintText: 'From',
                  hintStyle: TextStyle(fontFamily: FontConstants.fontFamily2,
                    fontSize: MediaQuery.of(context).size.width / 80,
                    fontWeight: FontWeightManager.bold,
                    color: ColorManager.black,),
                  suffixIcon:  Icon(Icons.keyboard_arrow_down_outlined),
                ),
                style: TextStyle(fontFamily: FontConstants.fontFamily2,
                    fontWeight: FontWeightManager.bold,
                    fontSize: MediaQuery.of(context).size.width / 80,
                    color: ColorManager.black),
                readOnly: true,
                onTap: () async {
                  DateTime? date = DateTime(1900);
                  FocusScope.of(context)
                      .requestFocus(FocusNode());
                  date = await showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(1980),
                      lastDate: DateTime(2101));

                  datecontroller.text =
                  "${date!.year}-${date.month}-${date.day}";
                },
              ),
            ),
            SizedBox(width:MediaQuery.of(context).size.width / 50,),
            Container(
                decoration: BoxDecoration(
                    border: Border.all(color: ColorManager.faintb, width: 2),
                    borderRadius: BorderRadius.circular(10)
                ),
                //padding: EdgeInsets.all(3),
                width: MediaQuery.of(context).size.width / 8,
                height: MediaQuery.of(context).size.height / 23,
                child: DropdownButton(

                  alignment: Alignment.center,
                  hint: Text(ListItems[0],style: TextStyle(fontFamily: FontConstants.fontFamily2,
                      fontWeight: FontWeightManager.bold,
                      color: ColorManager.black,
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
                    return DropdownMenuItem(value: ValueItem,child: Center(
                      child: Text(ValueItem,style: TextStyle(
                        fontFamily: FontConstants.fontFamily2,
                        fontWeight: FontWeightManager.bold,
                        color: ColorManager.black,
                        fontSize: MediaQuery.of(context).size.width / 80
                      ),),
                    ),);
                  }).toList(),
                )
            ),
            SizedBox(width:MediaQuery.of(context).size.width / 2.3,),
            UserAppfilledButton(text: 'Confirm',
              padding:  EdgeInsets.symmetric(
                vertical: MediaQuery.of(context).size.height/38,
                horizontal: MediaQuery.of(context).size.width/40,),
              color: ColorManager.green,

              textStyle: TextStyle(fontWeight: FontWeight.w600,color: Colors.white),
            )
          ],
        ),
      )],
      appScreen: AppUserScreen.Dashbordhead,
      tableHeadingIsThere: true,
      heading: AppString.Dashbordhead,
      onBack: (){},
      tableHeading: TableHeadingWidget(fields: [
        Checkbox(value: checkValue,
            activeColor: Colors.blueAccent,
            side: BorderSide(color: ColorManager.white,
                width: 3),
            onChanged: (val){
              setState(() {
                checkValue = val!;
              });

            }),

        Text(" ",
            textAlign: TextAlign.center,
            style: GoogleFonts.inter(
              color: ColorManager.white,
              fontWeight: FontWeightManager.bold,
              fontSize: MediaQuery.of(context).size.width/100,
            )),

        Text("Message",
            textAlign: TextAlign.center,
            style: GoogleFonts.inter(
              color: ColorManager.white,
              fontWeight: FontWeightManager.bold,
              fontSize: MediaQuery.of(context).size.width/100,
            )),
        Text("Status",
            textAlign: TextAlign.center,
            style: GoogleFonts.inter(
              color: ColorManager.white,
              fontWeight: FontWeightManager.bold,
              fontSize: MediaQuery.of(context).size.width/100,
            )),
        Text("Order No",
            textAlign: TextAlign.center,
            style: GoogleFonts.inter(
              color: ColorManager.white,
              fontWeight: FontWeightManager.bold,
              fontSize: MediaQuery.of(context).size.width/100,
            )),
        Text("Operation",
            textAlign: TextAlign.center,
            style: GoogleFonts.inter(
              color: ColorManager.white,
              fontWeight: FontWeightManager.bold,
              fontSize: MediaQuery.of(context).size.width/100,
            )),
        Text("Material No.",
            textAlign: TextAlign.center,
            style: GoogleFonts.inter(
              color: ColorManager.white,
              fontWeight: FontWeightManager.bold,
              fontSize: MediaQuery.of(context).size.width/100,
            )),
        Text("Description",
            textAlign: TextAlign.center,
            style: GoogleFonts.inter(
              color: ColorManager.white,
              fontWeight: FontWeightManager.bold,
              fontSize: MediaQuery.of(context).size.width/100,
            )),
        Text("Order Qty",
            textAlign: TextAlign.center,
            style: GoogleFonts.inter(
              color: ColorManager.white,
              fontWeight: FontWeightManager.bold,
              fontSize: MediaQuery.of(context).size.width/100,
            )),
        Text("Pending Qty",
            textAlign: TextAlign.center,
            style: GoogleFonts.inter(
              color: ColorManager.white,
              fontWeight: FontWeightManager.bold,
              fontSize: MediaQuery.of(context).size.width/100,
            )),
        Text("Rejection",
            textAlign: TextAlign.center,
            style: GoogleFonts.inter(
              color: ColorManager.white,
              fontWeight: FontWeightManager.bold,
              fontSize: MediaQuery.of(context).size.width/100,
            )),
        Text("Rework",
            textAlign: TextAlign.center,
            style: GoogleFonts.inter(
              color: ColorManager.white,
              fontWeight: FontWeightManager.bold,
              fontSize: MediaQuery.of(context).size.width/100,
            )),
        Text("Confirmed Qty",
            textAlign: TextAlign.center,
            style: GoogleFonts.inter(
              color: ColorManager.white,
              fontWeight: FontWeightManager.bold,
              fontSize: MediaQuery.of(context).size.width/100,
            )),
        Text("Balanced Qty",
            textAlign: TextAlign.center,
            style: GoogleFonts.inter(
              color: ColorManager.white,
              fontWeight: FontWeightManager.bold,
              fontSize: MediaQuery.of(context).size.width/100,
            )),


      ]),
      table: ListView.builder(
        //scrollDirection: Axis.horizontal,
        //shrinkWrap: true,
        itemCount: 10,
          itemBuilder: (BuildContext context, index){
           return TableCardWidget(
             fields: [
               Checkbox(value: checkValue,
                   activeColor: Colors.blueAccent,
                   side: BorderSide(color: ColorManager.faintb,
                       width: 2),
                   onChanged: (val){
                     setState(() {
                       checkValue = val!;
                     });
                   }),
               InkWell(
                 onTap: (){
                   showDialog(context: context, builder: (_)=>EditPopup());
                 },
                 child: Text('Edit',
                     style: Theme.of(context)
                         .textTheme
                         .titleSmall
                         ?.copyWith(
                         fontFamily: FontConstants.fontFamily2,
                         color: ColorManager.faintb,
                         fontWeight: FontWeightManager.semoBold,
                         fontSize: FontSize.s15),
                     textAlign: TextAlign.center),
               ),
               Text('Cancel',
                   style: Theme.of(context)
                       .textTheme
                       .titleSmall
                       ?.copyWith(
                       fontFamily: FontConstants.fontFamily2,
                       color: ColorManager.red,
                       fontWeight: FontWeightManager.semoBold,
                       fontSize: FontSize.s14),
                   textAlign: TextAlign.center),
               InkWell(
                 onTap: (){
                   showDialog(context: context, builder: (_)=>SuccessPopup());
                 },
                 child: Text('View',
                     style: Theme.of(context)
                         .textTheme
                         .titleSmall
                         ?.copyWith(
                         fontFamily: FontConstants.fontFamily2,
                         color: ColorManager.faintb,
                         fontWeight: FontWeightManager.semoBold,
                         fontSize: FontSize.s14),
                     textAlign: TextAlign.center),
               ),
               Text('SAPCNF',
                   style: Theme.of(context)
                       .textTheme
                       .titleSmall
                       ?.copyWith(
                       fontFamily: FontConstants.fontFamily2,
                       color: ColorManager.black,
                       fontWeight: FontWeightManager.medium,
                       fontSize: FontSize.s13),
                   textAlign: TextAlign.center),
               Text('100001',
                   style: Theme.of(context)
                       .textTheme
                       .titleSmall
                       ?.copyWith(
                       fontFamily: FontConstants.fontFamily2,
                       color: ColorManager.black,
                       fontWeight: FontWeightManager.medium,
                       fontSize: FontSize.s13),
                   textAlign: TextAlign.center),
               Text('Welding (10)',
                   style: Theme.of(context)
                       .textTheme
                       .titleSmall
                       ?.copyWith(
                       fontFamily: FontConstants.fontFamily2,
                       color: ColorManager.black,
                       fontWeight: FontWeightManager.medium,
                       fontSize: FontSize.s13),
                   textAlign: TextAlign.center),
               Text('8010000010',
                   style: Theme.of(context)
                       .textTheme
                       .titleSmall
                       ?.copyWith(
                       fontFamily: FontConstants.fontFamily2,
                       color: ColorManager.black,
                       fontWeight: FontWeightManager.medium,
                       fontSize: FontSize.s13),
                   textAlign: TextAlign.center),
               Text('BOXER SWING ARM ',
                   style: Theme.of(context)
                       .textTheme
                       .titleSmall
                       ?.copyWith(
                       fontFamily: FontConstants.fontFamily2,
                       color: ColorManager.black,
                       fontWeight: FontWeightManager.medium,
                       fontSize: FontSize.s13),
                   textAlign: TextAlign.center),
               Text('100 ',
                   style: Theme.of(context)
                       .textTheme
                       .titleSmall
                       ?.copyWith(
                       fontFamily: FontConstants.fontFamily2,
                       color: ColorManager.black,
                       fontWeight: FontWeightManager.medium,
                       fontSize: FontSize.s13),
                   textAlign: TextAlign.center),
               Text('100 ',
                   style: Theme.of(context)
                       .textTheme
                       .titleSmall
                       ?.copyWith(
                       fontFamily: FontConstants.fontFamily2,
                       color: ColorManager.black,
                       fontWeight: FontWeightManager.medium,
                       fontSize: FontSize.s13),
                   textAlign: TextAlign.center),
               Text('10 ',
                   style: Theme.of(context)
                       .textTheme
                       .titleSmall
                       ?.copyWith(
                       fontFamily: FontConstants.fontFamily2,
                       color: ColorManager.red,
                       fontWeight: FontWeightManager.medium,
                       fontSize: FontSize.s13),
                   textAlign: TextAlign.center),
               Text('5 ',
                   style: Theme.of(context)
                       .textTheme
                       .titleSmall
                       ?.copyWith(
                       fontFamily: FontConstants.fontFamily2,
                       color: ColorManager.black,
                       fontWeight: FontWeightManager.medium,
                       fontSize: FontSize.s13),
                   textAlign: TextAlign.center),
               Text('80 ',
                   style: Theme.of(context)
                       .textTheme
                       .titleSmall
                       ?.copyWith(
                       fontFamily: FontConstants.fontFamily2,
                       color: ColorManager.black,
                       fontWeight: FontWeightManager.medium,
                       fontSize: FontSize.s13),
                   textAlign: TextAlign.center),
               Text('10 ',
                   style: Theme.of(context)
                       .textTheme
                       .titleSmall
                       ?.copyWith(
                       fontFamily: FontConstants.fontFamily2,
                       color: ColorManager.black,
                       fontWeight: FontWeightManager.medium,
                       fontSize: FontSize.s13),
                   textAlign: TextAlign.center),
             ],
             onClick: () {
               // var kkk = snapshot.data!.toList();
               // if(dataAcending == false){
               //   var kkk = data['delete'];
               //   data = kkk.reversed.toList();
               // }
             },
           );
      }),
    );
  }
}
