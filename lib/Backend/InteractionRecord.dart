class InteractionRecord
{
  String _primaryPerson;
  String _secondaryPerson;

  InteractionRecord(String primaryPerson, String secondaryPerson)
  {
    _primaryPerson = primaryPerson;
    _secondaryPerson = secondaryPerson;
  }

  String display()
  {
    return _primaryPerson + " was with " + _secondaryPerson;
  }
}
