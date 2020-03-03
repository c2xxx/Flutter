import 'package:flutter/material.dart';

class Demo03View extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Demo03();
  }
}

class Demo03 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return Demo03Stateful();
  }
}

class Demo03Stateful extends State<Demo03> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: '控件',
      theme: ThemeData.light(),
      home: Scaffold(
        appBar: AppBar(
          title: Text('这个是标题'),
        ),
        body: Container(
          child: Column(
            children: <Widget>[
              Text('内容  左中右'),
              Center(
                child: Text("中间"),
              ),
              Text('内容2'),
              Text('内容3'),
              Container(
                color: Colors.blue,
                width: 50,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text('左边'),
                ),
              ),
              Container(
                color: Colors.blue,
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    '右边',
                  ),
                ),
              ),
              Container(
                color: Colors.blue,
                padding: EdgeInsets.all(5),
                margin: EdgeInsets.all(5),
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    '中间',
                  ),
                ),
              ),
              MyFootBar()
            ],
          ),
          color: Colors.yellow,
        ),
      ),
    );
  }
}

class MyFootBar extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyFootBarView();
  }
}

class MyFootBarView extends State<MyFootBar> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Text('哈哈哈，这个是内容'),
      margin: const EdgeInsets.only(left: 30, right: 30, top: 10, bottom: 10),
      padding: const EdgeInsets.all(30),
      color: Colors.green,
    );
  }
}
