import 'package:flutter/material.dart';

class Demo01 extends StatelessWidget {
  Demo01({Key key, this.title, this.time}) : super(key: key);

  final String title;
  final DateTime time;

  @override
  Widget build(BuildContext context) {
    return Demo01Page(time);
  }
}

class Demo01Page extends StatefulWidget {
  DateTime time;

  Demo01Page(DateTime time) {
    this.time = time;
  }

  @override
  State<StatefulWidget> createState() {
    return new _Demo01PageState(this.time);
  }
}

class _Demo01PageState extends State<Demo01Page> {
  String xx = '合理';
  DateTime time;
  String timeStr;

  _Demo01PageState(DateTime time) {
    this.time = time;
    var date = time;
    String timestamp =
        "${date.year.toString()}-${date.month.toString().padLeft(2, '0')}-${date.day.toString().padLeft(2, '0')} ${date.hour.toString().padLeft(2, '0')}:${date.minute.toString().padLeft(2, '0')}:${date.second.toString().padLeft(2, '0')}";
    timeStr = timestamp;
  }

  void _testMethod() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text('标题啊'),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              Text('哈哈哈$xx'),
              Text('点击时间：$timeStr'),
              FlatButton(
                child: Text("FlatButton"),
                onPressed: _testMethod,
              ),
              OutlineButton(
                child: Text("OutlineButton"),
                onPressed: _testMethod,
              ),
              IconButton(
                icon: Icon(Icons.delete),
                onPressed: _testMethod,
              ),
            ],
          ),
        ));
  }
}

class _testMethod {}
