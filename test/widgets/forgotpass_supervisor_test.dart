import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import 'package:pum_supervisor/presentation/login/forgotpass_supervisor_screen.dart';
void main(){
  testWidgets('Testing', (WidgetTester tester) async {
  await tester.pumpWidget(Scaffold(body: const ForgetScreenSupervisor()));

  // var Text1 = find.byType('Forget \nPassword ?');
  // expect(Text1, findsNWidgets(1));

  var textfield = find.byType(TextFormField);
  expect(textfield, findsNWidgets(1));

  });
}