import 'package:flutter/material.dart';

class MyPage05Gesture extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyPage05GestureState();
  }
}

class MyPage05GestureState extends State<MyPage05Gesture> {
  String title = 'ABCD';
  int index = 1;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: FlatButton(
              child: Text('你好' + this.title),
              onPressed: () {
                index++;
                setState(() {
                  this.title = "Click$index";
                });
                print("哈哈哈" + this.title);
              }),
        ),
        body: new GestureDetector(
          // 长按事件
          onTap: () {},
          onTapDown: null,
          onHorizontalDragCancel: () {
            print("onHorizontalDragCancel");
          },
          onHorizontalDragDown: (e) {
            print("onHorizontalDragDown");
          },
          onHorizontalDragEnd: (e) {
            print("onHorizontalDragEnd");
          },
          onHorizontalDragStart: (e) {
            print("onHorizontalDragStart");
          },
          onHorizontalDragUpdate: (e) {
            print("onHorizontalDragUpdate");
          },
          onVerticalDragDown: (e) {
            print("onHorizontalDragEnd");
          },
          onVerticalDragStart: (e) {
            print("onVerticalDragStart");
          },
          onVerticalDragUpdate: (e) {
            print("onVerticalDragUpdate");
          },
          onVerticalDragCancel: () {
            print("onVerticalDragCancel");
          },
          onVerticalDragEnd: (e) {
            print("onVerticalDragEnd");
          },
          onTapUp: (e) {
            print("onTapUp");
          },
          onPanDown: (e) {
            print("onPanDown");
          },
          onDoubleTap: () {
            // 双击事件
            Scaffold.of(context).showSnackBar(
                new SnackBar(content: new Text('I\'m Snack Bar')));
          },
          child: new Container(
            decoration: BoxDecoration(color: Colors.red),
            padding: new EdgeInsets.all(12.0),
            child: new Text('Custom Button ' + title),
          ),
        ));
  }
} 