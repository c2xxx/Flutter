import 'package:flutter/material.dart';

class MyPage04BackKeydown extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyPage04BackKeydownStatus();
  }
}

class MyPage04BackKeydownStatus extends State<MyPage04BackKeydown> {
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
          FlatButton(
            child: Text('跳页=>02'),
            onPressed: () {
              Navigator.pushNamed(context, "/page02");
            },
          ),
          FlatButton(
            child: Text('跳页=>03'),
            onPressed: () {
              Navigator.pushNamed(context, "/page02");
            },
          ),
          FlatButton(
            child: Text('返回'),
            onPressed: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}
