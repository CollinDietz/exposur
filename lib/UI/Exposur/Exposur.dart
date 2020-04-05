import 'package:exposur/UI/ExposureNetworkTab/ExpousureNetworkTab.dart';
import 'package:exposur/UI/ActivityTab/ActivityTab.dart';
import 'package:exposur/UI/InteractionLogger/InteractionLogger.dart';
import 'package:flutter/material.dart';

class Exposur extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Exposur',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: ExposurHome(title: 'Exposur'),
    );
  }
}

class ExposurHome extends StatefulWidget {
  ExposurHome({Key key, this.title}) : super(key: key);
  final String title;

  final List<Widget> appTabs = <Widget>[
    ActivityTab(),
    ExposureNetworkTab(),
  ];

  @override
  _ExposurHomeState createState() => _ExposurHomeState();
}

class _ExposurHomeState extends State<ExposurHome> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _logButtonPressed() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => InteractionLogger()));
  }

  @override
  Widget build(BuildContext context) {
    FloatingActionButton button;
    if (_selectedIndex == 0) {
      button = FloatingActionButton(
          onPressed: _logButtonPressed, child: Icon(Icons.group_add));
    } else {
      button = null;
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: widget.appTabs.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.directions_run), title: Text("Activity")),
          BottomNavigationBarItem(
              icon: Icon(Icons.group), title: Text("Exposure Network")),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
      floatingActionButton: button,
    );
  }
}
