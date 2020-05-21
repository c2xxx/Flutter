import 'package:flutter/material.dart';

class MyPage02 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyPage02State();
  }
}

int index = 0;

class MyPage02State extends State<MyPage02> {
  MyPage02State() {
    index++;
    print('MyPage02State MyPage02State index=$index');
  }

  @override
  void initState() {
    super.initState();
    print('MyPage02State initState index=$index');
  }

  @override
  void dispose() {
    super.dispose();
    print('MyPage02State dispose index=$index');
  }

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
            child: Text('跳页=>03'),
            onPressed: () {
              Navigator.pushNamed(context, "/page03");
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
