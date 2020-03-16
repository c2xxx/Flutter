import 'package:flutter/material.dart';

class Page02Second extends StatefulWidget {
  Page02Second(String title) {
    this.title = title;
  }

  String title;

  @override
  State<StatefulWidget> createState() {
    return new Page02SecondState(title);
  }
}

class Page02SecondState extends State<Page02Second> {
  Page02SecondState(String title) {
    this.title = title;
  }

  String title;

  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(
        title: Text('标题' + title),
      ),
      body: Column(
        children: <Widget>[
          Text('Page02Second' + title),
          FlatButton(
            child: Text('click'),
            onPressed: () => {Navigator.pushNamed(context, '/')},
          )
        ],
      ),
    );
  }
}
