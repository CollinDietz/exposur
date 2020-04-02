import 'package:exposur/InteractionLogger/InteractionLogger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('InteractionLogger', () {
    testWidgets('Should Init', (WidgetTester tester) async {
      await tester.pumpWidget(MaterialApp(home: InteractionLogger()));
    });
  });
}
