
import 'package:exposur/Backend/InteractionRecord.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Should be constucted with 2 people and display simply', () {
    final interaction = InteractionRecord("Jim", "Bob");

    expect(interaction.display(), "Jim was with Bob");
  });
}
