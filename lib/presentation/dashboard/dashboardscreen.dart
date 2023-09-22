import 'dart:convert';
import 'dart:core';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pum_supervisor/constant/table_card_widget.dart';
import 'package:pum_supervisor/constant/table_heading_widget.dart';
import 'package:pum_supervisor/presentation/modals/operation_model.dart';
import 'package:pum_supervisor/presentation/popups/edit_popup.dart';
import 'package:pum_supervisor/presentation/popups/manage_popup.dart';
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
  //final allChecked = CheckBoxModal(value: false);
  String? valueChoose;
  List ListItems = ["SHIFT 1", "SHIFT 2", "SHIFT 3", "SHIFT 4"];
  TextEditingController datecontroller = TextEditingController();
  final ScrollController controller = ScrollController();

  // Future<void> readJson() async {
  //   final String response = await rootBundle.loadString('assets/sample.json');
  //   final data = await json.decode(response);
  //   _items = data['items'];
  //   readJson();
  //   print("data ${_items.length}");
  // }

  @override
  Widget build(BuildContext context) {
    return UserResponsiveScreen(
      appBarChildren: [],
      appBarSpaceChildren: [
        Padding(
          padding: EdgeInsets.only(left: AppPadding.p8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: MediaQuery.of(context).size.width / 8,
                height: AppSize.s30,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: ColorManager.faintb, width: 2),
                ),
                padding: EdgeInsets.all(2),
                child: TextField(
                  textAlign: TextAlign.center,
                  textAlignVertical: TextAlignVertical.center,
                  controller: datecontroller,
                  decoration: InputDecoration(
                    //contentPadding: EdgeInsets.only(top: 10,bottom: 10),
                    border: InputBorder.none,
                    hintText: 'From',
                    hintStyle: TextStyle(
                      fontFamily: FontConstants.fontFamily2,
                      fontSize: MediaQuery.of(context).size.width / 80,
                      fontWeight: FontWeightManager.bold,
                      color: ColorManager.black,
                    ),
                    suffixIcon: Icon(
                      Icons.keyboard_arrow_down_outlined,
                      size: 20,
                    ),
                  ),
                  style: TextStyle(
                      fontFamily: FontConstants.fontFamily2,
                      fontWeight: FontWeightManager.bold,
                      fontSize: MediaQuery.of(context).size.width / 80,
                      color: ColorManager.black),
                  readOnly: true,
                  onTap: () async {
                    DateTime? date = DateTime(1900);
                    FocusScope.of(context).requestFocus(FocusNode());
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
              SizedBox(
                width: MediaQuery.of(context).size.width / 50,
              ),
              Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: ColorManager.faintb, width: 2),
                      borderRadius: BorderRadius.circular(10)),
                  //padding: EdgeInsets.all(3),
                  width: MediaQuery.of(context).size.width / 8,
                  height: AppSize.s30,
                  child: DropdownButton(
                    alignment: Alignment.center,
                    hint: Text(
                      ListItems[0],
                      style: TextStyle(
                          fontFamily: FontConstants.fontFamily2,
                          fontWeight: FontWeightManager.bold,
                          color: ColorManager.black,
                          fontSize: MediaQuery.of(context).size.width / 80),
                    ),
                    value: valueChoose,
                    underline: SizedBox(),
                    isExpanded: true,
                    icon: Icon(
                      Icons.keyboard_arrow_down_outlined,
                      size: 20,
                    ),
                    onChanged: (val) {
                      setState(() {
                        valueChoose = val as String?;
                      });
                    },
                    items: ListItems.map((ValueItem) {
                      return DropdownMenuItem(
                        value: ValueItem,
                        child: Center(
                          child: Text(
                            ValueItem,
                            style: TextStyle(
                                fontFamily: FontConstants.fontFamily2,
                                fontWeight: FontWeightManager.bold,
                                color: ColorManager.black,
                                fontSize:
                                    MediaQuery.of(context).size.width / 80),
                          ),
                        ),
                      );
                    }).toList(),
                  )),
              SizedBox(
                width: MediaQuery.of(context).size.width / 2.3,
              ),
              UserAppfilledButton(
                text: 'Confirm',
                padding: EdgeInsets.symmetric(
                  vertical: MediaQuery.of(context).size.height / 38,
                  horizontal: MediaQuery.of(context).size.width / 40,
                ),
                color: ColorManager.green,
                textStyle:
                    TextStyle(fontWeight: FontWeight.w600, color: Colors.white),
              )
            ],
          ),
        )
      ],
      appScreen: AppUserScreen.Dashbordhead,
      tableHeadingIsThere: true,
      heading: AppString.Dashbordhead,
      onBack: () {},
      tableHeading: SingleChildScrollView(
        controller: controller,
        scrollDirection: Axis.horizontal,
        child: TableHeadingWidget(fields: [
          Checkbox(
              value: checkValue,
              activeColor: Colors.blueAccent,
              side: BorderSide(color: ColorManager.white, width: 3),
              onChanged: (val) {
                setState(() {
                  checkValue = val!;
                });
              }),
          SizedBox(
            width: 100,
            height: 10,
          ),
          SizedBox(
            width: 100,
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Message",
                textAlign: TextAlign.center,
                style: GoogleFonts.inter(
                  color: ColorManager.white,
                  fontWeight: FontWeightManager.bold,
                  fontSize: 13,
                )),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Status",
                textAlign: TextAlign.center,
                style: GoogleFonts.inter(
                  color: ColorManager.white,
                  fontWeight: FontWeightManager.bold,
                  fontSize: 13,
                )),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Order No",
                textAlign: TextAlign.center,
                style: GoogleFonts.inter(
                  color: ColorManager.white,
                  fontWeight: FontWeightManager.bold,
                  fontSize: 13,
                )),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Operation",
                textAlign: TextAlign.center,
                style: GoogleFonts.inter(
                  color: ColorManager.white,
                  fontWeight: FontWeightManager.bold,
                  fontSize: 13,
                )),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Material No.",
                textAlign: TextAlign.center,
                style: GoogleFonts.inter(
                  color: ColorManager.white,
                  fontWeight: FontWeightManager.bold,
                  fontSize: 13,
                )),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Description",
                textAlign: TextAlign.center,
                style: GoogleFonts.inter(
                  color: ColorManager.white,
                  fontWeight: FontWeightManager.bold,
                  fontSize: 13,
                )),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Order Qty",
                textAlign: TextAlign.center,
                style: GoogleFonts.inter(
                  color: ColorManager.white,
                  fontWeight: FontWeightManager.bold,
                  fontSize: 13,
                )),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Pending Qty",
                textAlign: TextAlign.center,
                style: GoogleFonts.inter(
                  color: ColorManager.white,
                  fontWeight: FontWeightManager.bold,
                  fontSize: 13,
                )),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Rejection",
                textAlign: TextAlign.center,
                style: GoogleFonts.inter(
                  color: ColorManager.white,
                  fontWeight: FontWeightManager.bold,
                  fontSize: 13,
                )),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Rework",
                textAlign: TextAlign.center,
                style: GoogleFonts.inter(
                  color: ColorManager.white,
                  fontWeight: FontWeightManager.bold,
                  fontSize: 13,
                )),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Confirmed Qty",
                textAlign: TextAlign.center,
                style: GoogleFonts.inter(
                  color: ColorManager.white,
                  fontWeight: FontWeightManager.bold,
                  fontSize: 13,
                )),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Balanced Qty",
                textAlign: TextAlign.center,
                style: GoogleFonts.inter(
                  color: ColorManager.white,
                  fontWeight: FontWeightManager.bold,
                  fontSize: 13,
                )),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Description",
                textAlign: TextAlign.center,
                style: GoogleFonts.inter(
                  color: ColorManager.white,
                  fontWeight: FontWeightManager.bold,
                  fontSize: 13,
                )),
          ),
        ]),
      ),
      table: FutureBuilder(
          future:
              DefaultAssetBundle.of(context).loadString('assets/sample.json'),
          builder: (context, snapshot) {
            List<OperationModel> operations = [];
            // Decode the JSON
            List? data1 = json.decode(snapshot.data.toString());
            data1?.forEach((element) {
              print(element["dbid"]);
              operations.add(OperationModel(
                  confirm: element["confirm"],
                  check: element["check"],
                  Status: element["Status"],
                  OrderNo: element["OrderNo"],
                  Operation: element["Operation"],
                  MaterialNo: element["MaterialNo"],
                  Description: element["Description"],
                  OrderQty: element["OrderQty"],
                  PendingQty: element["PendingQty"],
                  Rejection: element["Rejection"],
                  Rework: element["Rework"],
                  ConfirmedQty: element["ConfirmedQty"],
                  BalancedQty: element["BalancedQty"]));
            });
            return SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              controller: controller,
              child: Container(
                width: MediaQuery.of(context).size.width + 200,
                height: MediaQuery.of(context).size.height - 300,
                child: Scrollbar(
                  thumbVisibility: true,
                  trackVisibility: true,
                  controller: controller,
                  child: ListView.builder(
                      //scrollDirection: Axis.horizontal,
                      //shrinkWrap: true,
                      itemCount: operations == null ? 0 : operations.length,
                      itemBuilder: (BuildContext context, index) {
                        return TableCardWidget(
                          fields: [
                            Checkbox(
                                value: true,
                                activeColor: Colors.blueAccent,
                                side: BorderSide(
                                    color: ColorManager.faintb, width: 2),
                                onChanged: (val) {
                                  setState(() {
                                    operations[index].check =
                                        operations[index].check ? false : true;
                                  });
                                }),
                            TextButton(
                                onPressed: () {
                                  showDialog(
                                      context: context,
                                      builder: (_) => const EditPopup());
                                },
                                child: Text("Edit",
                                    style: Theme.of(context)
                                        .textTheme
                                        .titleSmall
                                        ?.copyWith(
                                            fontFamily:
                                                FontConstants.fontFamily2,
                                            color: ColorManager.faintb,
                                            fontWeight: FontWeightManager.bold,
                                            fontSize: FontSize.s15_25),
                                    textAlign: TextAlign.center)),
                            TextButton(
                              onPressed: () {},
                              child: Text("Cancel",
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleSmall
                                      ?.copyWith(
                                          fontFamily: FontConstants.fontFamily2,
                                          color: ColorManager.red,
                                          fontWeight: FontWeightManager.bold,
                                          fontSize: FontSize.s15_25),
                                  textAlign: TextAlign.center),
                            ),
                            TextButton(
                              onPressed: () {
                                showDialog(
                                    context: context,
                                    builder: (_) => SuccessPopup());
                              },
                              child: Text("View",
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleSmall
                                      ?.copyWith(
                                          fontFamily: FontConstants.fontFamily2,
                                          color: ColorManager.faintb,
                                          fontWeight: FontWeightManager.bold,
                                          fontSize: FontSize.s15_25),
                                  textAlign: TextAlign.center),
                            ),
                            Text(operations[index].Status,
                                style: Theme.of(context)
                                    .textTheme
                                    .titleSmall
                                    ?.copyWith(
                                        fontFamily: FontConstants.fontFamily2,
                                        color: ColorManager.black,
                                        fontWeight: FontWeightManager.regular,
                                        fontSize: FontSize.s15_25),
                                textAlign: TextAlign.center),
                            Text(operations[index].OrderNo,
                                style: Theme.of(context)
                                    .textTheme
                                    .titleSmall
                                    ?.copyWith(
                                        fontFamily: FontConstants.fontFamily2,
                                        color: ColorManager.black,
                                        fontWeight: FontWeightManager.regular,
                                        fontSize: FontSize.s15_25),
                                textAlign: TextAlign.center),
                            Text(operations[index].Operation,
                                style: Theme.of(context)
                                    .textTheme
                                    .titleSmall
                                    ?.copyWith(
                                        fontFamily: FontConstants.fontFamily2,
                                        color: ColorManager.black,
                                        fontWeight: FontWeightManager.regular,
                                        fontSize: FontSize.s15_25),
                                textAlign: TextAlign.center),
                            Text(operations[index].MaterialNo,
                                style: Theme.of(context)
                                    .textTheme
                                    .titleSmall
                                    ?.copyWith(
                                        fontFamily: FontConstants.fontFamily2,
                                        color: ColorManager.black,
                                        fontWeight: FontWeightManager.regular,
                                        fontSize: FontSize.s15_25),
                                textAlign: TextAlign.center),
                            Text(operations[index].Description,
                                style: Theme.of(context)
                                    .textTheme
                                    .titleSmall
                                    ?.copyWith(
                                        fontFamily: FontConstants.fontFamily2,
                                        color: ColorManager.black,
                                        fontWeight: FontWeightManager.regular,
                                        fontSize: FontSize.s15_25),
                                textAlign: TextAlign.center),
                            Text(operations[index].OrderQty,
                                style: Theme.of(context)
                                    .textTheme
                                    .titleSmall
                                    ?.copyWith(
                                        fontFamily: FontConstants.fontFamily2,
                                        color: ColorManager.black,
                                        fontWeight: FontWeightManager.regular,
                                        fontSize: FontSize.s15_25),
                                textAlign: TextAlign.center),
                            Text(operations[index].PendingQty,
                                style: Theme.of(context)
                                    .textTheme
                                    .titleSmall
                                    ?.copyWith(
                                        fontFamily: FontConstants.fontFamily2,
                                        color: ColorManager.black,
                                        fontWeight: FontWeightManager.regular,
                                        fontSize: FontSize.s15_25),
                                textAlign: TextAlign.center),
                            Text(operations[index].Rejection,
                                style: Theme.of(context)
                                    .textTheme
                                    .titleSmall
                                    ?.copyWith(
                                        fontFamily: FontConstants.fontFamily2,
                                        color: ColorManager.red,
                                        fontWeight: FontWeightManager.regular,
                                        fontSize: FontSize.s15_25),
                                textAlign: TextAlign.center),
                            Text(operations[index].Rework,
                                style: Theme.of(context)
                                    .textTheme
                                    .titleSmall
                                    ?.copyWith(
                                        fontFamily: FontConstants.fontFamily2,
                                        color: ColorManager.black,
                                        fontWeight: FontWeightManager.regular,
                                        fontSize: FontSize.s15_25),
                                textAlign: TextAlign.center),
                            Text(operations[index].ConfirmedQty,
                                style: Theme.of(context)
                                    .textTheme
                                    .titleSmall
                                    ?.copyWith(
                                        fontFamily: FontConstants.fontFamily2,
                                        color: ColorManager.black,
                                        fontWeight: FontWeightManager.regular,
                                        fontSize: FontSize.s15_25),
                                textAlign: TextAlign.center),
                            Text(operations[index].BalancedQty,
                                style: Theme.of(context)
                                    .textTheme
                                    .titleSmall
                                    ?.copyWith(
                                        fontFamily: FontConstants.fontFamily2,
                                        color: ColorManager.black,
                                        fontWeight: FontWeightManager.regular,
                                        fontSize: FontSize.s15_25),
                                textAlign: TextAlign.center),
                            TextButton(
                              onPressed: () {
                                showDialog(
                                    context: context,
                                    builder: (_) => ManagePopup());
                              },
                              child: Text('Manage',
                                  textAlign: TextAlign.start,
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleSmall
                                      ?.copyWith(
                                        fontFamily: FontConstants.fontFamily2,
                                        color: ColorManager.faintb,
                                        fontWeight: FontWeightManager.regular,
                                        fontSize: FontSize.s15_25,
                                      )),
                            ),
                          ],
                          onClick: () {},
                        );
                      }),
                ),
              ),
            );
          }),
    );
  }
}
