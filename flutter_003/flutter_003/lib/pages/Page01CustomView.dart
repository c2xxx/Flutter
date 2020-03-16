import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Page01CustomView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page01CustomView'),
      ),
      body: Column(
        children: <Widget>[
          Text('A'),
          Text('B'),
          Text('C'),
          Text('D'),
          Container(
            width: 100,
            height: 100,
            child: AndroidView(
              viewType: 'plugins.nightfarmer.top/myview',
              creationParams: {
                "myContent": "通过参数传入的文本内容",
              },
              creationParamsCodec: const StandardMessageCodec(),
              onPlatformViewCreated: onMyViewCreated,
            ),
          ),
          Text('来个ListView'),
          Container(
            height: 200,
            child: new ListView.builder(
              itemCount: 30,
              padding: new EdgeInsets.all(5.0),
              itemExtent: 50.0,
              itemBuilder: (BuildContext context, int index) {
                return new Text("text $index");
              },
            ),
          )
        ],
      ),
    );
  }

  MethodChannel _channel;

  void onMyViewCreated(int id) {
    _channel = new MethodChannel('plugins.nightfarmer.top/myview_$id');
    setMyViewText("xxxxxxxxx");
  }

  Future<void> setMyViewText(String text) async {
    assert(text != null);
    return _channel.invokeMethod('setText', text);
  }
}
