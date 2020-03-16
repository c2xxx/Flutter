import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class Demo06WebView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Demo06WebViewW();
  }
}

class Demo06WebViewW extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new Demo06WebViewState();
  }
}

class Demo06WebViewState extends State<Demo06WebViewW> {
  final flutterWebViewPlugin = new FlutterWebviewPlugin();

  doClick() {
    flutterWebViewPlugin.reloadUrl("https://www.csdn.net");
//    flutterWebViewPlugin.launch(
//      url,
//
//      rect: new Rect.fromLTWH(
//        0.0,
//        0.0,
//        MediaQuery.of(context).size.width,
//        300.0,
//      ),
//    );
  }

  Demo06WebViewState() {
    flutterWebViewPlugin.onUrlChanged.listen((String url) {
      print("加载网页Url=" + url);
    });
  }

  @override
  Widget build(BuildContext context) {
    return WebviewScaffold(
      url: "https://www.baidu.com",
      appBar: AppBar(
        title: Row(
          children: <Widget>[
            Text('06 WebView'),
            FlatButton(
              child: Text('内部'),
              onPressed: () => {doClick()},
            )
          ],
        ),
      ),
      initialChild: Container(
        color: Colors.redAccent,
        child: const Center(
          child: Text('Waiting你别急啊.....'),
        ),
      ),
    );
  }
}

class Demo06WebViewStateXX extends State<Demo06WebViewW> {
  doClick() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('06 WebView'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: 0,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.account_balance), title: Text('银行')),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_balance), title: Text('超时')),
        ],
      ),
      body: Column(
        children: <Widget>[
          FlatButton(
            child: Text('按钮A'),
            onPressed: () => {},
          ),
          FlatButton(
            child: Text('按钮B'),
            onPressed: () => {},
          ),
          WebviewScaffold(
              url: "https://www.baidu.com",
              appBar: AppBar(
                title: Text("哈哈"),
              ))
        ],
      ),
    );
  }
}
