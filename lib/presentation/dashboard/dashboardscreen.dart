import 'package:flutter/material.dart';
import 'package:pum_supervisor/presentation/popups/edit_popup.dart';

class DashboardSupervisor extends StatefulWidget {
  const DashboardSupervisor({Key? key}) : super(key: key);

  @override
  State<DashboardSupervisor> createState() => _DashboardSupervisorState();
}

class _DashboardSupervisorState extends State<DashboardSupervisor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.teal,
        body: Center(
            child: ElevatedButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (BuildContext context) => EditPopup());
                },
                child: Text("hello"))));
  }
}
