import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:pum_supervisor/presentation/login/login_supervisor.dart';

void main(){
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MaterialApp(home: LoginScreenSupervisor(),));
    var Text1 = find.text('Sign In');
    expect(Text1, findsNWidgets(2));

    var Text2 = find.text('Forget Password?');
    expect(Text2, findsOneWidget);

    var textfield = find.byType(TextFormField);
    expect(textfield, findsNWidgets(2));
    // await tester.enterText(textfield, 'shubham@gmail.com');
    // expect(find.text('shubham@gmail.com'), findsNWidgets(2));

    var textbutton = find.byType(TextButton);
    expect(textbutton, findsOneWidget);
    await tester.press(textbutton);

    var elevatebutton = find.byType(ElevatedButton);
    expect(elevatebutton, findsOneWidget);
    await tester.press(textbutton);

    var Icon1 = find.byIcon(Icons.lock);
    expect(Icon1, findsOneWidget);

    var image = find.image(AssetImage('images/ummasons_logo.png'));
    expect(image, findsOneWidget);


  });
}