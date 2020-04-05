import 'package:exposur/UI/ActivityTab/ActivityTab.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ActivityTab', () {
    testWidgets('Returns a simple text widget', (WidgetTester tester) async {
      await tester.pumpWidget(MaterialApp(home: Scaffold( body: ActivityTab())));
    });
  });
}
