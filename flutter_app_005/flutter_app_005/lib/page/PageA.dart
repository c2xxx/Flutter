import 'package:flutter/material.dart';

class PageA extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new PageAState();
  }
}

class PageAState extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _PageAState();
  }
}

class _PageAState extends State {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text('这是标题啊'),
      ),
      body: Row(
        children: <Widget>[Text('内容')],
      ),
    );
  }
}
