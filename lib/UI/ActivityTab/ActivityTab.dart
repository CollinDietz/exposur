import 'package:flutter/material.dart';

class ActivityTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _showActivity();
  }

  Widget _showActivity() {
    return ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemBuilder: (context, i) {
          if (i.isOdd) return Divider(); /*2*/

          // final index = i ~/ 2; /*3*/
          // if (index >= _suggestions.length) {
          //   _suggestions.addAll(generateWordPairs().take(10)); /*4*/
          // } //handle needing more data
          return _buildRow();
        });
  }

  Widget _buildRow() {
    return ListTile(
      title: Text(
        "Some Data",
      ),
    );
  }
}
