import 'package:exposur/Backend/InteractionRecord.dart';
import 'package:flutter/material.dart';

class ActivityTab extends StatelessWidget {
  final List<InteractionRecord> _interactions = [
    InteractionRecord("Collin", "Tyler"),
    InteractionRecord("Collin", "Amy"),
    InteractionRecord("Tyler", "Kourt"),
    InteractionRecord("Kourt", "Haley"),
    InteractionRecord("Amy", "Nicole"),
    InteractionRecord("Madison", "Emily")
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
                title: Text(
              _interactions[index].display(),
              style: _textStyle,
            ));
          } else {
            return null;
          }
        });
  }
}
