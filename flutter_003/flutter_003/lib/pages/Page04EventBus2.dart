import 'dart:async';

import 'package:flutter/material.dart';
import 'package:event_bus/event_bus.dart';

import 'EventBusHolder.dart';
import 'UpdateAppEvent.dart';

class Page04EventBus2 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return Page04EventBus2State('哈哈' + 'eventBus2');
  }
}

class Page04EventBus2State extends State<Page04EventBus2> {
  String title;
  String content;

  Page04EventBus2State(this.title);

  /// 创建EventBus
  EventBus eventBus = EventBusHolder.eventBus;
  int timerCount = 1;

  /// 监听版本检查事件
  StreamSubscription _busSubscription;

  @override
  void initState() {
    super.initState();
    _busSubscription = eventBus.on<UpdateAppEvent>().listen((event) {
      print("报告，收到消息 eventBus2：" + event.toString());
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
          )
        ],
      ),
    );
  }
}
