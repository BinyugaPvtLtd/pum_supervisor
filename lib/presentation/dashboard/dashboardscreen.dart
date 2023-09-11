import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pum_supervisor/constant/table_heading_widget.dart';
import 'package:pum_supervisor/resources/color_manager.dart';
import 'package:pum_supervisor/resources/font_manager.dart';
import 'package:pum_supervisor/resources/string_manager.dart';
import 'package:pum_supervisor/resources/value_manager.dart';
import 'package:pum_supervisor/user_responsive_screen/user_enum.dart';
import 'package:pum_supervisor/user_responsive_screen/user_responsive_screen.dart';


class DashboardScreenUser extends StatefulWidget {
  DashboardScreenUser({super.key});

  @override
  State<DashboardScreenUser> createState() => _DashboardScreenUserState();
}

class _DashboardScreenUserState extends State<DashboardScreenUser> {
  bool checkValue = false;
  String? valueChoose;
  List ListItems =["SHIFT 1", "SHIFT 2", "SHIFT 3"];
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
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                    color: ColorManager.faintb,
                    width: 2),
              ),
              child: TextField(
                textAlign: TextAlign.center,
                //textAlignVertical: TextAlignVertical.center,
                controller: datecontroller,
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  hintText: 'From',
                ),
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
                padding: EdgeInsets.all(3),
                width: MediaQuery.of(context).size.width / 8,
                height: MediaQuery.of(context).size.height / 23,
                child: DropdownButton(
                  alignment: Alignment.center,
                  hint: Text(ListItems[0]),
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
                    return DropdownMenuItem(value: ValueItem,child: Text(ValueItem),);
                  }).toList(),
                )
            ),
            SizedBox(width:MediaQuery.of(context).size.width / 2.3,),
            Container(
                width: MediaQuery.of(context).size.width / 13,
                height: MediaQuery.of(context).size.height / 20,
                decoration: BoxDecoration(color: ColorManager.green,
                    borderRadius: BorderRadius.circular(10)),
                child: TextButton(onPressed: (){}, child: const Text('Confirm',style: TextStyle(color: Colors.white),)))
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
              fontSize: 15,
            )),

        Text("Message",
            textAlign: TextAlign.center,
            style: GoogleFonts.inter(
              color: ColorManager.white,
              fontWeight: FontWeightManager.bold,
              fontSize: 15,
            )),
        Text("Status",
            textAlign: TextAlign.center,
            style: GoogleFonts.inter(
              color: ColorManager.white,
              fontWeight: FontWeightManager.bold,
              fontSize: 15,
            )),
        Text("Order No",
            textAlign: TextAlign.center,
            style: GoogleFonts.inter(
              color: ColorManager.white,
              fontWeight: FontWeightManager.bold,
              fontSize: 15,
            )),
        Text("Order No",
            textAlign: TextAlign.center,
            style: GoogleFonts.inter(
              color: ColorManager.white,
              fontWeight: FontWeightManager.bold,
              fontSize: 15,
            )),
        Text("Order No",
            textAlign: TextAlign.center,
            style: GoogleFonts.inter(
              color: ColorManager.white,
              fontWeight: FontWeightManager.bold,
              fontSize: 15,
            )),


      ]),
      table: Container(),);
  }
}
