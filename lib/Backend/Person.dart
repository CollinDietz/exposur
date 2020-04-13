import 'package:flutter/material.dart';

class Person
{
  String _name;
  TextStyle _style;
  String _verb;

  TextSpan get name => TextSpan(text: _name, style: _style);
  TextSpan get verb => TextSpan(text: _verb, style: TextStyle(color: Colors.black));

  Person(this._name)
  {
    _style = TextStyle(color: Colors.black);
    _verb = "was";
  }

  Person.user()
  {
    _name = "You";
    _style = TextStyle(color: Colors.blue, fontWeight: FontWeight.bold);
    _verb = "were";
  }
}
