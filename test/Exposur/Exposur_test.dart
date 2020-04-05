import 'package:exposur/Exposur/Exposur.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Exposur', () {
    testWidgets('Should Init', (WidgetTester tester) async {
    await tester.pumpWidget(Exposur());
  });
  });
}
