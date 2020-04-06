class Person
{
  String _name;
  bool _isUser;

  String get name => _name;
  bool get isUser => _isUser;

  Person(this._name)
  {
    _isUser = false;
  }

  Person.user()
  {
    _isUser = true;
    _name = "";
  }
}
