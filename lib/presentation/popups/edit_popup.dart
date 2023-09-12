import 'package:flutter/material.dart';
import 'package:pum_supervisor/presentation/widgets/sub_heading_widget.dart';
import 'package:pum_supervisor/presentation/widgets/table_form_widget.dart';
import 'package:pum_supervisor/presentation/widgets/title_second_widget.dart';
import 'package:pum_supervisor/presentation/widgets/title_text_widget.dart';

class EditPopup extends StatefulWidget {
  const EditPopup({Key? key}) : super(key: key);

  @override
  State<EditPopup> createState() => _EditPopupState();
}

class _EditPopupState extends State<EditPopup> {
  final List<String> items = ['Item 1', 'Item 2', 'Item 3', 'Item 4'];
  String selectedItem = 'Item 1';

  void _onDropdownChanged(String? newValue) {
    if (newValue != null) {
      setState(() {
        selectedItem = newValue;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Material(
        child: Container(
          color: Colors.white,
          height: MediaQuery.of(context).size.height / 1.2,
          width: MediaQuery.of(context).size.width / 1.5,
          child: Padding(
            padding: EdgeInsets.all(
              MediaQuery.of(context).size.height / 80,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TitleTextWidget(
                  text1: "Order No:",
                  text2: "Operation:",
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height / 20,
                    left: MediaQuery.of(context).size.height / 70,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TitleSecondWidget(
                        label: 'Pending Qty',
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.height / 30,
                      ),
                      TitleSecondWidget(
                        label: 'Rework',
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.height / 30,
                      ),
                      TitleSecondWidget(
                        label: 'Rejection',
                      )
                    ],
                  ),
                ),

                ///SubHeading
                TableSubHeadingWidget(
                  heading1: 'Activities',
                  heading2: 'Downtime Code',
                  heading3: 'Downtime',
                ),

                ///tableformwidget
                TableFormWidget(
                  texttitle: 'Proccess',
                  texttitle2: 'Downtime code',
                  texttitle3: 'Downtime 1',
                  items: items,
                  selectedItem: selectedItem,
                  onChanged: _onDropdownChanged,
                ),
                TableFormWidget(
                    texttitle: 'Helper',
                    texttitle2: 'Downtime code',
                    texttitle3: 'Downtime 3',
                    items: items,
                    selectedItem: selectedItem,
                    onChanged: _onDropdownChanged),
                TableFormWidget(
                    texttitle: 'Permanent',
                    texttitle2: 'Downtime code',
                    texttitle3: 'Downtime 4',
                    items: items,
                    selectedItem: selectedItem,
                    onChanged: _onDropdownChanged),
                TableFormWidget(
                    texttitle: 'Piece Rate',
                    texttitle2: 'Downtime code',
                    texttitle3: 'Downtime 5',
                    items: items,
                    selectedItem: selectedItem,
                    onChanged: _onDropdownChanged),

                TableFormWidget(
                    texttitle: 'Contract\n Welder',
                    texttitle2: 'Downtime code',
                    texttitle3: 'Downtime 2',
                    items: items,
                    selectedItem: selectedItem,
                    onChanged: _onDropdownChanged),
                // TableFormWidget(
                //     texttitle: 'Contract Welder',
                //     texttitle2: 'Downtime code',
                //     texttitle3: 'Downtime 2',
                //     items: items,
                //     selectedItem: selectedItem,
                //     onChanged: _onDropdownChanged)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
