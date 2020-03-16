import 'package:flutter/material.dart';
import 'dart:io';
import 'dart:convert';

class Demo05Http extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Demo05HttpState();
  }
}

class Demo05HttpState extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
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

  doParseJson() {
    var str =
        '{"name":"chen","age":30,"son":[{"name":"ChenA"},{"name":"ChenB"},{"name":"ChenC"}]}';
    print("json str " + str);
    print(json.decode(str));
    var obj = json.decode(str);
    print("A");
    print("obj name " + obj['name']);
    print("A2");
//    print(obj['son']['xxxx']);
//    print("A3");
//    print("obj name " + obj['son'][0]);
//    print("A3");
    print("obj name " + obj['son'][333]["name"]);
    print("A3");

//    json.decode(str);
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
          FlatButton(
            child: Text('解析JSON'),
            color: Colors.amberAccent,
            onPressed: () => {doParseJson()},
          ),
          Text("结果："),
          Text(content),
        ],
      ),
    );
  }
}
