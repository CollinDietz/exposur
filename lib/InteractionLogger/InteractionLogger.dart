import 'package:flutter/material.dart';

class InteractionLogger extends StatelessWidget {

  FloatingActionButton _submitButton(BuildContext context)
  {
    return FloatingActionButton(
      child: Icon(Icons.check), 
      onPressed: () {Navigator.of(context).pop();},
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Log Interaction'),
        ),
        body: Center(
          child: Text('Log'),
        ),
        floatingActionButton: _submitButton(context));
    ;
  }
}
