import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Page05Message extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return Page05MessageState();
  }
}

class Page05MessageState extends State<Page05Message> {
  BasicMessageChannel<dynamic> runTimer =
      const BasicMessageChannel("run_time", StandardMessageCodec());

  sendMsg() {
    print('sendMsg');
    _getBatteryLevel();
  }

  @override
  initState() {
    super.initState();
    initMessageHandler();


    //开启监听
    if(_subscription == null){
      _subscription =  counterPlugin.receiveBroadcastStream().listen(_onEvent,onError: _onError);
    }
  }

  initMessageHandler() {
    runTimer.setMessageHandler((time) {
      print("value = $time");
    });
  }

  var _batteryLevel;
  static const MethodChannel methodChannel =
      MethodChannel('samples.flutter.io/battery');

  Future<void> _getBatteryLevel() async {
    String batteryLevel;
    print("A1A " + (batteryLevel ?? 'null'));
    try {
      final int result = await methodChannel.invokeMethod('getBatteryLevel');
      batteryLevel = 'Battery level: $result%.';
    } on PlatformException {
      batteryLevel = 'Failed 1 to get battery level.';
    } on Exception catch (e) {
      batteryLevel = 'Failed 2 to get battery level.\n' + e.toString();
    }
    print("A2A " + (batteryLevel ?? 'null'));
    setState(() {
      _batteryLevel = batteryLevel;
    });
  }
  static const counterPlugin = const EventChannel('com.jzhu.counter/plugin');

  StreamSubscription _subscription = null;

  var _count;


  @override
  void dispose() {
    super.dispose();
    //取消监听
    if(_subscription != null){
      _subscription.cancel();
    }
  }

  void _onEvent(Object event) {
    setState(() {
      _count = event;
      print("ChannelPage: $event");
    });
  }

  void _onError(Object error) {
    setState(() {
      _count = "计时器异常";
      print(error);
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('05与原生通讯'),
      ),
      body: Column(
        children: <Widget>[
          Text(_batteryLevel ?? ''),
          FlatButton(
            child: Text('发送消息到原生'),
            onPressed: this.sendMsg,
          ),
          Text('接收原生消息'),
          Text('内容')
        ],
      ),
    );
  }
}
