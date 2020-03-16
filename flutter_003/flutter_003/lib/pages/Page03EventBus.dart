import 'dart:async';

import 'package:flutter/material.dart';
import 'package:event_bus/event_bus.dart';

import 'EventBusHolder.dart';
import 'UpdateAppEvent.dart';

class Page03EventBus extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return Page03EventBusState('哈哈' + 'eventBusA');
  }
}

class Page03EventBusState extends State<Page03EventBus> {
  String title;
  String content;

  Page03EventBusState(this.title);

  /// 创建EventBus
  EventBus eventBus = EventBusHolder.eventBus;
  int timerCount = 1;

  /// 监听版本检查事件
  StreamSubscription _busSubscription;

  @override
  void initState() {
    super.initState();
    _busSubscription = eventBus.on<UpdateAppEvent>().listen((event) {
      print("报告，收到消息 eventBus：" + event.toString());
      setState(() {
        content = event.toString();
      });
    });
  }

  doXXX() {}

  @override
  void dispose() {
    _busSubscription.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Column(
        children: <Widget>[
          Text('timerCount=$timerCount'),
          Text(content ?? ''),
          FlatButton(
            child: Text('触发事件'),
            onPressed: () {
              eventBus.fire(
                UpdateAppEvent("pageHome", 'remoteVersion', 'title'),
              );
            },
          ),
          FlatButton(
            child: Text('page04'),
            onPressed: () {
              Navigator.pushNamed(context, '/page04');
            },
          )
        ],
      ),
    );
  }
}
