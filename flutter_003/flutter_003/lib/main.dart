import 'package:event_bus/event_bus.dart';
import 'package:flutter/material.dart';
import 'package:flutter003/pages/EventBusHolder.dart';
import 'package:flutter003/pages/Page04EventBus2.dart';
import 'package:flutter003/pages/Page05Message.dart';
import 'package:flutter003/pages/UpdateAppEvent.dart';

import 'pages/Page01CustomView.dart';
import 'pages/Page02Timer.dart';
import 'pages/Page03EventBus.dart';
import 'pages/PageNavigation.dart';
import 'dart:async';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  /// 创建EventBus
  EventBus eventBus = EventBusHolder.eventBus;

  MyApp() {
    this._startTimer();
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        '/page05': (BuildContext content) => Page05Message(),
        '/page04': (BuildContext content) => Page04EventBus2(),
        '/page03': (BuildContext content) => Page03EventBus(),
        '/page02': (BuildContext content) => Page02Timer(),
        '/page01': (BuildContext content) => Page01CustomView(),
        '/': (BuildContext content) => PageNavigation(),
      },
    );
  }

  Timer _timer;
  int repeatCount = 10000;

  _startTimer() {
    /*创建循环*/
    _timer?.cancel();
    _timer = new Timer.periodic(new Duration(seconds: 1), (timer) {
      repeatCount--;
      print('repeatCount=$repeatCount');

      if (repeatCount % 3 == 0) {
        eventBus.fire(
          UpdateAppEvent("MyApp", 'MyApp', 'MyApp'),
        );
      }
      if (repeatCount == 0) {
        _timer?.cancel();
      }
    });
  }
}
