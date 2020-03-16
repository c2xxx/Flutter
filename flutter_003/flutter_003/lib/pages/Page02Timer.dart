import 'dart:async';

import 'package:flutter/material.dart';

class Page02Timer extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return Page02TimerState('哈哈' + 'Page02Timer');
  }
}

class Page02TimerState extends State<Page02Timer> {
  String title;

  Page02TimerState(title1) {
    this.title = title1;
  }

  int timerCount = 1;
  bool timerStatus = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Column(
        children: <Widget>[
          Text('timerCount=$timerCount'),
          Text('计时器状态=' + (timerStatus ? '已开启' : '未开启')),
          FlatButton(
            child: Text('单次执行计时器'),
            onPressed: () {
              this._startTimeOut();
            },
          ),
          FlatButton(
            child: Text('开始计时器'),
            onPressed: () {
              this._startTimer();
            },
          ),
          FlatButton(
            child: Text('停止计时器'),
            onPressed: () {
              this._cancelTimer();
            },
          ),
          FlatButton(
            child: Text('跳页EventBus'),
            onPressed: () {
              Navigator.pushNamed(context, "/page03");
            },
          )
        ],
      ),
    );
  }

//  void startTimer() {}

  Timer _timer;

  _startTimeOut() {
    /*创建循环*/
    _timer?.cancel();
    _timer = new Timer(new Duration(seconds: 1), () {
      setState(() {
        timerCount = timerCount + 1;
      });
    });
  }

  _startTimer() {
    /*创建循环*/
    _timer?.cancel();
    _timer = new Timer.periodic(new Duration(seconds: 1), (timer) {
      setState(() {
        timerCount = timerCount + 1;
        timerStatus = true;
      });
    });
  }

  _cancelTimer() {
    _timer?.cancel();
    setState(() {
      timerStatus = false;
    });
  }
}
