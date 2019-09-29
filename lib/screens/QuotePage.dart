import 'package:flutter/material.dart';

class QuotePage extends StatefulWidget {
  static const String id = "“Quote“";
  @override
  _QuotePageState createState() => _QuotePageState();
}

class _QuotePageState extends State<QuotePage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: Center(
          child: Container(
        child: Text(
          "“Quote“",
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
