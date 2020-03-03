import 'package:flutter/material.dart';

class Demo04Test extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Demo04TestView();
  }
}

class Demo04TestView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return Demo04TestView2();
  }
}

class Demo04TestView2 extends State<Demo04TestView> {
  doShowDialog() {
//    showDialog(context: context, builder: (_) => Text('内容'));
    showDialog(
        context: context,
        builder: (ctx) {
          return SimpleDialog(
            title: Text("SimpleDialog"),
            titlePadding: EdgeInsets.all(10),
            backgroundColor: Colors.amber,
            elevation: 5,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(6))),
            children: <Widget>[
              ListTile(
                title: Center(
                  child: Text("Item_1"),
                ),
              ),
              ListTile(
                title: Center(
                  child: Text("Item_2"),
                ),
              ),
              ListTile(
                title: Center(
                  child: Text("Item_3"),
                ),
              ),
              ListTile(
                title: Center(
                  child: Text("Close"),
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          );
        });
  }

//
  showAlert() {
//    showDialog(context: context, builder: (_) => Text('内容'));
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: Text('Dialog'),
              content: Text(('Dialog content..')),
              actions: <Widget>[
                new FlatButton(
                  child: new Text("取消"),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
                new FlatButton(
                  child: new Text("确定"),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ],
            ));
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("标题"),
      ),
      body: Column(
        children: <Widget>[
          Text('哈哈哈'),
          FlatButton(
            child: Text(
              '1弹出警告2弹出警告',
              style: TextStyle(
                color: Colors.red,
              ),
            ),
            onPressed: () => {doShowDialog()},
          ),
          FlatButton(
            child: Text(
              '弹出是否确认',
              style: TextStyle(color: Colors.blue),
            ),
            onPressed: () => {showAlert()},
          ),
          FlatButton(
            child: Text('进度转圈'),
            onPressed: () => {},
          ),
          SizedBox(
            child: CircularProgressIndicator(),
            height: 44.0,
            width: 44.0,
          ),
        ],
      ),
    );
  }
}
