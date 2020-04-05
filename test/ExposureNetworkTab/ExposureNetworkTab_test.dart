import 'package:exposur/ExposureNetworkTab/ExpousureNetworkTab.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ExposurNetworkTab', () {
    testWidgets('Returns a simple text widget', (WidgetTester tester) async {
      await tester.pumpWidget(new Directionality(
          //Has to have a directionality widget in the heirarchy
          textDirection: TextDirection.ltr,
          child: ExposureNetworkTab()));

      expect(find.text("Exposure"), findsOneWidget);
    });
  });
}
