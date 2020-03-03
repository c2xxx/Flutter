import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Demo02Image extends StatelessWidget {
  Demo02Image({Key key, this.title, this.time}) : super(key: key);

  final String title;
  final DateTime time;

  @override
  Widget build(BuildContext context) {
    return Demo02Page(time);
  }
}

class Demo02Page extends StatefulWidget {
  DateTime time;

  Demo02Page(DateTime time) {
    this.time = time;
  }

  @override
  State<StatefulWidget> createState() {
    return new _Demo02PageState(this.time);
  }
}

class _Demo02PageState extends State<Demo02Page> {
  String xx = '合理';
  DateTime time;
  String timeStr;
  File img;

  _Demo02PageState(DateTime time) {
    this.time = time;
    var date = time;
    String timestamp =
        "${date.year.toString()}-${date.month.toString().padLeft(2, '0')}-${date.day.toString().padLeft(2, '0')} ${date.hour.toString().padLeft(2, '0')}:${date.minute.toString().padLeft(2, '0')}:${date.second.toString().padLeft(2, '0')}";
    timeStr = timestamp;
  }

  Future<void> _testMethod() async {
    print("swfwrfs");
    var image = await ImagePicker.pickImage(source: ImageSource.camera);
    setState(() {
      img = image;

    });
//    setState(() {});
  }

  Future<void> _testMethod2() async {
    print("swfwrfs");
    var image = await ImagePicker.pickImage(source: ImageSource.gallery);
    setState(() {
      img = image;
    });
//    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text('相册图片'),
        ),
        body: SingleChildScrollView(
            child: Center(
          child: Column(
            children: <Widget>[
              Text('哈哈哈$xx'),
              new Image.asset(
                "images/hxt.jpg",
                width: 200,
                height: 200,
              ),
              new Image.asset(
                "images/smile.gif",
                width: 200,
                height: 200,
              ),
              _ImageView(img),
              new Image.network(
                "https://upload-images.jianshu.io/upload_images/2751425-c778761fb4270945.png?imageMogr2/auto-orient/strip|imageView2/2/w/1140/format/webp",
                width: 300,
                height: 200,
              ),
              FlatButton(
                child: Text("拍照片"),
                onPressed: _testMethod,
              ),
              FlatButton(
                child: Text("选照片"),
                onPressed: _testMethod2,
              )
            ],
          ),
        )));
  }

  /*图片控件*/
  Widget _ImageView(imgPath) {
    if (imgPath == null) {
      return Center(
        child: Text("请选择图片或拍照"),
      );
    } else {
      return Image.file(
        imgPath,
        width: 200,
        height: 300,
      );
    }
  }
}

class _testMethod {}
