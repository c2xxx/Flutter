import 'package:flutter/material.dart';
import 'pages/Page01Home.dart';
import 'pages/Page02Second.dart';
import 'pages/Page03TabHome.dart';
import 'pages/Page04ViewPaper.dart';
import 'pages/Page05CustomView.dart';

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
        '/page05': (BuildContext content) => Page05CustomView(),
        '/page04': (BuildContext content) => Page04ViewPaper(),
        '/page03': (BuildContext content) => Page03TabHome(),
        '/page02': (BuildContext content) => Page02Second("第二"),
        '/': (BuildContext content) => Page01Home(),
      },
    );
  }
}
