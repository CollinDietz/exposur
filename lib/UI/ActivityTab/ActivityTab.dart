import 'package:exposur/Backend/InteractionRecord.dart';
import 'package:exposur/Backend/Person.dart';
import 'package:flutter/material.dart';

class ActivityTab extends StatelessWidget {
  final List<InteractionRecord> _interactions = [
    InteractionRecord(Person.user(), Person("Tyler")),
    InteractionRecord(Person.user(), Person("Amy")),
    InteractionRecord(Person("Tyler"), Person("Kourt")),
    InteractionRecord(Person("Kourt"), Person("Haley")),
    InteractionRecord(Person("Amy"), Person("Nicole")),
    InteractionRecord(Person("Madison"), Person("Emily")),
    InteractionRecord(Person.user(), Person("Tyler")),
    InteractionRecord(Person.user(), Person("Amy")),
    InteractionRecord(Person("Tyler"), Person("Kourt")),
    InteractionRecord(Person("Kourt"), Person("Haley")),
    InteractionRecord(Person("Amy"), Person("Nicole")),
    InteractionRecord(Person("Madison"), Person("Emily")),
    InteractionRecord(Person.user(), Person("Tyler")),
    InteractionRecord(Person.user(), Person("Amy")),
    InteractionRecord(Person("Tyler"), Person("Kourt")),
    InteractionRecord(Person("Kourt"), Person("Haley")),
    InteractionRecord(Person("Amy"), Person("Nicole")),
    InteractionRecord(Person("Madison"), Person("Emily")),
    InteractionRecord(Person.user(), Person("Tyler")),
    InteractionRecord(Person.user(), Person("Amy")),
    InteractionRecord(Person("Tyler"), Person("Kourt")),
    InteractionRecord(Person("Kourt"), Person("Haley")),
    InteractionRecord(Person("Amy"), Person("Nicole")),
    InteractionRecord(Person("Madison"), Person("Emily")),
    InteractionRecord(Person.user(), Person("Tyler")),
    InteractionRecord(Person.user(), Person("Amy")),
    InteractionRecord(Person("Tyler"), Person("Kourt")),
    InteractionRecord(Person("Kourt"), Person("Haley")),
    InteractionRecord(Person("Amy"), Person("Nicole")),
    InteractionRecord(Person("Madison"), Person("Emily")),
  ];

  final TextStyle _textStyle = TextStyle(fontSize: 18.0);

  @override
  Widget build(BuildContext context) {
    return _showActivity();
  }

  Widget _showActivity() {
    return ListView.builder(
        padding: const EdgeInsets.all(20),
        itemBuilder: (context, i) {
          if (i.isOdd) return Divider(); /*2*/

          final index = i ~/ 2; // divide by 2 to handle the dividers

          if (index < _interactions.length) {
            return ListTile(
                title: _interactions[index].build(context));
          } else {
            return null;
          }
        });
  }
}
