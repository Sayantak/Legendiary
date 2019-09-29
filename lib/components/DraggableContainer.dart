import 'package:flutter/material.dart';

class DraggableSelector extends StatelessWidget {
  const DraggableSelector({@required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Draggable(
      data: text,
      maxSimultaneousDrags: 1,
      child: Container(
        margin: EdgeInsets.all(10.0),
        padding: EdgeInsets.all(18.0),
        width: 82.0,
        child: Center(
          child: Text(
            text,
            style: TextStyle(color: Colors.redAccent, fontSize: 14.0),
          ),
        ),
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.all(Radius.circular(30.0)),
        ),
      ),
      feedback: Material(
        type: MaterialType.transparency,
        child: Container(
          height: 61.0,
          width: 100.0,
          child: Center(
            child: Text(
              text,
              style: TextStyle(
                  color: Colors.redAccent,
                  fontSize: 14.0,
                  fontStyle: FontStyle.normal),
            ),
          ),
          decoration: BoxDecoration(
            color: Color(0xFF121212),
            borderRadius: BorderRadius.all(Radius.circular(30.0)),
          ),
        ),
      ),
      childWhenDragging: Container(
        margin: EdgeInsets.all(10.0),
        padding: EdgeInsets.all(20.0),
        width: 82.0,
        child: Center(
          child: Text(
            text,
            style: TextStyle(color: Colors.transparent, fontSize: 18.0),
          ),
        ),
        decoration: BoxDecoration(
          color: Colors.blueGrey[800],
          borderRadius: BorderRadius.all(Radius.circular(30.0)),
        ),
      ),
      feedbackOffset: Offset.fromDirection(20.0, 2.0),
    );
  }
}
