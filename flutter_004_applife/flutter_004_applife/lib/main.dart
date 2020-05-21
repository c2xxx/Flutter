import 'package:flutter/material.dart';
import 'package:flutter004/MyPage02.dart';
import 'package:flutter004/Page07TouchMoveView.dart';

import 'MyHomePage.dart';
import 'MyPage03.dart';
import 'MyPage04Gesture.dart';
import 'MyPage05Gesture.dart';
import 'Page06TouchMoveView.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        "/": (BuildContext c) => MyHomePage(title: 'Flutter Home'),
        "/page02": (BuildContext c) => MyPage02(),
        "/page03": (BuildContext c) => MyPage03(),
        "/page04": (BuildContext c) => MyPage04Gesture(),
        "/page05": (BuildContext c) => MyPage05Gesture(),
        "/page06": (BuildContext c) => Page06TouchMoveView(),
        "/page07": (BuildContext c) => Page07TouchMoveView(),
      },
    );
  }
}
