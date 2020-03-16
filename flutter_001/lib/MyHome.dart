import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_001/Demo01.dart';
import 'package:flutter_001/Demo03View.dart';
import 'package:flutter_001/Demo04Test.dart';
import 'package:flutter_001/Demo05Http.dart';
import 'package:flutter_001/Demo06WebView.dart';

import 'Demo02Image.dart';

class MyHome extends StatefulWidget {
  MyHome({Key key, this.title}) : super(key: key);

  final String title;

  @override
  State<StatefulWidget> createState() {
    return _MyHomePageState();
  }
}

class _MyHomePageState extends State<MyHome> {
  goPage(BuildContext context, msg) {
    DateTime time = new DateTime.now();
    if (msg == '跳转') {
      Navigator.push(context,
          new MaterialPageRoute(builder: (context) => new Demo01(time: time)));
    } else if (msg == '相册图片') {
      Navigator.push(
          context,
          new MaterialPageRoute(
              builder: (context) => new Demo02Image(time: time)));
    } else if (msg == '控件') {
      Navigator.push(context,
          new MaterialPageRoute(builder: (context) => new Demo03View()));
    } else if (msg == 'test') {
      Navigator.push(context,
          new MaterialPageRoute(builder: (context) => new Demo04Test()));
    } else if (msg == 'http') {
      Navigator.push(context,
          new MaterialPageRoute(builder: (context) => new Demo05Http()));
    } else if (msg == 'webView') {
      Navigator.push(context,
          new MaterialPageRoute(builder: (context) => new Demo06WebView()));
    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        title: 'zz',
        theme: ThemeData(primaryColor: Colors.yellow),
        home: Scaffold(
            appBar: AppBar(
              title: Text('哈哈哈'),
            ),
            body: Column(
              children: <Widget>[
                Text('哈哈哈1abcd呃呃。。。考了多少就发了就分开了惊世毒妃拉丝粉,4',
                    style: TextStyle(fontSize: 30, color: Colors.white70)),
                Column(
                  children: <Widget>[
                    Text(
                      'How are you!',
                      style: TextStyle(fontSize: 24, color: Colors.red),
                      softWrap: true,
                    ),
                    Text(
                      'I\'m fine,Thank you!',
                      style: TextStyle(fontSize: 24, color: Colors.red),
                      softWrap: true,
                    ),
                    FlatButton(
                      child: Text(
                        '跳转',
                        style: TextStyle(color: Colors.orange, fontSize: 33),
                      ),
                      onPressed: () => {goPage(context, '跳转')},
                    ),
                    FlatButton(
                      child: Text(
                        '新春快乐',
                        style: TextStyle(fontSize: 33, color: Colors.yellow),
                      ),
                      onPressed: () => {goPage(context, '新春快乐')},
                    ),
                    OutlineButton(
                      child: Text(
                        '相册图片',
                        style: TextStyle(fontSize: 33, color: Colors.yellow),
                      ),
                      onPressed: () => {goPage(context, '相册图片')},
                    ),
                    OutlineButton(
                      child: Text(
                        '控件',
                        style: TextStyle(fontSize: 33, color: Colors.yellow),
                      ),
                      onPressed: () => {goPage(context, '控件')},
                    ),
                    OutlineButton(
                      child: Text(
                        'test',
                        style: TextStyle(fontSize: 33, color: Colors.yellow),
                      ),
                      onPressed: () => {goPage(context, 'test')},
                    ),
                    OutlineButton(
                      child: Text(
                        'http',
                        style: TextStyle(fontSize: 33, color: Colors.yellow),
                      ),
                      onPressed: () => {goPage(context, 'http')},
                    ),
                    OutlineButton(
                      child: Text(
                        'webView',
                        style: TextStyle(fontSize: 33, color: Colors.yellow),
                      ),
                      onPressed: () => {goPage(context, 'webView')},
                    ),
                    Text(
                      'I\'m fine,Thank you!',
                      style: TextStyle(fontSize: 24, color: Colors.red),
                      softWrap: true,
                    ),
                  ],
                )
              ],
            )));
  }
}
