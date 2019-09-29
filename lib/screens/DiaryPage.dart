import 'package:flutter/material.dart';

class DiaryPage extends StatefulWidget {
  static const String id = "Log 📖";
  @override
  _DiaryPageState createState() => _DiaryPageState();
}

class _DiaryPageState extends State<DiaryPage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: Center(
          child: Container(
        child: Text(
          "Log 📖",
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
