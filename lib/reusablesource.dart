import 'package:flutter/material.dart';

class FirstSelectionCard extends StatelessWidget {
  String titletext = '';
  String describetext = '';

  FirstSelectionCard(
      {required String titletext, required String describetext}) {
    this.titletext = titletext;
    this.describetext = describetext;
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
      elevation: 10.0,
      child: Column(
        children: [
          SizedBox(
            height: 5.0,
          ),
          Text(
            titletext,
            style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10.0),
          Text(
            describetext,
            style: TextStyle(fontSize: 10.0),
          ),
        ],
      ),
    );
  }
}
