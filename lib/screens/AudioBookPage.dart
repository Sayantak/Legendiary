import 'package:flutter/material.dart';

class VideoPage extends StatefulWidget {
  static const String id = "Video 📹";
  @override
  _VideoPageState createState() => _VideoPageState();
}

class _VideoPageState extends State<VideoPage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: Center(
          child: Container(
        child: Text(
          "Video 📹",
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
