import 'package:exposur/Backend/Person.dart';
import 'package:flutter/material.dart';

class InteractionRecord extends StatelessWidget{
  final Person _primaryPerson;
  final Person _secondaryPerson;

  InteractionRecord(this._primaryPerson, this._secondaryPerson);

  @override
  Widget build(BuildContext context) {
    final TextSpan _space = TextSpan(text: " ", style: Theme.of(context).textTheme.body1);
    final TextSpan _with = TextSpan(text: " with ", style: Theme.of(context).textTheme.body1);

    return RichText(
        text: TextSpan(children: <TextSpan>[
          _primaryPerson.name,
          _space,
          _primaryPerson.verb,
          _with,
          _secondaryPerson.name
        ]),
      );
  }
}
