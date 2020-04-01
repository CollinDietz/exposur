// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:exposur/main.dart';

void main() {
  testWidgets('App opens to Activity Tab', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MyApp());

    // Verify that our counter starts at 0.
    expect(find.text('Activity'), findsNWidgets(2));
    expect(find.text('Exposure Network'), findsNWidgets(1));

    // Tap the '+' icon and trigger a frame.
    await tester.tap(find.byIcon(Icons.group));
    await tester.pump();

    // Verify that our counter has incremented.
    expect(find.text('Activity'), findsNWidgets(1));
    expect(find.text('Exposure Network'), findsNWidgets(2));
  });
}
