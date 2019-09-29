import 'package:flutter/material.dart';

class LinkPage extends StatefulWidget {
  static const String id = "Link 🔗";
  @override
  _LinkPageState createState() => _LinkPageState();
}

class _LinkPageState extends State<LinkPage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: Center(
          child: Container(
        child: Text(
          "Link 🔗",
          style: TextStyle(
              fontFamily: 'SouthernAire',
              fontSize: 70.0,
              color: Colors.red[400]),
          textAlign: TextAlign.start,
        ),
      )),
    );
  }
}
