import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:legendiary/components/DraggableContainer.dart';
import 'dart:async';

class HomePage extends StatefulWidget {
  static const String id = "HomePage";
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget _appTitle = TyperAnimatedTextKit(
    text: ['LegenDiary'],
    textStyle: TextStyle(
        fontFamily: 'SouthernAire', fontSize: 70.0, color: Colors.red[400]),
    textAlign: TextAlign.start,
    alignment: AlignmentDirectional.topStart,
  );

  _HomePageState() {
    Timer _timer = new Timer(const Duration(milliseconds: 4250), () {
      setState(() {
        _appTitle = Text(
          'LegenDiary',
          style: TextStyle(
              fontFamily: 'SouthernAire',
              fontSize: 70.0,
              color: Colors.red[400]),
          textAlign: TextAlign.start,
        );
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF121212),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _appTitle,
            Container(
              height: 260.0,
              child: GridView.count(
                crossAxisCount: 3,
                childAspectRatio: 1.6,
                mainAxisSpacing: 10.0,
                children: <Widget>[
                  DraggableSelector(
                    text: "Log 📖",
                  ),
                  DraggableSelector(
                    text: "Scribe ✍️",
                  ),
                  DraggableSelector(
                    text: "Video 📹",
                  ),
                  DraggableSelector(
                    text: "Audio 🎧",
                  ),
                  DragTarget(
                    builder:
                        (context, List<String> candidateData, rejectedData) {
                      return Container(
                        margin: EdgeInsets.all(10.0),
                        width: 73.0,
                        child: Center(
                          child: GestureDetector(
                            onDoubleTap: () {
                              print("Double Tapped");
                            },
                            child: Text(
                              "⏬ Drop ⏬",
                              style: TextStyle(
                                  color: Colors.redAccent, fontSize: 14.0),
                            ),
                          ),
                        ),
                        decoration: BoxDecoration(
                          color: Colors.blueGrey[900],
                          borderRadius: BorderRadius.all(Radius.circular(30.0)),
                        ),
                      );
                    },
                    onWillAccept: (data) {
                      print("Will Accept $data!");
                      return true;
                    },
                    onAccept: (data) {
                      Navigator.pushNamed(context, data);
                    },
                  ),
                  DraggableSelector(
                    text: "Photo 📷",
                  ),
                  DraggableSelector(
                    text: "Link 🔗",
                  ),
                  DraggableSelector(
                    text: "“Quote“",
                  ),
                  DraggableSelector(
                    text: "To Do ✔️",
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
//      floatingActionButton: FloatingActionButton(
//        onPressed: _incrementCounter,
//        tooltip: 'Increment',
//        child: Icon(Icons.add),
//      ),
    );
  }
}
