import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Page05CustomView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return Page05CustomViewState();
  }
}

class Page05CustomViewState extends State<Page05CustomView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('标题'),
        ),
        body: Column(children: <Widget>[
          Text('内容'),
          AndroidView(
            viewType: 'widget.name',
            creationParams: {'text': 'Flutter传给Android的参数'},
            creationParamsCodec: StandardMessageCodec(),
          )
        ]));
  }
}
