import 'package:flutter/material.dart';
import 'package:flutter_002/pages/Page02Second.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Page04ViewPaper extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return Page04ViewPaperState();
  }
}

class Page04ViewPaperState extends State<Page04ViewPaper>
    with SingleTickerProviderStateMixin {
  TabController controller;

  @override
  void initState() {
    controller = new TabController(length: 3, vsync: this);

    super.initState();
  }

  final items = new List<String>.generate(10000, (i) => "Item $i");

  initData() {}

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TabHome'),
      ),
//      drawer: Drawer(),
      body: new TabBarView(
        controller: controller,
        children: <Widget>[
          new Text("Content1"),
          new Column(
            children: <Widget>[
              new Text("Content2"),
              FlatButton(
                child: Text('左边一页'),
                onPressed: () => {controller.index = 0},
              ),
              FlatButton(
                child: Text('上一页'),
                onPressed: () => {Navigator.pop(context)},
              ),
              FlatButton(
                child: Text('右边一页'),
                onPressed: () => {controller.index = 2},
              ),
              FlatButton(
                child: Text('toast'),
                onPressed: () => {showToast()},
              )
            ],
          ),
//          new Text("Content3"),
          new ListView.builder(
            itemCount: items.length,
            itemBuilder: (context, index) {
              return new ListTile(
                title: new Text('${items[index]}'),
              );
            },
          )
        ],
      ),
    );
  }

  showToast() {
    Fluttertoast.showToast(
        msg: "网络连接错误",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIos: 1,
//        backgroundColor: Colors.blue,
        textColor: Color(0xFF880000));
  }
}
