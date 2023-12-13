import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  final IconData leadingIcon;
  final String titleText;

  const MyCard({
    required this.leadingIcon,
    required this.titleText,
  });

  @override
  Widget build(context) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 80.0, vertical: 10),
      child: ListTile(
        leading: Icon(
          leadingIcon,
          color: Colors.blueGrey.shade900,
        ),
        title: Text(
          titleText,
          style: TextStyle(
            color: Colors.blueGrey.shade900,
            fontFamily: 'Source Sans 3',
            fontWeight: FontWeight.bold,
            fontSize: 16.0,
          ),
        ),
      ),
    );
  }
}
