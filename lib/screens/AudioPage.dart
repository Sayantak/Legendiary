import 'package:flutter/material.dart';

class AudioPage extends StatefulWidget {
  static const String id = "Audio 🎧";
  @override
  _AudioPageState createState() => _AudioPageState();
}

class _AudioPageState extends State<AudioPage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: Center(
          child: Container(
        child: Text(
          "Audio 🎧",
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
