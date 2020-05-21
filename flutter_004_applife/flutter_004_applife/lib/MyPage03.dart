import 'package:flutter/material.dart';

class MyPage02 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyPage02State();
  }
}

class MyPage02State extends State<MyPage02> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('第二页'),
      ),
      body: Column(
        children: <Widget>[
          Text('内容1'),
          Text('内容2'),
          Text('内容3'),
          Text('内容4'),
          Text('内容5'),
        ],
      ),
    );
  }
}
