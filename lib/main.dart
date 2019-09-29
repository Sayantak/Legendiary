import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'screens/HomePage.dart';
import 'screens/ScribblePage.dart';
import 'screens/AudioPage.dart';
import 'screens/DiaryPage.dart';
import 'screens/LinkPage.dart';
import 'screens/PhotoPage.dart';
import 'screens/QuotePage.dart';
import 'screens/ToDoPage.dart';
import 'screens/VideoPage.dart';
import 'dart:async';
import 'package:camera/camera.dart';

List<CameraDescription> cameras;

Future<Null> main() async {
  cameras = await availableCameras();
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'LegenDiary',
      theme: ThemeData(
        brightness: Brightness.dark,
      ),
      home: HomePage(),
      debugShowCheckedModeBanner: false,
      initialRoute: HomePage.id,
      routes: {
        ScribblePage.id: (context) => ScribblePage(),
        AudioPage.id: (context) => AudioPage(),
        DiaryPage.id: (context) => DiaryPage(),
        HomePage.id: (context) => HomePage(),
        LinkPage.id: (context) => LinkPage(),
        PhotoPage.id: (context) => PhotoPage(cameras),
        QuotePage.id: (context) => QuotePage(),
        ToDoPage.id: (context) => ToDoPage(),
        VideoPage.id: (context) => VideoPage(),
      },
    );
  }
}
