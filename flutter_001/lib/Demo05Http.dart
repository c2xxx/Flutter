import 'package:flutter/material.dart';
import 'dart:io';
import 'dart:convert';

class Demo05Http extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Demo05HttpState();
  }
}

class Demo05HttpState extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return Demo05HttpStateView();
  }
}

class Demo05HttpStateView extends State<Demo05HttpState> {
  String content = '';

  doHttpRequest() async {
    print("哈哈哈");
    var url = 'https://suggest.taobao.com/sug?code=utf-8&q=phone';
    var uri = Uri.parse(url);
    print(uri);
    var httpClient = new HttpClient();
    var request = await httpClient.getUrl(uri);
    var response = await request.close();
    var responseBody = await response.transform(utf8.decoder).join();
    print("返回结果");
    print(responseBody);
    content = responseBody;
    setState(() {
      content = responseBody;
    });
//    var responseBody1 = JSON.decode(responseBody);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HTTP'),
      ),
      body: Column(
        children: <Widget>[
          Text('网络请求'),
          FlatButton(
            child: Text('请求'),
            color: Colors.amberAccent,
            onPressed: () => {doHttpRequest()},
          ),
          Text("结果："),
          Text(content),
        ],
      ),
    );
  }
}
