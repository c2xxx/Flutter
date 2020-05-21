import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new HomeState();
  }
}

class HomeState extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new _HomeState();
  }
}

class _HomeState extends State {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: AppBar(
        title: Text('这是标题啊'),
      ),
      body: Column(
        children: <Widget>[
          Text('内容'),
          FlatButton(
            color: Colors.blue,
            child: Text('跳转'),
            onPressed: () {
              Navigator.pushNamed(context, "/pageA");
            },
          )
        ],
      ),
    );
  }
}
