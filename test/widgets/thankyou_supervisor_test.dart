
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:pum_supervisor/presentation/login/thankyou_supervisor_screen.dart';

void main(){
  testWidgets('Thank you testing', (WidgetTester tester) async{
    await tester.pumpWidget(MaterialApp(home: ThankyouscreenSupervisor(),));
    var elevatedbutton = find.byType(ElevatedButton);
    //tester.tap(NavigatorUserMediaError as Finder);
    expect(elevatedbutton, findsOneWidget);
  });
}