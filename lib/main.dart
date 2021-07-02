//import 'dart:html';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'src/home.dart';
import 'src/skills.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      routes: <String, WidgetBuilder>{
        '/skills': (BuildContext context) => SkillPage(),
        '/home': (BuildContext context) => HomePage(),
      },
    );
  }
}
